package cn.action.modules.equip.web;

import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.equip.entity.EquipRepair;
import cn.action.modules.equip.service.EquipRepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping(value = "${adminPath}/equip/repair")
public class EquipRepairController extends BaseController {
    @Autowired
    private EquipRepairService equipRepairService;
    @ModelAttribute("equipRepair")
    public EquipRepair get(@RequestParam(required = false)String id,String mid){
        if(StringUtils.isNotBlank(id)) {
            return equipRepairService.get(id);
        }
        EquipRepair repair = new EquipRepair();
        repair.setMid(mid);
        return repair;
    }

    @RequestMapping(value = "save")
    public String save (EquipRepair equipRepair, Model model, RedirectAttributes redirectAttributes, MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {

        if(file.isEmpty()) {
            System.out.println("ͼƬΪ��");
        }else {
            System.out.println("ͼƬ��Ϊ��");

            String contentType = file.getContentType();
            List<String> types = new ArrayList<String>();
            types.add("image/jpeg");
            types.add("image/png");
            types.add("image/gif");
            if (!types.contains(contentType)) {
                throw new RuntimeException("�ϴ�ʧ�ܣ��������ϴ������͵��ļ���");
            }
            String parentDir = request.getServletContext().getRealPath("upload");

            File parent = new File(parentDir);
            if (!parent.exists()) {
                parent.mkdirs();
            }
            // ��ȡԭʼ�ļ���
            String originalFilename = file.getOriginalFilename();
            String filename= UUID.randomUUID().toString();
            String suffix = "";
            int beginIndex = originalFilename.lastIndexOf(".");
            if (beginIndex != -1) {
                suffix = originalFilename.substring(beginIndex);
            }
            String allFileName=filename+suffix;

            File dest=new File(parent, allFileName);
            //�ύ��������
            file.transferTo(dest);

            //����equipRepair��ͼƬ���ԣ���ͼƬ���ִ���ʵ������
            equipRepair.setFaultImgs(allFileName);

        }


        //�޸��ϱ���¼��״̬Ϊ���깤�����ұ���ά�ޱ���
        equipRepairService.saveRepair(equipRepair);
        this.addMessage(redirectAttributes,"ά�ޱ�����ӳɹ�");
        return "redirect:"+adminPath+"/equip/report/repairlist";
    }

    @RequestMapping(value = "form")
    public String form(EquipRepair equipRepair, Model model){
        model.addAttribute("equipRepair",equipRepair);
        return "modules/equip/maintenanceReportForm";
    }
}

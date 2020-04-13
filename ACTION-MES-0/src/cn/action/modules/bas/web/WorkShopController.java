package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Enterprise;
import cn.action.modules.bas.entity.Factory;
import cn.action.modules.bas.entity.WorkShop;
import cn.action.modules.bas.service.FactoryService;
import cn.action.modules.bas.service.WorkShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping(value = "${adminPath}/bas/workShop")
public class WorkShopController extends BaseController {
    @Autowired
    private WorkShopService workShopService;

    @Autowired
    private FactoryService factoryService;
    //��ʼ��һ��workShop����
    @ModelAttribute("workShop")//һ�����controoler�͵��ø÷���
    public WorkShop get(@RequestParam(required = false) String id){//��ע���ʾfactory�е�id��Ϊ��
        if(StringUtils.isNotBlank(id)){
            return workShopService.get(id);
        }
        return new WorkShop();
    }

    //��ѯ��ҳ����-��������
    @RequestMapping(value = {"list",""})
    public String list(WorkShop workShop, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<WorkShop> page=workShopService.findPage(new Page<WorkShop>(request,response),workShop);
        model.addAttribute("page",page);
        return "modules/bas/workShopList";
    }

    //��ɾ�����޸ĵı���
    @RequestMapping(value = "save")
    public String save(WorkShop workShop, Model model, RedirectAttributes redirectAttributes){
        workShopService.save(workShop);
        addMessage(redirectAttributes,"���泵����Ϣ�ɹ�");//��ʾ��Ϣ������ֹ�ظ��ύ
        return "redirect:"+adminPath+"/bas/workShop";//����ɹ�֮�����·��ص���ҳ�棬�ض���
    }

    //ɾ����ҵ����
    @RequestMapping(value = "delete")
    public String delete(WorkShop workShop, RedirectAttributes redirectAttributes){
        workShopService.delete(workShop);
        addMessage(redirectAttributes,"ɾ��������Ϣ�ɹ�");
        return "redirect:"+adminPath+"/bas/workShop";
    }

    //��ת��workShopForm.jsp
    @RequestMapping(value = "form")
    public  String form(WorkShop workShop,Model model){
        //������й�������
        List<Factory> factoryList=factoryService.findAllList(new Factory());
        model.addAttribute("factoryList",factoryList);
        model.addAttribute("workShop",workShop);
        return "modules/bas/workShopForm";
    }
}

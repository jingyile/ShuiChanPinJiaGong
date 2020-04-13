package cn.action.modules.qc.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.bas.service.WorkStationInfosService;
import cn.action.modules.qc.entity.Violaction;
import cn.action.modules.qc.service.ViolactionService;
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

/**
 * Created by fzw on 2019/9/10.
 */
@Controller
@RequestMapping(value ="${adminPath}/qc/violaction")
public class ViolactionController extends BaseController {
    @Autowired
    private ViolactionService violactionService;
    @Autowired
    private WorkStationInfosService workStationInfosService;


    @ModelAttribute("violaction")
    public Violaction get(@RequestParam(required = false) String id) {
        if (StringUtils.isNotBlank(id)) {
            return violactionService.get(id);
        }
        return new Violaction();
    }

    //按条件分页查询
    @RequestMapping(value = {"list", ""})
    public String list(Violaction violaction, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<Violaction> page = violactionService.findPage(new Page<Violaction>(request, response), violaction);
        model.addAttribute("page", page);
        return "modules/qc/violactionList";
    }

    //保存
    @RequestMapping(value = "save")
    public String save(Violaction violaction, Model model, RedirectAttributes redirectAttributes) {
        String message = "保存违规记录成功";
        String url = "redirect:" + adminPath + "/qc/violaction";

        boolean flag = violactionService.saveViolacion(violaction);
        if (!flag) {
            message = "该工站没有设置对应的工序不能添加违规记录";
            url = "redirect:" + adminPath + "/qc/violaction/form";
        }
        this.addMessage(redirectAttributes,message);
        return url;
    }

    //删除
    @RequestMapping(value = "delete")
    public String delete(Violaction violaction, Model model, RedirectAttributes redirectAttributes){
        violactionService.delete(violaction);
        this.addMessage(redirectAttributes,"删除违规记录成功");
        return "redirect:"+adminPath+"/qc/violaction";
    }
    //跳转
    @RequestMapping(value ="form")
    public String form(Violaction violaction,Model model){
        List<WorkStationInfos> stations=workStationInfosService.findAllList(new WorkStationInfos());
        model.addAttribute("stationsList",stations);
        model.addAttribute("violaction",violaction);
        return "modules/qc/violactionForm";
    }

}

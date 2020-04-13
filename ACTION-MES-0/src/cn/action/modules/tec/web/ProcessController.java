package cn.action.modules.tec.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.tec.entity.Process;
import cn.action.modules.tec.service.ProcessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "${adminPath}/tec/process")
public class ProcessController extends BaseController {
    @Autowired
    private ProcessService processService;

    @ModelAttribute("process")
    public Process get(@RequestParam(required = false)String id){
        if(StringUtils.isNotBlank(id)){
            return processService.get(id);
        }
        return new Process();
    }

    @RequestMapping(value = {"list",""})
    public String list(Process process, HttpServletResponse response, HttpServletRequest request, Model model){
        Page<Process> page=processService.findPage(new Page<Process>(request,response),process);
        model.addAttribute("page",page);
        return "modules/tec/processList";
    }

    @RequestMapping(value = "save")
    public String save(Process process, RedirectAttributes redirectAttributes){
        processService.save(process);
        addMessage(redirectAttributes,"保存工序信息成功");
        return "redirect:"+adminPath+"/tec/process";
    }

    @RequestMapping(value = "delete")
    public String delete(Process process, RedirectAttributes redirectAttributes){
        processService.delete(process);
        addMessage(redirectAttributes,"删除工序信息成功");
        return "redirect:"+adminPath+"/tec/process";
    }
    @RequestMapping(value = "form")
    public String form(Process process,Model model){
        model.addAttribute("process",process);
        return "modules/tec/processForm";
    }
}

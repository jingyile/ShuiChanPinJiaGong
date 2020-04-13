package cn.action.modules.back.web;


import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.back.entity.MaterialBack;
import cn.action.modules.back.entity.ProcessBack;
import cn.action.modules.back.service.MaterialBackService;
import cn.action.modules.back.service.ProcessBackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "${adminPath}/back/processback")
public class ProcessBackController extends BaseController {
    @Autowired
    private ProcessBackService processBackService;

    @ModelAttribute("processBack")
    public ProcessBack get(@RequestParam(required = false)String id){
        if(StringUtils.isNotBlank(id)){
            return processBackService.get(id);
        }
        return new ProcessBack();
    }

    @RequestMapping(value ="")
    public String backList(){
        return "modules/back/processBackList";
    }
    //根据条件分页查询
    @RequestMapping(value ="list")
    public String list(ProcessBack processBack, Model model, HttpServletRequest request, HttpServletResponse response){
        Page<ProcessBack> page=processBackService.findPage(new Page<ProcessBack>(request,response),processBack);
        model.addAttribute("page",page);
        return "modules/back/processBackList";
    }
}

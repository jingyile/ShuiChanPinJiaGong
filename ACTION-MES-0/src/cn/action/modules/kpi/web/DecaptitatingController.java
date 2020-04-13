package cn.action.modules.kpi.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.kpi.entity.Decaptitating;
import cn.action.modules.kpi.service.DecaptitatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "${adminPath}/kpi/decaptitating")
public class DecaptitatingController extends BaseController {
    @Autowired
    private DecaptitatingService decaptitatingService;
    @ModelAttribute("decaptitating")
    public Decaptitating get(@RequestParam(required=false) String id){
        if(StringUtils.isNoneBlank(id)){
            return decaptitatingService.get(id);
        }
        return new Decaptitating();
    }
    //按条件分页查询
    @RequestMapping(value = {"list",""})
    public String list(Decaptitating decaptitating, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<Decaptitating> page=decaptitatingService.findPage(new Page<Decaptitating>(request,response),decaptitating);
        model.addAttribute("page",page);
        return "modules/kpi/decaptitatingList";
    }
}

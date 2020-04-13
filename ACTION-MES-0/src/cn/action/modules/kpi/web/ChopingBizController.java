package cn.action.modules.kpi.web;

import cn.action.common.persistence.Page;
import cn.action.common.web.BaseController;
import cn.action.modules.kpi.entity.ChopingBiz;
import cn.action.modules.kpi.service.ChopingBizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "{adminPath}/kpi/chopingBiz")
public class ChopingBizController extends BaseController {
    @Autowired
    private ChopingBizService chopingBizService;
@RequestMapping(value = {"list",""})
    public String list(ChopingBiz chopingBiz, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<ChopingBiz> page=chopingBizService.findPage(new Page<ChopingBiz>(request,response),chopingBiz);
        model.addAttribute("page",page);
        return "modules/kpi/chopingBizList";
    }
}

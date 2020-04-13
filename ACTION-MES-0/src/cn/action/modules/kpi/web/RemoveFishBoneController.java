package cn.action.modules.kpi.web;

import cn.action.common.persistence.Page;
import cn.action.common.web.BaseController;
import cn.action.modules.kpi.entity.RemoveFishBone;
import cn.action.modules.kpi.service.RemoveFishBoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@Controller
@RequestMapping(value = "${adminPath}/kpi/removeFishBone")

public class RemoveFishBoneController extends BaseController {
    @Autowired
    private RemoveFishBoneService removeFishBoneService;

    @RequestMapping(value = {"list",""})
    public String list(RemoveFishBone removeFishBone, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<RemoveFishBone> page=removeFishBoneService.findPage(new Page<RemoveFishBone>(request,response),removeFishBone);
        model.addAttribute("page",page);
        return "modules/kpi/removeFishBoneList";
    }
}

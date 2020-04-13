package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Material;
import cn.action.modules.bas.service.MaterialService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "${adminPath}/bas/material")
public class MaterialController extends BaseController {

    @Autowired
    private MaterialService materialService;
    @ModelAttribute("material")
    public Material get(@RequestParam (required = false)String id){
        if(StringUtils.isNotBlank(id)){
            return materialService.get(id);
        }
        else
            return new Material();
    }
    @RequestMapping(value = {"list",""})
    public String list(Material material, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<Material> page = materialService.findPage(new Page<Material>(request,response),material);
        model.addAttribute("page",page);
        return "modules/bas/materialList";
    }


}

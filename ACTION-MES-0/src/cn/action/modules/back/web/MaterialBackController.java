package cn.action.modules.back.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.back.entity.MaterialBack;
import cn.action.modules.back.service.MaterialBackService;
import cn.action.modules.tec.entity.Flow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping(value = "${adminPath}/back/materialback")
public class MaterialBackController extends BaseController {

    @Autowired
    private MaterialBackService materialBackService;

    @ModelAttribute("materialBack")
    public MaterialBack get(@RequestParam(required = false)String id){
        if(StringUtils.isNotBlank(id)){
            return materialBackService.get(id);
        }
        return new MaterialBack();
    }

    @RequestMapping(value ="")
    public String backList(){
        return "modules/back/materialBackList";
    }
    //根据条件分页查询
    @RequestMapping(value ="list")
    public String list(MaterialBack materialBack, Model model, HttpServletRequest request, HttpServletResponse response){
        Page<MaterialBack> page=materialBackService.findPage(new Page<MaterialBack>(request,response),materialBack);
        model.addAttribute("page",page);
        return "modules/back/materialBackList";
    }
}

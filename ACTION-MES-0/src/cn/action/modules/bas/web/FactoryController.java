package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Enterprise;
import cn.action.modules.bas.entity.Factory;
import cn.action.modules.bas.service.EnterpriseService;
import cn.action.modules.bas.service.FactoryService;
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
@RequestMapping(value = "${adminPath}/bas/factory")
public class FactoryController extends BaseController {
    @Autowired
    private FactoryService factoryService;

    @Autowired
    private EnterpriseService enterpriseService;
    //初始化一个efactory对象
    @ModelAttribute("factory")//一进入该controoler就调用该方法
    public Factory get(@RequestParam(required = false) String id){//该注解表示factory中的id可为空
        if(StringUtils.isNotBlank(id)){
            return factoryService.get(id);
        }
        return new Factory();
    }

    //查询分页数据-工厂对象
    @RequestMapping(value = {"list",""})
    public String list(Factory factory, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<Factory> page=factoryService.findPage(new Page<Factory>(request,response),factory);
        model.addAttribute("page",page);
        return "modules/bas/factoryList";
    }

    //对删除和修改的保存
    @RequestMapping(value = "save")
    public String save(Factory factory, Model model, RedirectAttributes redirectAttributes){
        factoryService.save(factory);
        addMessage(redirectAttributes,"保存工厂信息成功");
        return "redirect:"+adminPath+"/bas/factory";//保存成功之后，重新返回到该页面，重定向
    }

    //删除企业对象
    @RequestMapping(value = "delete")
    public String delete(Factory factory, RedirectAttributes redirectAttributes){
        factoryService.delete(factory);
        addMessage(redirectAttributes,"删除工厂信息成功");
        return "redirect:"+adminPath+"/bas/factory";
    }

    //跳转到factoryForm.jsp
    @RequestMapping(value = "form")
    public  String form(Factory factory,Model model){
        List<Enterprise> enterList=enterpriseService.findAllList(new Enterprise());
        model.addAttribute("enterpriseList",enterList);
        model.addAttribute("factory",factory);
        return "modules/bas/factoryForm";
    }
}

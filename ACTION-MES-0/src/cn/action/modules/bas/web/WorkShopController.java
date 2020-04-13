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
    //初始化一个workShop对象
    @ModelAttribute("workShop")//一进入该controoler就调用该方法
    public WorkShop get(@RequestParam(required = false) String id){//该注解表示factory中的id可为空
        if(StringUtils.isNotBlank(id)){
            return workShopService.get(id);
        }
        return new WorkShop();
    }

    //查询分页数据-工厂对象
    @RequestMapping(value = {"list",""})
    public String list(WorkShop workShop, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<WorkShop> page=workShopService.findPage(new Page<WorkShop>(request,response),workShop);
        model.addAttribute("page",page);
        return "modules/bas/workShopList";
    }

    //对删除和修改的保存
    @RequestMapping(value = "save")
    public String save(WorkShop workShop, Model model, RedirectAttributes redirectAttributes){
        workShopService.save(workShop);
        addMessage(redirectAttributes,"保存车间信息成功");//提示信息，并防止重复提交
        return "redirect:"+adminPath+"/bas/workShop";//保存成功之后，重新返回到该页面，重定向
    }

    //删除企业对象
    @RequestMapping(value = "delete")
    public String delete(WorkShop workShop, RedirectAttributes redirectAttributes){
        workShopService.delete(workShop);
        addMessage(redirectAttributes,"删除车间信息成功");
        return "redirect:"+adminPath+"/bas/workShop";
    }

    //跳转到workShopForm.jsp
    @RequestMapping(value = "form")
    public  String form(WorkShop workShop,Model model){
        //获得所有工厂对象
        List<Factory> factoryList=factoryService.findAllList(new Factory());
        model.addAttribute("factoryList",factoryList);
        model.addAttribute("workShop",workShop);
        return "modules/bas/workShopForm";
    }
}

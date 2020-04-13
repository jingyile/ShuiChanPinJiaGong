package cn.action.modules.back.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.back.entity.MaterialBack;
import cn.action.modules.back.entity.OrderBack;
import cn.action.modules.back.service.MaterialBackService;
import cn.action.modules.back.service.OrderBackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "${adminPath}/back/orderback")
public class OrderBackController extends BaseController {
    @Autowired
    private OrderBackService orderBackService;

    @ModelAttribute("orderBack")
    public OrderBack get(@RequestParam(required = false)String id){
        if(StringUtils.isNotBlank(id)){
            return orderBackService.get(id);
        }
        return new OrderBack();
    }

    @RequestMapping(value ="")
    public String backList(){
        return "modules/back/orderBackList";
    }
    //根据条件分页查询
    @RequestMapping(value ="list")
    public String list(OrderBack orderBack, Model model, HttpServletRequest request, HttpServletResponse response){
        Page<OrderBack> page=orderBackService.findPage(new Page<OrderBack>(request,response),orderBack);
        model.addAttribute("page",page);
        return "modules/back/orderBackList";
    }
}

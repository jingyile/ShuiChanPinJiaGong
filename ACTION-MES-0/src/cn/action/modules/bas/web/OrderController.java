package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.MountGuard;
import cn.action.modules.bas.entity.Order;
import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.service.MountGuardService;
import cn.action.modules.bas.service.OrderService;
import cn.action.modules.bas.service.WorkCellService;
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
@RequestMapping(value="${adminPath}/bas/order")
public class OrderController extends BaseController {
    @Autowired
    private OrderService orderService;

    @ModelAttribute("order")
    public Order get(@RequestParam(required=false) String id) {
        if (StringUtils.isNotBlank(id)){
            System.out.println("0!");
            return orderService.get(id);
        }else{
            System.out.println("1!");
            return new Order();
        }
    }

    //分页查询
    @RequestMapping(value = {"list", ""})
    public String list(Order order, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<Order> page = orderService.findPage(new Page<Order>(request, response), order);
        model.addAttribute("page", page);
        return "modules/bas/orderList";
    }
    //下工单
    @RequestMapping(value = "doWork")
    public String doWork(Order order,RedirectAttributes redirectAttributes) {
        if(!orderService.isNewOrder(order)){
            this.addMessage(redirectAttributes,"该订单已经处理！不可重复处理！");
            return "redirect:" + adminPath + "/bas/order";
        }
        return "redirect:" + adminPath + "/bas/workOrder/form?orderId="+order.getId();
    }
}

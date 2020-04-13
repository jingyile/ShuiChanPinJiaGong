package cn.action.modules.bas.web;


import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.*;
import cn.action.modules.bas.service.*;
import cn.action.modules.tec.entity.FlowProcess;
import cn.action.modules.tec.service.FlowProcessService;
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
@RequestMapping(value="${adminPath}/bas/workOrder")
public class WorkOrderController extends BaseController {
    @Autowired
    private WorkOrderService workOrderService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private LineService lineService;
    @Autowired
    private BomService bomService;
    @Autowired
    private BomDetailService bomDetailService;
    @Autowired
    private ProductService productService;
    @Autowired
    private FlowProcessService flowProcessService;
    @ModelAttribute("workOrder")
    public WorkOrder get(@RequestParam(required=false) String id) {
        if (StringUtils.isNotBlank(id)){
            return workOrderService.get(id);
        }else{
            return new WorkOrder();
        }
    }


    @RequestMapping(value = "save")
    public String save(WorkOrder workOrder,Model model,RedirectAttributes redirectAttributes){
        boolean flag=workOrderService.saveAll(workOrder);
       System.out.println(flag);
        String message=null;
        if(flag){
            message="保存工单信息成功";
        }else{
            message="原料不足";
        }
        this.addMessage(redirectAttributes,message);
        return "redirect:" + adminPath + "/bas/workOrder";
        // return "redirect:" + adminPath + "/bas/order";
    }

    @RequestMapping(value="form")
    public String form(WorkOrder workOrder,Model model,RedirectAttributes redirectAttributes,String orderId){
        Order order=orderService.get(orderId);
        List<Line> lines=lineService.findAllList(new Line());
        model.addAttribute("curOrder",order);
        model.addAttribute("lineList",lines);
        model.addAttribute("workOrder",workOrder);
        return "modules/bas/workOrderForm";
    }



    //分页查询
    @RequestMapping(value = {"list", ""})
    public String list(WorkOrder workOrder, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<WorkOrder> page = workOrderService.findPage(new Page<WorkOrder>(request, response), workOrder);
        model.addAttribute("page", page);
        return "modules/bas/workOrderList";
    }

    @RequestMapping(value = "delete")
    public String delete(WorkOrder workOrder, RedirectAttributes redirectAttributes) {
        boolean flag=workOrderService.delectOrder(workOrder);
        String message=null;
        if(flag)
        {
            message="删除工单成功！";
        }
        else{
            message="该工单已经发布不能删除！";
        }
        this.addMessage(redirectAttributes, message);
        return "redirect:" + adminPath + "/bas/workOrder";
    }

    //查看工单中产品对应bom
    @RequestMapping(value = "bom")
    public String bom(WorkOrder workOrder,HttpServletRequest request, HttpServletResponse response,Model model){
        model.addAttribute("wordOrder",workOrder);
        Bom temp=new Bom();
        temp.setProduct(workOrder.getProduct());
        List<Bom> boms=bomService.findList(temp);
        model.addAttribute("bom",boms.get(0));

        BomDetail bomDetail=new BomDetail();
        bomDetail.setBom(boms.get(0));
        Page<BomDetail> page=bomDetailService.findPage(new Page<BomDetail>(request,response),bomDetail);
        model.addAttribute("page",page);
        return "modules/bas/workOrderBom";
    }

    @RequestMapping(value = "flow")
    public  String flow(WorkOrder workOrder,HttpServletRequest request, HttpServletResponse response,Model model){
        model.addAttribute("workOrder",workOrder);
        Product product=productService.get(workOrder.getProduct());
        model.addAttribute("product",product);
        FlowProcess flowProcess=new FlowProcess();
        flowProcess.setFlow(product.getFlow());
        Page<FlowProcess> page=flowProcessService.findPage(new Page<FlowProcess>(request,response),flowProcess);
        model.addAttribute("page",page);
        return "modules/bas/workOrderFlow";
    }
}

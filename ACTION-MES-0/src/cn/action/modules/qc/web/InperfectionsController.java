package cn.action.modules.qc.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Product;
import cn.action.modules.bas.entity.WorkOrder;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.bas.service.ProductService;
import cn.action.modules.bas.service.WorkOrderService;
import cn.action.modules.qc.entity.Inperfections;
import cn.action.modules.qc.entity.Violaction;
import cn.action.modules.qc.service.InperfectionsService;
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

/**
 * Created by fzw on 2019/9/11.
 */
@Controller
@RequestMapping(value ="${adminPath}/qc/inperfections")
public class InperfectionsController extends BaseController {
    @Autowired
    private InperfectionsService inperfectionsService;
    @Autowired
    private WorkOrderService workOrderService;
    @Autowired
    private ProductService productService;

     @ModelAttribute("inperfections")
    public Inperfections get(@RequestParam(required = false) String id){
        if(StringUtils.isNotBlank(id)){
            return inperfectionsService.get(id);
        }
        return new Inperfections();
    }
    //按条件分页查询
    @RequestMapping(value = {"list",""})
    public String list(Inperfections inperfections, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<Inperfections> page=inperfectionsService.findPage(new Page<Inperfections>(request,response),inperfections);
        model.addAttribute("page",page);
        return "modules/qc/inperfectionsList";
    }
    //删除
    @RequestMapping(value = "delete")
    public String delete(Inperfections inperfections, Model model, RedirectAttributes redirectAttributes){
        inperfectionsService.delete(inperfections);
        this.addMessage(redirectAttributes,"删除残次品记录成功");
        return "redirect:"+adminPath+"/qc/inperfections";
    }
    //保存
    @RequestMapping(value = "save")
    public String save(Inperfections inperfections, Model model, RedirectAttributes redirectAttributes) {
        //获得工单对应的产品对象，将产品对象赋值给残次品对象中的产品属性
       WorkOrder workOrder= workOrderService.get(inperfections.getWorkOrder());
       Product product= productService.get(workOrder.getProduct());
        inperfections.setProduct(product);
        //调用保存方法
        inperfectionsService.save(inperfections);
        this.addMessage(redirectAttributes,"保存残次品信息成功");
        return "redirect:"+adminPath+"/qc/inperfections";
    }
    //跳转
    @RequestMapping(value ="form")
    public String form(Inperfections inperfections, Model model){
        //传递数据：已发布后的工单，残次品对象
        WorkOrder param=new WorkOrder();
        param.setState("unreleased");
        List<WorkOrder> workOrders=workOrderService.findList(param);

        model.addAttribute("workOrderList",workOrders);
        model.addAttribute("inperfections",inperfections);

        return "modules/qc/inperfectionsForm";
    }

}

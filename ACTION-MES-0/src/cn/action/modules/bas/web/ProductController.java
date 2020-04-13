package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Product;
import cn.action.modules.bas.service.ProductService;
import cn.action.modules.tec.entity.Flow;
import cn.action.modules.tec.service.FlowService;

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
@RequestMapping(value = "${adminPath}/bas/product")
public class ProductController extends BaseController {
    @Autowired
    private ProductService productService;
    @Autowired
    private FlowService flowService;
    @ModelAttribute("product")
    public Product get(@RequestParam(required = false)String id){
        if(StringUtils.isNoneBlank(id)){
            return productService.get(id);
        }
        return new Product();
    }
    //按照条件分页查询
    @RequestMapping(value = {"list",""})
    public String list(Product product, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<Product> page=productService.findPage(new Page<Product>(request,response),product);
        model.addAttribute("page",page);
        return "modules/bas/productList";
    }
    //保存
    @RequestMapping(value="save")
    public String save(Product product,Model model,RedirectAttributes redirectAttribute) {
        productService.save(product);
        this.addMessage(redirectAttribute, "保存产品信息成功！");
        return "redirect:"+adminPath+"/bas/product";
    }
    //删除
    @RequestMapping(value = "delete")
    public String delete(Product product, Model model, RedirectAttributes redirectAttributes){
        productService.delete(product);
        this.addMessage(redirectAttributes,"删除产品信息成功");
        return "redirect:"+adminPath+"/bas/product";
    }
    //跳转
    @RequestMapping(value = "form")
    public String form(Product product, Model model){
       List<Flow> flows=flowService.findAllList(new Flow());
       model.addAttribute("flowList",flows);
       model.addAttribute("product",product);
       return "modules/bas/productForm";
    }
}

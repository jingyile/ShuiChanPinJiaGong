package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Line;
import cn.action.modules.bas.entity.WorkShop;
import cn.action.modules.bas.service.LineService;
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
@RequestMapping(value = "${adminPath}/bas/line")
public class LineController extends BaseController {
    @Autowired
    private LineService lineService;
    @Autowired
    private WorkShopService workShopService;

    @ModelAttribute("line")
    public Line get(@RequestParam(required = false) String id){
        if(StringUtils.isNoneBlank(id)){
            return lineService.get(id);
        }
        return new Line();
    }
    //分页查询
    @RequestMapping(value = {"list",""})
    public  String list(Line line, HttpServletRequest request, HttpServletResponse response, Model model){
        Page<Line> page=lineService.findPage(new Page<Line>(request,response),line);
        model.addAttribute("page",page);
        return "modules/bas/LineList";
    }
    //保存
    @RequestMapping("save")
    public String save(Line line, Model model, RedirectAttributes redirectAttributes){
        lineService.save(line);
        this.addMessage(redirectAttributes,"保存产线信息成功!");
        return "redirect:"+adminPath+"/bas/line";
    }
    //删除
    @RequestMapping("delete")
    public String delete(Line line, RedirectAttributes redirectAttributes){
        lineService.delete(line);
        this.addMessage(redirectAttributes,"删除产线信息成功!");
        return "redirect:"+adminPath+"/bas/line";
    }
    //跳转页面
    @RequestMapping("form")
    public  String form(Line line,Model model){
        List<WorkShop> shopList=workShopService.findAllList(new WorkShop());
        model.addAttribute("shopList",shopList);
        model.addAttribute("line",line);
        return "modules/bas/LineForm";
    }
}

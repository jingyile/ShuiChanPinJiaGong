package cn.action.modules.bas.web;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.action.common.persistence.Page;
import cn.action.modules.bas.entity.Employee;
import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.service.EmployeeService;
import cn.action.modules.bas.service.WorkCellService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.CellEmployee;
import cn.action.modules.bas.service.CellEmployeeService;

import java.util.List;


@Controller
@RequestMapping(value="${adminPath}/bas/cellEmployee")
public class CellEmployeeController extends BaseController {
    @Autowired
    private CellEmployeeService cellEmployeeService;
    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private WorkCellService workCellService;

    @ModelAttribute("cellEmployee")
    public CellEmployee get(@RequestParam(required=false) String id) {
        if (StringUtils.isNotBlank(id)){
            return cellEmployeeService.get(id);
        }else{
            return new CellEmployee();
        }
    }

    //分页查询
    @RequestMapping(value = {"list", ""})
    public String list(CellEmployee cellEmployee, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<CellEmployee> page = cellEmployeeService.findPage(new Page<CellEmployee>(request, response), cellEmployee);
        model.addAttribute("page", page);
        return "modules/bas/cellEmployeeList";
    }

    //保存
    @RequestMapping(value = "save")
    public String save(CellEmployee cellemployee, Model model, RedirectAttributes redirectAttributes) {
        String message=null;
        String url=null;
        CellEmployee relation=cellEmployeeService.saveRelation(cellemployee);
        if(relation==null)
        {
            message=("保存工位与员工关系成功！");
            url= "redirect:" + adminPath + "/bas/cellEmployee";
        } else{
            message=("一名员工只能对应一个工位！"+relation.getEmployee().getEmployeeName()+"已经绑定"+relation.getWorkCell().getCellName());
            url= "redirect:" + adminPath + "/bas/cellEmployee";
        }
        this.addMessage(redirectAttributes, message);
        return url;
    }


    @RequestMapping(value = "delete")
    public String delete(CellEmployee cellemployee, RedirectAttributes redirectAttributes) {
        cellEmployeeService.delete(cellemployee);
        addMessage(redirectAttributes, "删除工位与员工信息成功");
        return "redirect:" + adminPath + "/bas/cellEmployee";
    }

    @RequestMapping(value = "form")
    public String form(CellEmployee cellEmployee, Model model) {
        List<Employee> employees=employeeService.findAllList(new Employee());
        List<WorkCell> cells=workCellService.findAllList(new WorkCell());
        model.addAttribute("employeeList", employees);
        model.addAttribute("workCellList", cells);
        System.out.println("hhahahahha:"+employees);
        System.out.println("lallalalal:"+cells);
        model.addAttribute("cellEmployee", cellEmployee);
        return "modules/bas/cellEmployeeForm";
    }
}

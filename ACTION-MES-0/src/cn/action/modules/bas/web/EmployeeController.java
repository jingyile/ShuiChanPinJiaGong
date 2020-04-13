package cn.action.modules.bas.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.action.modules.bas.entity.Employee;
import cn.action.modules.bas.entity.Employee;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.bas.service.EmployeeService;
import cn.action.modules.bas.service.WorkCellService;
import cn.action.modules.bas.service.WorkStationInfosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;


@Controller
@RequestMapping(value="${adminPath}/bas/employee")
public class EmployeeController extends BaseController{
    @Autowired
    private EmployeeService employeeService;

    @ModelAttribute("employee")
    public Employee get(@RequestParam(required=false) String id) {
        if (StringUtils.isNotBlank(id)){
            return employeeService.get(id);
        }else{
            return new Employee();
        }
    }

    //��ҳ��ѯ
    @RequestMapping(value = {"list", ""})
    public String list(Employee employee, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<Employee> page = employeeService.findPage(new Page<Employee>(request, response), employee);
        model.addAttribute("page", page);
        return "modules/bas/employeeList";
    }

    //����
    @RequestMapping(value = "save")
    public String save(Employee employee, Model model, RedirectAttributes redirectAttributes) {

        employeeService.save(employee);
        this.addMessage(redirectAttributes, "����Ա����Ϣ�ɹ���");
        //addMessage(redirectAttributes, "���湤վ������Ϣ'" + employee.getId()+ "'�ɹ�");
        return "redirect:" + adminPath + "/bas/employee";
    }


    @RequestMapping(value = "delete")
    public String delete(Employee employee, RedirectAttributes redirectAttributes) {
        employeeService.delete(employee);
        addMessage(redirectAttributes, "ɾ��Ա����Ϣ�ɹ�");
        return "redirect:" + adminPath + "/bas/employee";
    }

    @RequestMapping(value = "form")
    public String form(Employee employee, Model model) {
        model.addAttribute("employee", employee);
        return "modules/bas/employeeForm";
    }
}

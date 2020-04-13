package cn.action.modules.bas.web;

import java.util.List;

import cn.action.common.utils.StringUtils;
import cn.action.modules.bas.entity.Employee;
import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.service.EmployeeService;
import cn.action.modules.bas.service.WorkCellService;
import cn.action.modules.bas.service.WorkTimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.WorkTime;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="${adminPath}/bas/workTime")
public class WorkTimeController extends BaseController{
	@Autowired
	private WorkTimeService workTimeService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private WorkCellService workCellService;
	@ModelAttribute("workTime")
	public WorkTime get(@RequestParam(required = false) String id){
		if (StringUtils.isNoneBlank(id)){
			return workTimeService.get(id);
		}
		return new WorkTime();
	}

	@RequestMapping(value = {"chart0",""})
	public String eWeekData0(WorkTime workTime,Model model) {
		if (StringUtils.isBlank(workTime.geteName())){
			workTime.seteName("闫春相");
		}
		List<WorkTime> eweeks=workTimeService.findWeek(workTime);
		List<Employee> employees=employeeService.findAllList(new Employee());
		model.addAttribute("employeeList", employees);
		model.addAttribute("eweekList",eweeks);
		model.addAttribute("workTime",workTime);
		return "modules/bas/chart";
	}

	@RequestMapping(value = {"chart1"})
	public String eWeekData1(WorkTime workTime,Model model) {
		if (StringUtils.isBlank(workTime.geteName())){
			workTime.seteName("闫春相");
		}
		List<WorkTime> emonth=workTimeService.findMonth(workTime);
		List<Employee> employees=employeeService.findAllList(new Employee());
		model.addAttribute("employeeList", employees);
		model.addAttribute("emonthList",emonth);
		model.addAttribute("workTime",workTime);
		return "modules/bas/chart1";
	}

	@RequestMapping(value = {"chart2"})
	public String eWeekData2(WorkTime workTime,Model model) {
		if (StringUtils.isBlank(workTime.geteName())){
			workTime.seteName("闫春相");
		}
		List<WorkTime> eyear=workTimeService.findYear(workTime);
		List<Employee> employees=employeeService.findAllList(new Employee());
		model.addAttribute("employeeList", employees);
		model.addAttribute("eyearList",eyear);
		model.addAttribute("workTime",workTime);
		return "modules/bas/chart2";
	}

	@RequestMapping(value = {"chart0cell"})
	public String ecellData(WorkTime workTime,Model model) {
		if (StringUtils.isBlank(workTime.getcName())){
			workTime.setcName("烘烤工位");
		}
		List<WorkTime> ecell=workTimeService.findWeek(workTime);
		List<WorkCell> cells=workCellService.findAllList(new WorkCell());
		model.addAttribute("workCellList", cells);
		model.addAttribute("ecellwList",ecell);
		model.addAttribute("workTime",workTime);
		return "modules/bas/chartCell";
	}

    @RequestMapping(value = {"chart1cell"})
    public String ecellData1(WorkTime workTime,Model model) {
		if (StringUtils.isBlank(workTime.getcName())){
			workTime.setcName("烘烤工位");
		}
        List<WorkTime> ecell=workTimeService.findMonth(workTime);
		List<WorkCell> cells=workCellService.findAllList(new WorkCell());
		model.addAttribute("workCellList", cells);
        model.addAttribute("ecellmList",ecell);
        model.addAttribute("workTime",workTime);
        return "modules/bas/chartCell1";
    }

    @RequestMapping(value = {"chart2cell"})
    public String ecellData2(WorkTime workTime,Model model) {
		if (StringUtils.isBlank(workTime.getcName())){
			workTime.setcName("烘烤工位");
		}
        List<WorkTime> ecell=workTimeService.findYear(workTime);
		List<WorkCell> cells=workCellService.findAllList(new WorkCell());
		model.addAttribute("workCellList", cells);
        model.addAttribute("ecellyList",ecell);
        model.addAttribute("workTime",workTime);
        return "modules/bas/chartCell2";
    }

}
package cn.action.modules.equip.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.DateUtils;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;

import cn.action.modules.bas.entity.Line;
import cn.action.modules.bas.service.LineService;
import cn.action.modules.equip.entity.EquipFaultReport;
import cn.action.modules.equip.service.EquipFaultReportService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "${adminPath}/equip/report")
public class EquipFaultReportController extends BaseController {
    @Autowired
    private EquipFaultReportService equipFaultReportService;
    @Autowired
    private LineService lineService;

    @ModelAttribute("equipFaultReport")
    public EquipFaultReport get(@RequestParam(required=false) String id) {
        if (StringUtils.isNotBlank(id)){
            return equipFaultReportService.get(id);
        }else{
            return new EquipFaultReport();
        }
    }
    //设备故障上报保存
    @RequestMapping(value="save")
    public String save(EquipFaultReport equipFaultReport, Model model, RedirectAttributes redirectAttribute) {
        boolean flag=equipFaultReportService.saveFaultReport(equipFaultReport);
        String message="设备编号有误，无此设备！";
        if(flag){
            message="故障上报成功！";
        }
        this.addMessage(redirectAttribute,message);
        return "redirect:"+adminPath+"/equip/report/form";
    }
    //跳转到故障上报页面
    @RequestMapping(value = "form")
    public String form(Model model){
        //获得产线信息
        List<Line> lines=lineService.findAllList(new Line());
        model.addAttribute("lineList",lines);
        return "modules/equip/equipFaultReportForm";
    }

    @RequestMapping(value = {"list",""})
    public String list(EquipFaultReport equipFaultReport, HttpServletRequest request, HttpServletResponse response, Model model){
        //获得产线信息
        List<Line> lines=lineService.findAllList(new Line());
        model.addAttribute("lineList",lines);
        //获得分页对象
        Page<EquipFaultReport> page=equipFaultReportService.findPage(new Page<EquipFaultReport>(request,response),equipFaultReport);
        model.addAttribute("page",page);
        return "modules/equip/equipFaultReportList";
    }
    //派工
    @RequestMapping(value = "assign")
    public String assign(EquipFaultReport equipFaultReport, Model model, RedirectAttributes redirectAttributes){
        //判断是否已经派工
        boolean flag =equipFaultReportService.isAssign(equipFaultReport);
        if(flag){
            List<Line> lines=lineService.findAllList(new Line());
            model.addAttribute("lineList",lines);
            return "modules/equip/equipMaintenanceWorkerForm";
        }
        this.addMessage(redirectAttributes,"该保修已经处理，不能重复派工");
        return "redirect:"+adminPath+"/equip/report/list";
    }
    //派工保存
    @RequestMapping(value = "maintenance")
    public String maintenance(EquipFaultReport equipFaultReport, Model model, RedirectAttributes redirectAttributes){
        equipFaultReport.setStatus("0002");
        equipFaultReport.setAssignTime(DateUtils.formatDateTime(new Date()));
        equipFaultReportService.save(equipFaultReport);
        this.addMessage(redirectAttributes,"派工成功！");
        return "redirect:"+adminPath+"/equip/report/list";
    }

    @RequestMapping(value = {"repairlist",""})
    public String repairList(EquipFaultReport equipFaultReport, HttpServletRequest request, HttpServletResponse response, Model model){
        //获得产线信息
        List<Line> lines=lineService.findAllList(new Line());
        model.addAttribute("lineList",lines);
        //获得分页对象
        Page<EquipFaultReport> page=equipFaultReportService.findPage(new Page<EquipFaultReport>(request,response),equipFaultReport);
        model.addAttribute("page",page);
        return "modules/equip/equipRepairList";
    }
    //开工
    @RequestMapping(value = "start")
    public String startRepair(EquipFaultReport equipFaultReport,Model model,RedirectAttributes redirectAttributes){
        String message = equipFaultReportService.saveStartRepair(equipFaultReport);
        this.addMessage(redirectAttributes,message);
        return "redirect:"+adminPath+"/equip/report/repairlist";
    }
}


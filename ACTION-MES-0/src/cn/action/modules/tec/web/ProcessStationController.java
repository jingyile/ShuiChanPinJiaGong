package cn.action.modules.tec.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Line;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.tec.entity.*;
import cn.action.modules.tec.entity.Process;
import cn.action.modules.bas.service.LineService;
import cn.action.modules.tec.service.ProcessService;
import cn.action.modules.tec.service.ProcessStationService;
import cn.action.modules.bas.service.WorkStationInfosService;
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
@RequestMapping(value = "${adminPath}/tec/processStation")
public class ProcessStationController extends BaseController {
    @Autowired
    private ProcessStationService processStationService;

    @Autowired
    private ProcessService processService;

    @Autowired
    private WorkStationInfosService workStationInfosService;

    @Autowired
    private LineService lineService;

    @ModelAttribute("processStation")
    public ProcessStation get(@RequestParam(required = false)String id){
        if(StringUtils.isNotBlank(id)){
            return processStationService.get(id);
        }
        return new ProcessStation();
    }

    @RequestMapping(value = {"list",""})
    public String list(ProcessStation processStation, HttpServletResponse response, HttpServletRequest request, Model model){
        Page<ProcessStation> page=processStationService.findPage(new Page<ProcessStation>(request,response),processStation);
        model.addAttribute("page",page);
        return "modules/tec/processStationList";
    }
    @RequestMapping(value = "save")
    public String save(ProcessStation processStation, RedirectAttributes redirectAttributes){
        processStationService.save(processStation);
        addMessage(redirectAttributes,"保存工序与工站关系成功");
        return "redirect:"+adminPath+"/tec/processStation";
    }

    @RequestMapping(value = "delete")
    public String delete(ProcessStation processStation, RedirectAttributes redirectAttributes){
        processStationService.delete(processStation);
        addMessage(redirectAttributes,"删除工序与工站关系成功");
        return "redirect:"+adminPath+"/tec/processStation";
    }

    @RequestMapping(value = "form")
    public String form(ProcessStation processStation,Model model){

        List<WorkStationInfos> workStationInfosList=workStationInfosService.findAllList(new WorkStationInfos());
        List<Line> lineList=lineService.findAllList(new Line());
        List<Process> processList=processService.findAllList(new Process());
        model.addAttribute("workStationInfosList",workStationInfosList);
        model.addAttribute("lineList",lineList);
        model.addAttribute("processList",processList);
        model.addAttribute("processStation",processStation);
        return "modules/tec/processStationForm";
    }
}

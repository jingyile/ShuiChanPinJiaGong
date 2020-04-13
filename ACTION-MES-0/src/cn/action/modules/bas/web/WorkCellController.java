package cn.action.modules.bas.web;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.entity.WorkStationInfos;
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
@RequestMapping(value="${adminPath}/bas/workCell")
public class WorkCellController extends BaseController{
    @Autowired
    private WorkCellService workCellService;
    @Autowired
    private WorkStationInfosService workStationInfosService;//工站

    @ModelAttribute("workCell")
    public WorkCell get(@RequestParam(required=false) String id) {
        if (StringUtils.isNotBlank(id)){
            System.out.println("0!");
            return workCellService.get(id);
        }else{
            System.out.println("1!");
            return new WorkCell();
        }
    }

    //分页查询
    @RequestMapping(value = {"list", ""})
    public String list(WorkCell workCell, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<WorkCell> page = workCellService.findPage(new Page<WorkCell>(request, response), workCell);
        model.addAttribute("page", page);
       return "modules/bas/workCellList";
    }

     //保存.
    @RequestMapping(value = "save")
    public String save(WorkCell workCell, Model model, RedirectAttributes redirectAttributes) {

        workCellService.save(workCell);
        this.addMessage(redirectAttributes, "保存工位信息成功！");
        //addMessage(redirectAttributes, "保存工站类型信息'" + workCell.getId()+ "'成功");
        return "redirect:" + adminPath + "/bas/workCell";
    }


    @RequestMapping(value = "delete")
    public String delete(WorkCell workCell, RedirectAttributes redirectAttributes) {
        workCellService.delete(workCell);
        addMessage(redirectAttributes, "删除工位信息成功");
        return "redirect:" + adminPath + "/bas/workCell/?repage&cellName="+workCell.getCellName();
    }

    @RequestMapping(value = "form")
    public String form(WorkCell workCell, Model model) {
        List<WorkStationInfos> station =workStationInfosService.findList(new WorkStationInfos());
        model.addAttribute("workStationInfosList",station);
        model.addAttribute("workCell", workCell);
        return "modules/bas/workCellForm";
    }
}

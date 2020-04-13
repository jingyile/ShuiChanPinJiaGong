package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.Line;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.bas.service.LineService;
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
@RequestMapping(value = "${adminPath}/bas/workStationInfos")
public class WorkStationInfosController extends BaseController {
	@Autowired
	private WorkStationInfosService workStationInfosService;
	@Autowired
	private LineService lineService;
	@ModelAttribute("workStationInfos")
	public WorkStationInfos get(@RequestParam(required = false) String id){
		if (StringUtils.isNoneBlank(id)){
			return workStationInfosService.get(id);
		}
		return new WorkStationInfos();
	}
	//分页查询
	@RequestMapping(value = {"list",""})
	public String list(WorkStationInfos workStationInfos, HttpServletRequest request, HttpServletResponse response, Model model){
		Page<WorkStationInfos> page=workStationInfosService.findPage(new Page<WorkStationInfos>(request,response),workStationInfos);
		model.addAttribute("page",page);
		return "modules/bas/workStationInfosList";
	}
	//保存
	@RequestMapping("save")
	public String save(WorkStationInfos workStationInfos, Model model, RedirectAttributes redirectAttributes){
		workStationInfosService.save(workStationInfos);
		this.addMessage(redirectAttributes,"保存工站信息成功!");
		return "redirect:"+adminPath+"/bas/workStationInfos";
	}
	//删除
	@RequestMapping("delete")
	public String delete(WorkStationInfos workStationInfos, RedirectAttributes redirectAttributes){
		workStationInfosService.delete(workStationInfos);
		this.addMessage(redirectAttributes,"删除工站信息成功!");
		return "redirect:"+adminPath+"/bas/workStationInfos";
	}
	//跳转
	@RequestMapping("form")
	public String form(WorkStationInfos workStationInfos,Model model){
		List<Line> lineList=lineService.findAllList(new Line());
		model.addAttribute("lineList",lineList);
		model.addAttribute("workStationInfos",workStationInfos);
		return "modules/bas/workStationInfosForm";
	}

}
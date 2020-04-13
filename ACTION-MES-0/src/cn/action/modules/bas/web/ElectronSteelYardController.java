package cn.action.modules.bas.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.action.common.config.Global;
import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.ElectronSteelYard;
import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.bas.service.ElectronSteelYardService;
import cn.action.modules.bas.service.WorkCellService;
import cn.action.modules.bas.service.WorkStationInfosService;
@Controller
@RequestMapping(value = "${adminPath}/bas/electronSteelyard")
public class ElectronSteelYardController extends BaseController {
	@Autowired
	private ElectronSteelYardService electronSteelyardService;
	@Autowired
	private WorkCellService workCellService;
	@Autowired
	private WorkStationInfosService workStationInfosService;
	@ModelAttribute("electronSteelyard")
	public ElectronSteelYard get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return electronSteelyardService.get(id);
		}else{
			return new ElectronSteelYard();
		}
	}
	
//查询
	@RequestMapping(value = {"list", ""})
	public String list(ElectronSteelYard electronSteelyard, HttpServletRequest request, HttpServletResponse response, Model model) {
		
        Page<ElectronSteelYard> page = electronSteelyardService.findPage(new Page<ElectronSteelYard>(request, response), electronSteelyard);
        model.addAttribute("page", page);
		return "modules/bas/electronSteelyardList";
	}

//页面跳转
	@RequestMapping(value = "form")
	public String form(ElectronSteelYard electronSteelyard, Model model) {
		//获得所有工位
		List<WorkCell> workCellList = workCellService.findAllList(new WorkCell());
		//获得所有工站
		List<WorkStationInfos> workStationInfosList = workStationInfosService.findAllList(new WorkStationInfos());
		model.addAttribute("workCellList",workCellList);
		model.addAttribute("workStationInfosList", workStationInfosList);
//		model.addAttribute("electronSteelyard", electronSteelyard);
		return "modules/bas/electronSteelyardForm";
	}

//保存
	@RequestMapping(value = "save")//@Valid 
	public String save(ElectronSteelYard electronSteelyard, Model model, RedirectAttributes redirectAttributes) {
		electronSteelyardService.save(electronSteelyard);
		addMessage(redirectAttributes, "保存电子称设备成功!");
		return "redirect:" + adminPath + "/bas/electronSteelyard";
	}
	
//删除
	@RequestMapping(value = "delete")
	public String delete(ElectronSteelYard electronSteelyard, RedirectAttributes redirectAttributes) {
		electronSteelyardService.delete(electronSteelyard);
		addMessage(redirectAttributes, "删除电子称设备成功!");
		return "redirect:" + adminPath + "/bas/electronSteelyard";
	}
}

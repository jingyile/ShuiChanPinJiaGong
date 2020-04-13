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
import cn.action.modules.bas.entity.IPhoto;
import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.bas.service.IPhotoService;
import cn.action.modules.bas.service.WorkCellService;
import cn.action.modules.bas.service.WorkStationInfosService;
@Controller
@RequestMapping(value = "${adminPath}/bas/iPhoto")
public class IPhotoController extends BaseController {
	@Autowired
	private IPhotoService iPhotoService;
	@Autowired
	private WorkCellService workCellService;
	@Autowired
	private WorkStationInfosService workStationInfosService;
	@ModelAttribute("iPhoto")
	public IPhoto get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return iPhotoService.get(id);
		}
			return new IPhoto();
	}
	

	@RequestMapping(value = {"list", ""})
	public String list(IPhoto iPhoto, HttpServletRequest request, HttpServletResponse response, Model model) {
		
        Page<IPhoto> page = iPhotoService.findPage(new Page<IPhoto>(request, response), iPhoto); 
        model.addAttribute("page", page);
		return "modules/bas/iPhotoList";
	}


	@RequestMapping(value = "form")
	public String form(IPhoto iPhoto, Model model) {
		List<WorkCell> workCellList = workCellService.findAllList(new WorkCell());
		List<WorkStationInfos> workStationInfosList = workStationInfosService.findAllList(new WorkStationInfos());
		
		
		model.addAttribute("workCellList", workCellList);
		model.addAttribute("workStationInfosList", workStationInfosList);
		model.addAttribute("iPhoto", iPhoto);
		return "modules/bas/iPhotoForm";
	}


	@RequestMapping(value = "save")//@Valid 
	public String save(IPhoto iPhoto, Model model, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:" + adminPath + "/bas/iPhoto/?repage&qrCode="+iPhoto.getQrCode();
		}
		
		iPhotoService.save(iPhoto);
		addMessage(redirectAttributes, "保存成功'" + iPhoto.getQrCode() + "'成功");
		return "redirect:" + adminPath + "/bas/iPhoto/?repage&qrCode="+iPhoto.getQrCode();
	}
	

	@RequestMapping(value = "delete")
	public String delete(IPhoto iPhoto, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:" + adminPath + "/bas/iPhoto/?repage";
		}
		iPhotoService.delete(iPhoto);
		addMessage(redirectAttributes, "删除成功");
		return "redirect:" + adminPath + "/bas/iPhoto/?repage&type="+iPhoto.getType();
	}

	
	@ResponseBody
	@RequestMapping(value = "listData")
	public List<IPhoto> listData(@RequestParam(required=false) String type) {
		IPhoto iPhoto = new IPhoto();
		iPhoto.setType(type);
		return iPhotoService.findList(iPhoto);
	}
}

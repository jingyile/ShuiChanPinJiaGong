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
import cn.action.modules.bas.entity.CardReader;
import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.bas.service.CardReaderService;
import cn.action.modules.bas.service.WorkCellService;
import cn.action.modules.bas.service.WorkStationInfosService;

@Controller
@RequestMapping(value = "${adminPath}/bas/cardReader")
public class CardReaderController extends BaseController {
	@Autowired
	private CardReaderService cardReaderService;
	@Autowired
	private WorkStationInfosService workStationInfosService;
	@Autowired
	private WorkCellService workCellService;
	@ModelAttribute("cardReader")
	public CardReader get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return cardReaderService.get(id);
		}else{
			return new CardReader();
		}
	}
	

	@RequestMapping(value = {"list", ""})
	public String list(CardReader cardReader, HttpServletRequest request, HttpServletResponse response, Model model) {
		
        Page<CardReader> page = cardReaderService.findPage(new Page<CardReader>(request, response), cardReader); 
        model.addAttribute("page", page);
		return "modules/bas/cardReaderList";
	}


	@RequestMapping(value = "form")
	public String form(CardReader cardReader, Model model) {
		List<WorkCell> workCellList = workCellService.findAllList(new WorkCell());
		List<WorkStationInfos> workStationInfosList = workStationInfosService.findAllList(new WorkStationInfos());
		
		
		model.addAttribute("workCellList", workCellList);
		model.addAttribute("workStationInfosList", workStationInfosList);
		model.addAttribute("cardReader", cardReader);
		return "modules/bas/cardReaderForm";
	}


	@RequestMapping(value = "save")//@Valid 
	public String save(CardReader cardReader, Model model, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:" + adminPath + "/bas/cardReader/?repage&qrCode="+cardReader.getQrCode();
		}
		
		cardReaderService.save(cardReader);
		addMessage(redirectAttributes, "保存字典'" + cardReader.getQrCode() + "'成功");
		return "redirect:" + adminPath + "/bas/cardReader/?repage&qrCode="+cardReader.getQrCode();
	}
	

	@RequestMapping(value = "delete")
	public String delete(CardReader cardReader, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:" + adminPath + "/bas/cardReader/?repage";
		}
		cardReaderService.delete(cardReader);
		addMessage(redirectAttributes, "删除字典成功");
		return "redirect:" + adminPath + "/bas/cardReader/?repage&type="+cardReader.getType();
	}

	
	@ResponseBody
	@RequestMapping(value = "listData")
	public List<CardReader> listData(@RequestParam(required=false) String type) {
		CardReader cardReader = new CardReader();
		cardReader.setType(type);
		return cardReaderService.findList(cardReader);
	}

}

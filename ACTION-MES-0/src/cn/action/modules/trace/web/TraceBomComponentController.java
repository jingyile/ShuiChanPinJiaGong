package cn.action.modules.trace.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.trace.entity.TraceBomComponent;
import cn.action.modules.trace.service.TraceBomComponentService;

@Controller
@RequestMapping(value="${adminPath}/trace/traceBomComponent")
public class TraceBomComponentController extends BaseController{
	@Autowired
	private TraceBomComponentService traceBomComponentService;

	@ModelAttribute("traceBomComponent")
	public TraceBomComponent get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return traceBomComponentService.get(id);
		}else{
			return new TraceBomComponent();
		}
	}
	

	@RequestMapping(value = {"list", ""})
	public String list(TraceBomComponent bomComponent, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<TraceBomComponent> page = traceBomComponentService.findPage(new Page<TraceBomComponent>(request, response), bomComponent); 
        model.addAttribute("page", page);
		return "modules/trace/traceBomComponentList";
	}
}


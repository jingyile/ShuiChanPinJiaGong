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
import cn.action.modules.trace.entity.TraceProcess;
import cn.action.modules.trace.service.TraceProcessService;

@Controller
@RequestMapping(value="${adminPath}/trace/traceProcess")
public class TraceProcessController extends BaseController{
	@Autowired
	private TraceProcessService traceProcessService;

	
	@ModelAttribute("traceProcess")
	public TraceProcess get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return traceProcessService.get(id);
		}else{
			return new TraceProcess();
		}
	}
	

	@RequestMapping(value = {"list", ""})
	public String list(TraceProcess traceProcess, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<TraceProcess> page = traceProcessService.findPage(new Page<TraceProcess>(request, response), traceProcess); 
        model.addAttribute("page", page);
		return "modules/trace/traceProcessList";
	}

}


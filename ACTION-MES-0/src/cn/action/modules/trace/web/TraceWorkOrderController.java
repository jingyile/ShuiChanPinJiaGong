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
import cn.action.modules.trace.entity.TraceWorkOrder;
import cn.action.modules.trace.service.TraceWorkOrderService;

@Controller
@RequestMapping(value="${adminPath}/trace/traceWorkOrder")
public class TraceWorkOrderController extends BaseController{
	@Autowired
	private TraceWorkOrderService traceWorkOrderService;

	
	@ModelAttribute("traceWorkOrder")
	public TraceWorkOrder get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return traceWorkOrderService.get(id);
		}else{
			return new TraceWorkOrder();
		}
	}
	

	@RequestMapping(value = {"list", ""})
	public String list(TraceWorkOrder traceWorkOrder, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<TraceWorkOrder> page = traceWorkOrderService.findPage(new Page<TraceWorkOrder>(request, response), traceWorkOrder); 
        model.addAttribute("page", page);
		return "modules/trace/traceWorkOrderList";
	}

}


package cn.action.modules.bas.web;

import cn.action.common.persistence.Page;
import cn.action.common.utils.StringUtils;
import cn.action.common.web.BaseController;
import cn.action.modules.bas.entity.MountGuard;
import cn.action.modules.bas.entity.WorkCell;
import cn.action.modules.bas.service.MountGuardService;
import cn.action.modules.bas.service.WorkCellService;
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
@RequestMapping(value="${adminPath}/bas/mountGuard")
public class MountGuardController extends BaseController {
    @Autowired
    private MountGuardService mountGuardService;
    @Autowired
    private WorkCellService workCellService;

    @ModelAttribute("mountGuard")
    public MountGuard get(@RequestParam(required=false) String id) {
        if (StringUtils.isNotBlank(id)){
            System.out.println("0!");
            return mountGuardService.get(id);
        }else{
            System.out.println("1!");
            return new MountGuard();
        }
    }

    //∑÷“≥≤È—Ø
    @RequestMapping(value = {"list", ""})
    public String list(MountGuard mountGuard, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<MountGuard> page = mountGuardService.findPage(new Page<MountGuard>(request, response), mountGuard);
        model.addAttribute("page", page);
        List<WorkCell> workCells=workCellService.findAllList(new WorkCell());
        model.addAttribute("workCellList", workCells);
        return "modules/bas/mountGuardList";
    }

    @RequestMapping(value = {"chart"})
    public String list2(MountGuard mountGuard, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<MountGuard> page = mountGuardService.findPage(new Page<MountGuard>(request, response), mountGuard);
        model.addAttribute("page", page);
        List<WorkCell> workCells=workCellService.findAllList(new WorkCell());
        model.addAttribute("workCellList", workCells);
        return "modules/bas/chart";
    }


}

package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.WorkOrderDao;
import cn.action.modules.bas.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional(readOnly=true)
public class WorkOrderService extends CrudService<WorkOrderDao, WorkOrder> {
    @Autowired
    private BomService bomService;
    @Autowired
    private  BomDetailService bomDetailService;
    @Autowired
    private  MaterialService  materialService;
    @Autowired
    private  OrderService orderService;
    public boolean saveAll(WorkOrder workOrder){
        boolean flag=true;
        //判断是修改还是添加
        if(workOrder.getIsNewRecord()){
            //  1.库存判断
            flag=this.stockProcessing(workOrder);
            if(!flag)
            {
                return flag;
            }
            //  2.充足时，修改为workOrder
            Order order=orderService.get(workOrder.getOrder().getId());
            order.setStatus("workOrder");
            orderService.save(order);
//  3.baocun
        }
        if(workOrder.getActStartTime().equals("")){
            workOrder.setActStartTime(null);
        }
        this.save(workOrder);
        return flag;
    }
    //模拟WMS
    private boolean stockProcessing(WorkOrder workOrder){
//1.根据工单中的产品获得对应bom对象
        Bom tempBom=new Bom();
        tempBom.setProduct(workOrder.getProduct());
//传入bom,获得对应bomDuix
     //   List<Bom> boms=bomService.findAllList(tempBom);
        List<Bom> boms=bomService.findList(tempBom);
        BomDetail tempBomd=new BomDetail();
        tempBomd.setBom(boms.get(0));
        List<BomDetail> bomtailList=bomDetailService.findList(tempBomd);
        //遍历工单中产品对应的bom详情集合
        int allNums=workOrder.getAmount()*24;//工单中生产产品袋鼠

        double nums=0;//zong
        double curSum=200;//某类型
        List<Material> curMaterialList;
        //Mouleix每批次原料集合
        for(BomDetail detail:bomtailList){
            //获得物料对应原料库存总数及每批次原料集合
            Material m=new Material();
            m.setmType(detail.getmType());
            curSum=materialService.findSum(m);
            curMaterialList=materialService.findList(m);
            //计算出当前工单所需物料数量
            if(detail.getmType().indexOf("bag")>-1||detail.getmType().indexOf("fresh")>-1) {
                nums = allNums * detail.getmNum();
            }
            //库存数量与所需物料数量对比
            if(curSum<nums)
            {
                return false;
            }
            for(Material temp:curMaterialList){
                if(temp.getQuantity()>=nums){
                    temp.setQuantity(temp.getQuantity()-nums);
                    materialService.save(temp);
                    break;
                }
                nums=nums-temp.getQuantity() ;
                temp.setQuantity(0);
                materialService.save(temp);
            }
        }
        return true;
    }


    public boolean delectOrder(WorkOrder workOrder){
        //未发布的可以删除
        if(workOrder.getState().equals("unreleased")){
            this.delete(workOrder);
            //修改为新订单
            Order tempOrder =orderService.get(workOrder.getOrder());
            tempOrder.setStatus("newOrder");
            orderService.save(tempOrder);
            return  true;
        }
        return  false;
    }
}
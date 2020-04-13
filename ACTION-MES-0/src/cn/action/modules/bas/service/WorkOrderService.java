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
        //�ж����޸Ļ������
        if(workOrder.getIsNewRecord()){
            //  1.����ж�
            flag=this.stockProcessing(workOrder);
            if(!flag)
            {
                return flag;
            }
            //  2.����ʱ���޸�ΪworkOrder
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
    //ģ��WMS
    private boolean stockProcessing(WorkOrder workOrder){
//1.���ݹ����еĲ�Ʒ��ö�Ӧbom����
        Bom tempBom=new Bom();
        tempBom.setProduct(workOrder.getProduct());
//����bom,��ö�ӦbomDuix
     //   List<Bom> boms=bomService.findAllList(tempBom);
        List<Bom> boms=bomService.findList(tempBom);
        BomDetail tempBomd=new BomDetail();
        tempBomd.setBom(boms.get(0));
        List<BomDetail> bomtailList=bomDetailService.findList(tempBomd);
        //���������в�Ʒ��Ӧ��bom���鼯��
        int allNums=workOrder.getAmount()*24;//������������Ʒ����

        double nums=0;//zong
        double curSum=200;//ĳ����
        List<Material> curMaterialList;
        //Mouleixÿ����ԭ�ϼ���
        for(BomDetail detail:bomtailList){
            //������϶�Ӧԭ�Ͽ��������ÿ����ԭ�ϼ���
            Material m=new Material();
            m.setmType(detail.getmType());
            curSum=materialService.findSum(m);
            curMaterialList=materialService.findList(m);
            //�������ǰ����������������
            if(detail.getmType().indexOf("bag")>-1||detail.getmType().indexOf("fresh")>-1) {
                nums = allNums * detail.getmNum();
            }
            //����������������������Ա�
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
        //δ�����Ŀ���ɾ��
        if(workOrder.getState().equals("unreleased")){
            this.delete(workOrder);
            //�޸�Ϊ�¶���
            Order tempOrder =orderService.get(workOrder.getOrder());
            tempOrder.setStatus("newOrder");
            orderService.save(tempOrder);
            return  true;
        }
        return  false;
    }
}
package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.OrderDao;
import cn.action.modules.bas.entity.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly=true)
public class OrderService extends CrudService<OrderDao, Order> {
//下工单功能,判断订单状态是否是新订单
    public boolean isNewOrder(Order order)
    {
        if(order.getStatus().equals("newOrder")){
            return true;
        }
        return false;
    }

}

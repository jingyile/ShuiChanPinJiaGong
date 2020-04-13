package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.CellEmployeeDao;
import cn.action.modules.bas.entity.CellEmployee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly=true)
public class CellEmployeeService  extends CrudService<CellEmployeeDao, CellEmployee> {
//Ա���͹�λ�߼�
   @Autowired
    private CellEmployeeDao cellEmployeeDao;
    public CellEmployee saveRelation(CellEmployee cellEmployee)
    {
        //�ж����or�޸�
        //������ж�Ա���Ƿ��Ѿ��󶨹�λ����������
        if("".equals(cellEmployee.getId())) {
            //����id�ж��Ƿ�󶨹�λ,���򷵻ع�ϵ����
            CellEmployee relation = cellEmployeeDao.findbyEmployeeId(cellEmployee);
            if (relation!= null) {
                return relation;
            }
        }
        this.save(cellEmployee);
        return null;
    }
}

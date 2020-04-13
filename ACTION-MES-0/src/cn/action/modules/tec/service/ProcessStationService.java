package cn.action.modules.tec.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.tec.dao.ProcessStationDao;
import cn.action.modules.tec.entity.ProcessStation;
@Service
@Transactional(readOnly=true)
public class ProcessStationService extends CrudService<ProcessStationDao,ProcessStation>{

    /**
     * ���ݹ�վ�����ö�Ӧ�Ĺ������
     * @param workStationInfos
     * @return
     */

    public ProcessStation findProcessStationByStation(WorkStationInfos workStationInfos){
        ProcessStation processStation = new ProcessStation();
        processStation.setWorkStationInfos(workStationInfos);
        this.findList(processStation);
        List<ProcessStation> list=this.findList(processStation);
        if (list==null){
            return null;
        }
        if (list.size()>0){
            return list.get(0);
        }
        return null;
    }

    /**
     * ���ݹ�վ��ȡ����
     * @param id
     * @return
     */

    public ProcessStation findProcessStationByStationId(String id) {
        ProcessStation  ps = new ProcessStation();
        WorkStationInfos ws = new WorkStationInfos();
        ws.setId(id);
        ps.setWorkStationInfos(ws);
        List<ProcessStation> list= dao.findProcessStationByStationId(ps);
        if(list==null) {
            return null;
        }
        if(list.size()>=1) {
            return list.get(0);
        }else {
            return null;
        }
    }
}
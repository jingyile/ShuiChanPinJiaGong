package cn.action.modules.bas.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.IPhotoDao;
import cn.action.modules.bas.entity.IPhoto;

@Service
@Transactional(readOnly=true)
public class IPhotoService extends CrudService<IPhotoDao, IPhoto> {

}

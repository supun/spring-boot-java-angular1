package com.solverminds.klsm.util;

import org.springframework.beans.BeanUtils;

import com.solverminds.klsm.web.domain.LocationMaster;
import com.solverminds.klsm.web.domain.MediaFile;
import com.solverminds.klsm.web.domain.RankMaster;
import com.solverminds.klsm.web.domain.RiskMaster;
import com.solverminds.klsm.web.domain.RskInitialRisk;

public class DAOMapper
{

	// Map domain rsk master to dao master
	public static com.solverminds.klsm.backend.dao.RiskMaster mapToriskMasterDao( RiskMaster riskMaster )
	{
		// TODO Auto-generated method stub
		com.solverminds.klsm.backend.dao.RiskMaster riskMasterDao = new com.solverminds.klsm.backend.dao.RiskMaster();
		BeanUtils.copyProperties( riskMaster, riskMasterDao );
		return riskMasterDao;
	}

	// rskInitRskItem to DAO
	public static com.solverminds.klsm.backend.dao.RskInitialRisk mapToRskIntRskDao( RskInitialRisk rskIntRsk )
	{
		com.solverminds.klsm.backend.dao.RskInitialRisk rskInitialRiskDao = new com.solverminds.klsm.backend.dao.RskInitialRisk();
		BeanUtils.copyProperties( rskIntRsk, rskInitialRiskDao );
		return rskInitialRiskDao;
	}

	// rskInitRskItem to DAO
	public static com.solverminds.klsm.backend.dao.RiskControlItem mapToControlRskIntControlRskDao( com.solverminds.klsm.web.domain.RiskControlItem riskControlItem )
	{
		com.solverminds.klsm.backend.dao.RiskControlItem riskControlItemDao = new com.solverminds.klsm.backend.dao.RiskControlItem();
		BeanUtils.copyProperties( riskControlItem, riskControlItemDao );
		return riskControlItemDao;
	}

	// map dao location master to domain location master
	public static LocationMaster mapDaoLocationToDomainLocation( com.solverminds.klsm.backend.dao.LocationMaster locationMasterDao )
	{
		LocationMaster locationMaster = new LocationMaster();
		BeanUtils.copyProperties( locationMasterDao, locationMaster );
		return locationMaster;
	}

	// map dao rank master to domain rank master
	public static RankMaster mapDaoRankMasterToDomainRankMaster( com.solverminds.klsm.backend.dao.RankMaster rankMasterDao )
	{
		RankMaster rankMaster = new RankMaster();
		BeanUtils.copyProperties( rankMasterDao, rankMaster );
		return rankMaster;
	}

	public static com.solverminds.klsm.backend.dao.MediaFile mapDomainFileToDaoFile( MediaFile mediaFile )
	{
		// TODO Auto-generated method stub
		com.solverminds.klsm.backend.dao.MediaFile mediaFileDao = new com.solverminds.klsm.backend.dao.MediaFile();
		// mediaFileDao.setDocId( mediaFile.getId() );
		mediaFileDao.setFileName( mediaFile.getName() );
		mediaFileDao.setFilePath( mediaFile.getFilePath() );
		mediaFileDao.setFileType( mediaFile.getType().name() );
		// BeanUtils.copyProperties( mediaFile, mediaFileDao );
		return mediaFileDao;
	}

}

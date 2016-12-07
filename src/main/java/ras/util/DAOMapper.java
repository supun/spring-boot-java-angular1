package ras.util;

import org.springframework.beans.BeanUtils;

import ras.web.domain.LocationMaster;
import ras.web.domain.MediaFile;
import ras.web.domain.RankMaster;
import ras.web.domain.RiskMaster;
import ras.web.domain.RskInitialRisk;

public class DAOMapper
{

	// Map domain rsk master to dao master
	public static ras.backend.dao.RiskMaster mapToriskMasterDao( RiskMaster riskMaster )
	{
		// TODO Auto-generated method stub
		ras.backend.dao.RiskMaster riskMasterDao = new ras.backend.dao.RiskMaster();
		BeanUtils.copyProperties( riskMaster, riskMasterDao );
		return riskMasterDao;
	}

	// rskInitRskItem to DAO
	public static ras.backend.dao.RskInitialRisk mapToRskIntRskDao( RskInitialRisk rskIntRsk )
	{
		ras.backend.dao.RskInitialRisk rskInitialRiskDao = new ras.backend.dao.RskInitialRisk();
		BeanUtils.copyProperties( rskIntRsk, rskInitialRiskDao );
		return rskInitialRiskDao;
	}

	// rskInitRskItem to DAO
	public static ras.backend.dao.RiskControlItem mapToControlRskIntControlRskDao( ras.web.domain.RiskControlItem riskControlItem )
	{
		ras.backend.dao.RiskControlItem riskControlItemDao = new ras.backend.dao.RiskControlItem();
		BeanUtils.copyProperties( riskControlItem, riskControlItemDao );
		return riskControlItemDao;
	}

	// map dao location master to domain location master
	public static LocationMaster mapDaoLocationToDomainLocation( ras.backend.dao.LocationMaster locationMasterDao )
	{
		LocationMaster locationMaster = new LocationMaster();
		BeanUtils.copyProperties( locationMasterDao, locationMaster );
		return locationMaster;
	}

	// map dao rank master to domain rank master
	public static RankMaster mapDaoRankMasterToDomainRankMaster( ras.backend.dao.RankMaster rankMasterDao )
	{
		RankMaster rankMaster = new RankMaster();
		BeanUtils.copyProperties( rankMasterDao, rankMaster );
		return rankMaster;
	}

	public static ras.backend.dao.MediaFile mapDomainFileToDaoFile( MediaFile mediaFile )
	{
		// TODO Auto-generated method stub
		ras.backend.dao.MediaFile mediaFileDao = new ras.backend.dao.MediaFile();
		mediaFileDao.setDocId( mediaFile.getId() );
		mediaFileDao.setFileName( mediaFile.getName() );
		mediaFileDao.setFilePath( mediaFile.getFilePath() );
		mediaFileDao.setFileType( mediaFile.getType().name() );
		// BeanUtils.copyProperties( mediaFile, mediaFileDao );
		return mediaFileDao;
	}

}

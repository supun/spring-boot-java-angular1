package ras.util;

import org.springframework.beans.BeanUtils;

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

}

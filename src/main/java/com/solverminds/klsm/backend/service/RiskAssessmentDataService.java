package com.solverminds.klsm.backend.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solverminds.klsm.backend.repository.ILocationMasterRepository;
import com.solverminds.klsm.backend.repository.IRankMasterRepository;
import com.solverminds.klsm.util.DAOMapper;
import com.solverminds.klsm.web.domain.LocationMaster;
import com.solverminds.klsm.web.domain.RankMaster;

@Service("riskDataService")
public class RiskAssessmentDataService implements IRiskAssessmanetDataService
{

	@Autowired
	ILocationMasterRepository locationMasterRepository;

	@Autowired
	IRankMasterRepository rankMasterRepository;

	@Override
	public List<RankMaster> getActiverankMasterList( String status )
	{
		List<com.solverminds.klsm.backend.dao.RankMaster> rankMasterDaoList = rankMasterRepository.getActiveRankList( status );
		List<RankMaster> rankMasterDomainList = new ArrayList<>();
		for ( com.solverminds.klsm.backend.dao.RankMaster rankMasterDao : rankMasterDaoList )
		{
			rankMasterDomainList.add( DAOMapper.mapDaoRankMasterToDomainRankMaster( rankMasterDao ) );
		}
		return rankMasterDomainList;
	}

	@Override
	public List<LocationMaster> getActiveLocationList( String status )
	{
		List<com.solverminds.klsm.backend.dao.LocationMaster> locationMasterDaoList = locationMasterRepository.getActiveLocationList( status );
		List<LocationMaster> locationMasterDomainList = new ArrayList<>();
		for ( com.solverminds.klsm.backend.dao.LocationMaster locationMasterDao : locationMasterDaoList )
		{
			locationMasterDomainList.add( DAOMapper.mapDaoLocationToDomainLocation( locationMasterDao ) );
		}
		return locationMasterDomainList;
	}

}

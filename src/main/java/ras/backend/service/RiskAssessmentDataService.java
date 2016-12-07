package ras.backend.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ras.backend.repository.ILocationMasterRepository;
import ras.backend.repository.IRankMasterRepository;
import ras.util.DAOMapper;
import ras.web.domain.LocationMaster;
import ras.web.domain.RankMaster;

@Service("riskAssessmentDataService")
public class RiskAssessmentDataService implements IRiskAssessmanetDataService
{

	@Autowired
	ILocationMasterRepository locationMasterRepository;

	@Autowired
	IRankMasterRepository rankMasterRepository;

	@Override
	public List<LocationMaster> getActiveLocationList( String status )
	{
		// TODO Auto-generated method stub
		/*
		 * Response<List<LocationMaster>> response = new Response<List<LocationMaster>>(); response.setStatus( Response.SUCCESS ); response.setData(
		 * locationMasterRepository.findActiveLocationList( status ) ); return response;
		 */

		List<ras.backend.dao.LocationMaster> locationMasterDaoList = locationMasterRepository.findActiveLocationList( status );
		List<LocationMaster> locationMasterDomainList = new ArrayList<>();

		for ( ras.backend.dao.LocationMaster locationMasterDao : locationMasterDaoList )
		{
			locationMasterDomainList.add( DAOMapper.mapDaoLocationToDomainLocation( locationMasterDao ) );
		}

		return locationMasterDomainList;
	}

	@Override
	public List<RankMaster> getActiverankMasterList( String status )
	{
		List<ras.backend.dao.RankMaster> rankMasterDaoList = rankMasterRepository.findActiveRankList( status );
		List<RankMaster> rankMasterDomainList = new ArrayList<>();

		for ( ras.backend.dao.RankMaster rankMasterDao : rankMasterDaoList )
		{
			rankMasterDomainList.add( DAOMapper.mapDaoRankMasterToDomainRankMaster( rankMasterDao ) );
		}

		return rankMasterDomainList;
	}
}

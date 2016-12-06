package ras.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ras.backend.dao.LocationMaster;
import ras.backend.repository.ILocationMasterRepository;

@Service("riskAssessmentDataService")
public class RiskAssessmentDataService implements IRiskAssessmanetDataService
{

	@Autowired
	ILocationMasterRepository locationMasterRepository;

	@Override
	public List<LocationMaster> getActiveLocationList( String status )
	{
		// TODO Auto-generated method stub
		/*
		 * Response<List<LocationMaster>> response = new Response<List<LocationMaster>>(); response.setStatus( Response.SUCCESS ); response.setData(
		 * locationMasterRepository.findActiveLocationList( status ) ); return response;
		 */
		return locationMasterRepository.findActiveLocationList( status );
	}
}

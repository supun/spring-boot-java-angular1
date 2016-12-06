package ras.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ras.backend.dao.LocationMaster;
import ras.backend.service.IRiskAssessmanetDataService;
import ras.web.domain.Response;

@RestController
public class RiskAssessmentDataController
{

	@Autowired
	IRiskAssessmanetDataService riskAssessmanetDataService;

	@ResponseBody
	@RequestMapping(value = "/getActiveLocations", method = RequestMethod.GET)
	public Response<List<LocationMaster>> getActiveLocationList()
	{
		Response<List<LocationMaster>> response = new Response<List<LocationMaster>>();
		List<LocationMaster> list = new ArrayList<LocationMaster>();
		list = riskAssessmanetDataService.getActiveLocationList( "A" );
		// st.addAll( ( Collection<? extends LocationMaster> ) riskAssessmanetDataService.getActiveLocationList( "A" ) );
		response.setData( list );
		return response;

	}

}

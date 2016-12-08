package com.solverminds.klsm.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.solverminds.klsm.backend.service.IRiskAssessmanetDataService;
import com.solverminds.klsm.web.domain.LocationMaster;
import com.solverminds.klsm.web.domain.RankMaster;
import com.solverminds.klsm.web.domain.Response;

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
		response.setData( riskAssessmanetDataService.getActiveLocationList( "A" ) );
		return response;
	}

	@ResponseBody
	@RequestMapping(value = "/getActiveRanks", method = RequestMethod.GET)
	public Response<List<RankMaster>> getActiveRankList()
	{
		Response<List<RankMaster>> response = new Response<List<RankMaster>>();
		response.setData( riskAssessmanetDataService.getActiverankMasterList( "A" ) );
		return response;
	}

}

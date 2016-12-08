package com.solverminds.klsm.backend.service;

import java.util.List;

import com.solverminds.klsm.web.domain.LocationMaster;
import com.solverminds.klsm.web.domain.RankMaster;

public interface IRiskAssessmanetDataService
{
	List<LocationMaster> getActiveLocationList( String status );

	List<RankMaster> getActiverankMasterList( String status );
}

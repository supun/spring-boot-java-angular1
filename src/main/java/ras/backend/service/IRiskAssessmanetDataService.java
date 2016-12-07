package ras.backend.service;

import java.util.List;

import ras.web.domain.LocationMaster;
import ras.web.domain.RankMaster;

public interface IRiskAssessmanetDataService
{
	List<LocationMaster> getActiveLocationList( String status );

	List<RankMaster> getActiverankMasterList( String status );
}

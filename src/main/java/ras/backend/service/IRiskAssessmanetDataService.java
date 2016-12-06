package ras.backend.service;

import java.util.List;

import ras.backend.dao.LocationMaster;

public interface IRiskAssessmanetDataService
{
	List<LocationMaster> getActiveLocationList( String status );
}

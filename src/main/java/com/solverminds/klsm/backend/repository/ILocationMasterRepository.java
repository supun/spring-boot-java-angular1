package com.solverminds.klsm.backend.repository;

import java.util.List;

import com.solverminds.klsm.backend.dao.LocationMaster;

public interface ILocationMasterRepository
{
	public List<LocationMaster> getActiveLocationList( String activeStatus );
}

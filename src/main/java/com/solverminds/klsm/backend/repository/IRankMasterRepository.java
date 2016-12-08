package com.solverminds.klsm.backend.repository;

import java.util.List;

import com.solverminds.klsm.backend.dao.RankMaster;

public interface IRankMasterRepository
{
	public List<RankMaster> getActiveRankList( String activeStatus );

}
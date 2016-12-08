package com.solverminds.klsm.backend.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.solverminds.klsm.backend.dao.RankMaster;

@Repository
@Transactional
public class RankMasterRepository implements IRankMasterRepository
{

	@Autowired
	private SessionFactory _sessionFactory;

	private Session getSession()
	{
		return _sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	public List<RankMaster> getActiveRankList( String activeStatus )
	{
		return getSession().createQuery( "from RankMaster where activeStatus = :activeStatus" ).setParameter( "activeStatus", activeStatus ).list();
	}
}

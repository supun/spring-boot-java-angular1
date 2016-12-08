package com.solverminds.klsm.backend.repository;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.solverminds.klsm.backend.dao.RiskControlItem;

@Repository
@Transactional
public class RiskControlItemRepository implements IRiskControlItemRepository
{

	@Autowired
	private SessionFactory _sessionFactory;

	private Session getSession()
	{
		return _sessionFactory.getCurrentSession();
	}

	// save riskMaster to db
	public void save( RiskControlItem riskControlItem )
	{
		getSession().save( riskControlItem );
	}

}

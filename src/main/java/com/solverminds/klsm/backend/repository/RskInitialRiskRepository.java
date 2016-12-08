/**
 * 
 */
package com.solverminds.klsm.backend.repository;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.solverminds.klsm.backend.dao.RskInitialRisk;

/**
 * @author supun
 */
@Repository
@Transactional
public class RskInitialRiskRepository implements IRskInitialRiskRepository
{
	@Autowired
	private SessionFactory _sessionFactory;

	private Session getSession()
	{
		return _sessionFactory.getCurrentSession();
	}

	// save riskMaster to db
	public void save( RskInitialRisk rskInitialRisk )
	{
		getSession().save( rskInitialRisk );
	}

}

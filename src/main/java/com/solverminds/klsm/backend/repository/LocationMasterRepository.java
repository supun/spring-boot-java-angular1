/*
 * package ras.backend.repository; import java.util.List; import org.springframework.data.jpa.repository.JpaRepository; import
 * org.springframework.data.jpa.repository.JpaSpecificationExecutor; import org.springframework.data.jpa.repository.Query; import
 * org.springframework.data.repository.query.Param; import ras.backend.dao.LocationMaster; public interface CityRepository extends
 * JpaRepository<City,String>,JpaSpecificationExecutor<City> { } public interface ILocationMasterRepository extends JpaRepository<LocationMaster,
 * Long>, JpaSpecificationExecutor<LocationMaster> {
 * @Query("SELECT l FROM LocationMaster l WHERE l.activeStatus = :activeStatus") List<LocationMaster> findActiveLocationList( @Param("activeStatus")
 * String activeStatus );
 * @Query("select l from LocationMaster l where l.active_status = ?A") List<LocationMaster> findActiveLocationList( String activeStatus );
 * @Query("SELECT p FROM Person p WHERE LOWER(p.lastName) = LOWER(:lastName)") public List<Person> find(@Param("lastName") String lastName); }
 */

package com.solverminds.klsm.backend.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.solverminds.klsm.backend.dao.LocationMaster;

@Repository
@Transactional
public class LocationMasterRepository implements ILocationMasterRepository
{

	@Autowired
	private SessionFactory _sessionFactory;

	private Session getSession()
	{
		return _sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	public List<LocationMaster> getActiveLocationList( String activeStatus )
	{
		return getSession().createQuery( "from LocationMaster where activeStatus = :activeStatus" ).setParameter( "activeStatus", activeStatus ).list();
	}
}

package ras.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import ras.backend.dao.RiskMaster;

/*
 * public interface CityRepository extends JpaRepository<City,String>,JpaSpecificationExecutor<City> { }
 */
public interface IRiskMasterRepository extends JpaRepository<RiskMaster, Long>, JpaSpecificationExecutor<RiskMaster>
{

}

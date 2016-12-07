/**
 * 
 */
package ras.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import ras.backend.dao.RskInitialRisk;

/**
 * @author SUPUN
 */
/*
 * public interface CityRepository extends JpaRepository<City,String>,JpaSpecificationExecutor<City> { }
 */
public interface IRskInitialRiskRepository extends JpaRepository<RskInitialRisk, Long>, JpaSpecificationExecutor<RskInitialRisk>
{

}

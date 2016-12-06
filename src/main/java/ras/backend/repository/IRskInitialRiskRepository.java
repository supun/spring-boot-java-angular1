/**
 * 
 */
package ras.backend.repository;

import org.springframework.data.repository.CrudRepository;

import ras.backend.dao.RskInitialRisk;

/**
 * @author SUPUN
 */
/*
 * public interface CityRepository extends JpaRepository<City,String>,JpaSpecificationExecutor<City> { }
 */
public interface IRskInitialRiskRepository extends CrudRepository<RskInitialRisk, Long>
{

}

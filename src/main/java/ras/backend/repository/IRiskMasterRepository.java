package ras.backend.repository;

import org.springframework.data.repository.CrudRepository;

import ras.backend.dao.RiskMaster;

/*
 * public interface CityRepository extends JpaRepository<City,String>,JpaSpecificationExecutor<City> { }
 */
public interface IRiskMasterRepository extends CrudRepository<RiskMaster, Long>
{

}

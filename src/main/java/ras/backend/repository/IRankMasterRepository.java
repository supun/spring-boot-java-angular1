package ras.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ras.backend.dao.RankMaster;

public interface IRankMasterRepository extends JpaRepository<RankMaster, Long>, JpaSpecificationExecutor<RankMaster>
{
	@Query("SELECT r FROM RankMaster r WHERE r.activeStatus = :activeStatus")
	List<RankMaster> findActiveRankList( @Param("activeStatus") String activeStatus );

}

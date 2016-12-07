package ras.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import ras.backend.dao.RiskControlItem;

public interface IRiskControlItemRepository extends JpaRepository<RiskControlItem, Long>, JpaSpecificationExecutor<RiskControlItem>
{

}

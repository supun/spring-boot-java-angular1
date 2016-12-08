package com.solverminds.klsm.backend.service;

import com.solverminds.klsm.web.domain.Response;
import com.solverminds.klsm.web.domain.RiskContentItem;

public interface IRiskAssessmentService
{
	Response<Long> save( RiskContentItem riskContentItem );
}

package ras.backend.service;

import ras.web.domain.Response;
import ras.web.domain.RiskContentItem;

public interface IRiskAssessmentService
{
	Response<Long> save( RiskContentItem riskContentItem );

}

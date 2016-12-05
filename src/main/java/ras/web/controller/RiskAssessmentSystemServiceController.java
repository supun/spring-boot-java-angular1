
package ras.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ras.backend.service.IRiskAssessmentService;
import ras.web.domain.AbstractContent;
import ras.web.domain.Response;
import ras.web.domain.RiskContentItem;

@RestController
public class RiskAssessmentSystemServiceController implements IRiskAssesmentSystemService
{
	@Autowired
	IRiskAssessmentService service;

	public static final String VERSION = "v1.0.1";

	@ResponseBody
	@Override
	public String getVersion()
	{
		return VERSION;
	}

	@RequestMapping(value = "/riskMaster", method = RequestMethod.POST, headers = { "Content-type=application/json" })
	public Response<Long> insert( @RequestBody RiskContentItem riskContentItem )
	{
		riskContentItem.setStatus( AbstractContent.NEW );
		return service.save( riskContentItem );

	}
}

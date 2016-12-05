package ras.web.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/v1")
public interface IRiskAssesmentSystemService
{

	/**
	 * Check the complete version of the service
	 * 
	 * @return String
	 */
	@RequestMapping(value = "/version", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String getVersion();

}

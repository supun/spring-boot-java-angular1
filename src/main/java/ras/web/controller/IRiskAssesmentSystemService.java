package ras.web.controller;

import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ras.web.domain.MediaFile;
import ras.web.domain.Response;

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

	@RequestMapping(value = "/uploadFiles", method = RequestMethod.POST)
	@ResponseBody
	public Response<List<MediaFile>> uploadFiles( @RequestParam("type") String type, @RequestParam("file") MultipartFile[] files );

}

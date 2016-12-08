package com.solverminds.klsm.web.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.solverminds.klsm.backend.repository.IMessengerDataRepository;
import com.solverminds.klsm.backend.service.IFileManagerService;
import com.solverminds.klsm.backend.service.IRiskAssessmentService;
import com.solverminds.klsm.web.domain.AbstractContent;
import com.solverminds.klsm.web.domain.FileType;
import com.solverminds.klsm.web.domain.MediaFile;
import com.solverminds.klsm.web.domain.Response;
import com.solverminds.klsm.web.domain.RiskContentItem;

@RestController
public class RiskAssessmentSystemServiceController implements IRiskAssesmentSystemService
{
	@Autowired
	IRiskAssessmentService riskAssessmentService;

	@Autowired
	IFileManagerService fileService;

	@Autowired
	IMessengerDataRepository messengerDataRepository;

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
		return riskAssessmentService.save( riskContentItem );
	}

	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	@ResponseBody
	public Response<List<MediaFile>> uploadFiles( @RequestParam("type") String type, @RequestParam("file") MultipartFile[] files )
	{
		Response<List<MediaFile>> response = null;

		if ( files != null && files.length == 0 )
		{
			response = new Response<>();
			response.setStatus( Response.ERROR );
			response.setMessage( "No files found" );
			return response;
		}
		else
		{
			List<MediaFile> mediaFiles = Arrays.stream( files ).map( file -> {
				try
				{
					byte[] bytes = file.getBytes();
					MediaFile mf = new MediaFile();
					mf.setFile( bytes );
					mf.setName( file.getOriginalFilename() );
					mf.setType( FileType.valueOf( type ) );
					return mf;
				}
				catch ( IOException ex )
				{
					// LOGGER.error( ex.getMessage(), ex );
				}

				return null;
			} ).collect( Collectors.toList() );

			response = fileService.saveTempFile( mediaFiles, type );
		}

		return response;
	}
}
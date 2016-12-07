package ras.web.controller;

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

import ras.backend.service.IFileManagerService;
import ras.backend.service.IRiskAssessmentService;
import ras.web.domain.AbstractContent;
import ras.web.domain.FileType;
import ras.web.domain.MediaFile;
import ras.web.domain.Response;
import ras.web.domain.RiskContentItem;

@RestController
public class RiskAssessmentSystemServiceController implements IRiskAssesmentSystemService
{
	@Autowired
	IRiskAssessmentService service;

	@Autowired
	IFileManagerService fileService;
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

	@Override
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

			response = fileService.saveTempFile( mediaFiles, "MI" );
		}

		return response;
	}
}

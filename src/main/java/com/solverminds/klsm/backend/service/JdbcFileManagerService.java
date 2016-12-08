package com.solverminds.klsm.backend.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.solverminds.klsm.backend.repository.IMediaFileRepository;
import com.solverminds.klsm.util.AppUtil;
import com.solverminds.klsm.util.ApplicationConstants;
import com.solverminds.klsm.util.DAOMapper;
import com.solverminds.klsm.web.domain.FileType;
import com.solverminds.klsm.web.domain.MediaFile;
import com.solverminds.klsm.web.domain.Response;

@Service("fileService")
public class JdbcFileManagerService implements IFileManagerService
{
	public static final Logger LOGGER = LoggerFactory.getLogger( JdbcFileManagerService.class );

	@Autowired
	Environment env;
	@Autowired
	IMediaFileRepository mediaFileRepository;

	@Override
	public Response<List<MediaFile>> saveTempFile( List<MediaFile> mediaFiles, String type )
	{
		// TODO Auto-generated method stub
		Response<List<MediaFile>> response = new Response<>();
		List<MediaFile> returnFiles = new ArrayList<>();
		final String imageOptDir = env.getProperty( ApplicationConstants.TEMP_IMAGE_OPT_DIR );
		final String randomFolderName = "images";

		try
		{
			mediaFiles.stream().forEach( mediaFile -> {
				try
				{
					String tempFile = null;
					if ( FileType.MI.toString().equalsIgnoreCase( type ) )
					{

						String fileDir = imageOptDir + File.separator + randomFolderName;
						File dir = new File( fileDir );
						// Create directory if not exist
					if ( !dir.exists() )
					{
						dir.mkdir();
						LOGGER.info( "Temp image directory created {} ", fileDir );
					}

					tempFile = fileDir + File.separator + mediaFile.getName();
				}

				File file = new File( tempFile );
				String mimetype = Files.probeContentType( file.toPath() );
				mediaFile.setFilePath( tempFile );

				boolean isValidFiles = AppUtil.validateFileTypes( mimetype, type );
				if ( isValidFiles )
				{

					// Create temp file record
					com.solverminds.klsm.backend.dao.MediaFile mediaFileDao = DAOMapper.mapDomainFileToDaoFile( mediaFile );
					mediaFileRepository.save( mediaFileDao );
					BufferedOutputStream bos = new BufferedOutputStream( new FileOutputStream( file ) );
					bos.write( mediaFile.getFile() );
					bos.flush();
					bos.close();
					LOGGER.info( "File record added saved to the temp directory : {}", mediaFile.getName() );

					if ( FileType.MI.toString().equalsIgnoreCase( type ) )
					{
						mediaFile.setUrl( String.format( "%s/%s/%s", env.getProperty( ApplicationConstants.TEMP_IMAGE_FILE_URL ), randomFolderName, mediaFile.getName() ) );
					}

					mediaFile.setFile( null );
					returnFiles.add( mediaFile );
					response.setStatus( Response.SUCCESS );
				}
				else
				{

					LOGGER.error( "Incorrect file type" );
					response.setStatus( Response.ERROR );
					response.setMessage( "Incorrect file type" );
				}

			}
			catch ( IOException ex )
			{
				LOGGER.error( ex.getMessage(), ex );
			}
		}	);
		}
		catch ( Exception e )
		{
			// TODO: handle exception
		}
		return response;
	}
}
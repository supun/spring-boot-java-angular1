/**
 * 
 */
package ras.backend.service;

import java.util.List;

import ras.web.domain.MediaFile;
import ras.web.domain.Response;

/**
 * @author supun
 */
public interface IFileManagerService
{
	/* Response<List<MediaFile>> saveTempFile( List<MediaFile> mediaFiles, String type ); */
	Response<List<MediaFile>> saveTempFile( List<MediaFile> mediaFiles, String type );
}

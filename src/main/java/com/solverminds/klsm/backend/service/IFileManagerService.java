package com.solverminds.klsm.backend.service;

import java.util.List;

import com.solverminds.klsm.web.domain.MediaFile;
import com.solverminds.klsm.web.domain.Response;

public interface IFileManagerService
{
	Response<List<MediaFile>> saveTempFile( List<MediaFile> mediaFiles, String type );

}

package ras.util;

import ras.web.domain.FileType;

public class AppUtil
{
	public static boolean validateFileTypes( String mimetype, String fileType )
	{

		boolean result = Boolean.FALSE;

		// for main image(MI) & thumb image (TI) should have mime type as image
		// for video file(V) should have mime type as video
		if ( isImage( mimetype, fileType ) )
		{

			result = Boolean.TRUE;
		}

		return result;
	}

	public static boolean isImage( String mimetype, String fileType )
	{

		if ( ( ( FileType.MI.toString().equalsIgnoreCase( fileType ) ) && mimetype != null && "image".equalsIgnoreCase( mimetype.split( "/" )[0] ) ) )
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}

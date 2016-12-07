package ras.util;

public class ApplicationConstants
{

	private ApplicationConstants()
	{
	}

	// Hibernate configuration properties
	public static final String DATE_FORMAT = "yyyy-MM-dd";
	public static final String DATE_FORMAT_yyyy_MM_dd_HH_mm = "yyyy-MM-dd HH:mm";

	// User levels
	public static final String ROLE_ADMIN = "ROLE_ADMIN";
	public static final String ROLE_USER = "ROLE_USER";

	// image upload const
	public static final String TEMP_IMAGE_OPT_DIR = "output.image.tempDir";
	public static final String TEMP_IMAGE_FILE_URL = "output.image.tempUrl";
	public static final String PROD_IMAGE_OPT_DIR = "output.image.prodDir";
	public static final String PROD_IMAGE_FILE_URL = "output.image.prodUrl";

}

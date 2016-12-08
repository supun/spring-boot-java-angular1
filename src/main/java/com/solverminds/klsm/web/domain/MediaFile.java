package com.solverminds.klsm.web.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class MediaFile
{
	private String url;
	private Long id = new Long( 0 );
	private String name;
	private String filePath;
	private FileType type;
	private byte[] file;

	public String getUrl()
	{
		return url;
	}

	public void setUrl( String url )
	{
		this.url = url;
	}

	public Long getId()
	{
		return id;
	}

	public void setId( Long id )
	{
		this.id = id;
	}

	public String getName()
	{
		return name;
	}

	public void setName( String name )
	{
		this.name = name;
	}

	public String getFilePath()
	{
		return filePath;
	}

	public void setFilePath( String filePath )
	{
		this.filePath = filePath;
	}

	public FileType getType()
	{
		return type;
	}

	public void setType( FileType type )
	{
		this.type = type;
	}

	public byte[] getFile()
	{
		return file;
	}

	public void setFile( byte[] file )
	{
		this.file = file;
	}

}

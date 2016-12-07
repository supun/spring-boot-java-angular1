package ras.backend.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "formsdoc")
public class MediaFile
{
	@Id
	@Column(name = "docid")
	private Long docId = new Long( 0 );

	@Column(name = "filename")
	private String fileName;

	@Column(name = "filetype")
	private String fileType;

	@Column(name = "filesize")
	private Long fileSize;

	@Column(name = "filepath")
	private String filePath;

	@Column(name = "formid")
	private String formId;

	@Column(name = "moduleid")
	private String moduleId;

	public MediaFile()
	{

	}

	public Long getDocId()
	{
		return docId;
	}

	public void setDocId( Long docId )
	{
		this.docId = docId;
	}

	public String getFileName()
	{
		return fileName;
	}

	public void setFileName( String fileName )
	{
		this.fileName = fileName;
	}

	public String getFileType()
	{
		return fileType;
	}

	public void setFileType( String fileType )
	{
		this.fileType = fileType;
	}

	public Long getFileSize()
	{
		return fileSize;
	}

	public void setFileSize( Long fileSize )
	{
		this.fileSize = fileSize;
	}

	public String getFilePath()
	{
		return filePath;
	}

	public void setFilePath( String filePath )
	{
		this.filePath = filePath;
	}

	public String getFormId()
	{
		return formId;
	}

	public void setFormId( String formId )
	{
		this.formId = formId;
	}

	public String getModuleId()
	{
		return moduleId;
	}

	public void setModuleId( String moduleId )
	{
		this.moduleId = moduleId;
	}

}

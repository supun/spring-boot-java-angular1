package com.solverminds.klsm.backend.dao;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "messangertable")
public class MessengerData
{
	@Id
	@Column(name = "referenceno")
	private String referenceNo;

	@Column(name = "id")
	private int id;

	@Column(name = "userid")
	private String userId;

	@Column(name = "messagedescription")
	private String messageDescription;

	@Column(name = "messagedate")
	private Date messageDate;

	@Column(name = "messagefrom")
	private String messageFrom;

	@Column(name = "vesselcode")
	private String vesselCode;

	@Column(name = "moduleid")
	private String moduleId;

	@Column(name = "isRead")
	private String isRead;

	@Column(name = "status")
	private String status;

	public MessengerData()
	{

	}

	public String getReferenceNo()
	{
		return referenceNo;
	}

	public void setReferenceNo( String referenceNo )
	{
		this.referenceNo = referenceNo;
	}

	public int getId()
	{
		return id;
	}

	public void setId( int id )
	{
		this.id = id;
	}

	public String getUserId()
	{
		return userId;
	}

	public void setUserId( String userId )
	{
		this.userId = userId;
	}

	public String getMessageDescription()
	{
		return messageDescription;
	}

	public void setMessageDescription( String messageDescription )
	{
		this.messageDescription = messageDescription;
	}

	public Date getMessageDate()
	{
		return messageDate;
	}

	public void setMessageDate( Date messageDate )
	{
		this.messageDate = messageDate;
	}

	public String getMessageFrom()
	{
		return messageFrom;
	}

	public void setMessageFrom( String messageFrom )
	{
		this.messageFrom = messageFrom;
	}

	public String getVesselCode()
	{
		return vesselCode;
	}

	public void setVesselCode( String vesselCode )
	{
		this.vesselCode = vesselCode;
	}

	public String getModuleId()
	{
		return moduleId;
	}

	public void setModuleId( String moduleId )
	{
		this.moduleId = moduleId;
	}

	public String getIsRead()
	{
		return isRead;
	}

	public void setIsRead( String isRead )
	{
		this.isRead = isRead;
	}

	public String getStatus()
	{
		return status;
	}

	public void setStatus( String status )
	{
		this.status = status;
	}

}

package com.solverminds.klsm.web.domain;

import java.util.Date;

public class MessengerData
{
	private String referenceNo;

	private int id;
	private String userId;
	private String messageDescription;
	private Date messageDate;
	private String messageFrom;
	private String vesselCode;
	private String moduleId;
	private String isRead;
	private String status;

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

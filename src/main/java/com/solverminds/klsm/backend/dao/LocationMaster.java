package com.solverminds.klsm.backend.dao;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "locationmaster")
public class LocationMaster
{
	@Id
	@Column(name = "ID")
	private int id;

	@Column(name = "locationcode")
	private String locationCode;

	@Column(name = "locationdesc")
	private String locationDesc;

	@Column(name = "active_status")
	private String activeStatus;

	@Column(name = "cruser")
	private String createdUser;

	@Column(name = "crdate")
	private Date createdDate;

	@Column(name = "upduser")
	private String updatedUser;

	@Column(name = "upddate")
	private Date updatedDate;

	public int getId()
	{
		return id;
	}

	public void setId( int id )
	{
		this.id = id;
	}

	public String getLocationCode()
	{
		return locationCode;
	}

	public void setLocationCode( String locationCode )
	{
		this.locationCode = locationCode;
	}

	public String getLocationDesc()
	{
		return locationDesc;
	}

	public void setLocationDesc( String locationDesc )
	{
		this.locationDesc = locationDesc;
	}

	public String getActiveStatus()
	{
		return activeStatus;
	}

	public void setActiveStatus( String activeStatus )
	{
		this.activeStatus = activeStatus;
	}

	public String getCreatedUser()
	{
		return createdUser;
	}

	public void setCreatedUser( String createdUser )
	{
		this.createdUser = createdUser;
	}

	public Date getCreatedDate()
	{
		return createdDate;
	}

	public void setCreatedDate( Date createdDate )
	{
		this.createdDate = createdDate;
	}

	public String getUpdatedUser()
	{
		return updatedUser;
	}

	public void setUpdatedUser( String updatedUser )
	{
		this.updatedUser = updatedUser;
	}

	public Date getUpdatedDate()
	{
		return updatedDate;
	}

	public void setUpdatedDate( Date updatedDate )
	{
		this.updatedDate = updatedDate;
	}

	public LocationMaster()
	{

	}
}

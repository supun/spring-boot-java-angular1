/**
 * 
 */
package ras.web.domain;

import java.util.Date;

/**
 * @author SUPUN
 */
public class LocationMaster
{
	private int id;
	private String locationCode;
	private String locationDesc;
	private String activeStatus;
	private String createdUser;
	private Date createdDate;
	private String updatedUser;
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

}

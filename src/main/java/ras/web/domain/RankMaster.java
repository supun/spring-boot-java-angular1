/**
 * 
 */
package ras.web.domain;

import java.util.Date;

/**
 * @author SUPUN
 */
public class RankMaster
{
	private int id;
	private String rankCode;
	private String rankDesc;
	private String cruser;
	private Date crDate;
	private String upUser;
	private String update;
	private String activeStatus;

	public int getId()
	{
		return id;
	}

	public void setId( int id )
	{
		this.id = id;
	}

	public String getRankCode()
	{
		return rankCode;
	}

	public void setRankCode( String rankCode )
	{
		this.rankCode = rankCode;
	}

	public String getCruser()
	{
		return cruser;
	}

	public void setCruser( String cruser )
	{
		this.cruser = cruser;
	}

	public Date getCrDate()
	{
		return crDate;
	}

	public void setCrDate( Date crDate )
	{
		this.crDate = crDate;
	}

	public String getUpUser()
	{
		return upUser;
	}

	public void setUpUser( String upUser )
	{
		this.upUser = upUser;
	}

	public String getUpdate()
	{
		return update;
	}

	public void setUpdate( String update )
	{
		this.update = update;
	}

	public String getActiveStatus()
	{
		return activeStatus;
	}

	public void setActiveStatus( String activeStatus )
	{
		this.activeStatus = activeStatus;
	}

	public String getRankType()
	{
		return rankType;
	}

	public void setRankType( String rankType )
	{
		this.rankType = rankType;
	}

	public String getRankDesc()
	{
		return rankDesc;
	}

	public void setRankDesc( String rankDesc )
	{
		this.rankDesc = rankDesc;
	}

	private String rankType;
}

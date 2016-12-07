package ras.backend.dao;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rankmaster")
public class RankMaster
{
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "rankcode")
	private String rankCode;

	@Column(name = "rankdesc")
	private String rankDesc;

	@Column(name = "cruser")
	private String cruser;

	@Column(name = "crdate")
	private Date crDate;

	@Column(name = "upuser")
	private String upUser;

	@Column(name = "update")
	private String update;

	@Column(name = "active_status")
	private String activeStatus;

	@Column(name = "ranktype")
	private String rankType;

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

	public RankMaster()
	{

	}

}

package ras.backend.dao;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rskriskcontrol")
public class RiskControlItem
{
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "HazardNo")
	private int hazardNo;

	@Column(name = "controltype")
	private String controlType;

	@Column(name = "controlmeasure")
	private String controlMeasure;

	@Column(name = "frequency")
	private int frequency;

	@Column(name = "consequence")
	private int consequence;

	@Column(name = "risklevel")
	private String riskLevel;

	@Column(name = "targetdate")
	private Date targetDate;

	@Column(name = "rskid")
	private String rskId;

	public int getId()
	{
		return id;
	}

	public void setId( int id )
	{
		this.id = id;
	}

	public int getHazardNo()
	{
		return hazardNo;
	}

	public void setHazardNo( int hazardNo )
	{
		this.hazardNo = hazardNo;
	}

	public String getControlType()
	{
		return controlType;
	}

	public void setControlType( String controlType )
	{
		this.controlType = controlType;
	}

	public String getControlMeasure()
	{
		return controlMeasure;
	}

	public void setControlMeasure( String controlMeasure )
	{
		this.controlMeasure = controlMeasure;
	}

	public int getFrequency()
	{
		return frequency;
	}

	public void setFrequency( int frequency )
	{
		this.frequency = frequency;
	}

	public int getConsequence()
	{
		return consequence;
	}

	public void setConsequence( int consequence )
	{
		this.consequence = consequence;
	}

	public String getRiskLevel()
	{
		return riskLevel;
	}

	public void setRiskLevel( String riskLevel )
	{
		this.riskLevel = riskLevel;
	}

	public Date getTargetDate()
	{
		return targetDate;
	}

	public void setTargetDate( Date targetDate )
	{
		this.targetDate = targetDate;
	}

	public String getRskId()
	{
		return rskId;
	}

	public void setRskId( String rskId )
	{
		this.rskId = rskId;
	}

	public RiskControlItem()
	{

	}
}

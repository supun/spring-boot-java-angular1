package ras.web.domain;

import java.util.Date;

public class RiskControlItem
{
	private int id;
	private int hazardNo;
	private String controlType;
	private String controlMeasure;
	private int frequency;
	private int consequence;
	private String riskLevel;
	private Date targetDate;
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

}

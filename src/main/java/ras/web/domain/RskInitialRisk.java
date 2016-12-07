package ras.web.domain;

public class RskInitialRisk
{

	private int hazardno;

	private String activity;

	private String effectOfHazard;

	private String controlMeasure;

	private int frequency;

	private int consequence;

	private String risk;

	private String riskId;

	public int getHazardno()
	{
		return hazardno;
	}

	public void setHazardno( int hazardno )
	{
		this.hazardno = hazardno;
	}

	public String getActivity()
	{
		return activity;
	}

	public void setActivity( String activity )
	{
		this.activity = activity;
	}

	public String getEffectOfHazard()
	{
		return effectOfHazard;
	}

	public void setEffectOfHazard( String effectOfHazard )
	{
		this.effectOfHazard = effectOfHazard;
	}

	public String getControlMeasure()
	{
		return controlMeasure;
	}

	public void setControlMeasure( String controlMeasure )
	{
		this.controlMeasure = controlMeasure;
	}

	public long getFrequency()
	{
		return frequency;
	}

	public void setFrequency( int frequency )
	{
		this.frequency = frequency;
	}

	public long getConsequence()
	{
		return consequence;
	}

	public void setConsequence( int consequence )
	{
		this.consequence = consequence;
	}

	public String getRisk()
	{
		return risk;
	}

	public void setRisk( String risk )
	{
		this.risk = risk;
	}

	public String getRiskId()
	{
		return riskId;
	}

	public void setRiskId( String riskId )
	{
		this.riskId = riskId;
	}

	public RskInitialRisk()
	{

	}

}

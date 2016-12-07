/**
 * 
 */
package ras.backend.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author SUPUN
 */

@Entity
@Table(name = "rskinitialrisk")
public class RskInitialRisk
{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "hazardno")
	private int hazardno;

	private String activity;

	@Column(name = "effectsOfHazard")
	private String effectOfHazard;

	@Column(name = "controlmeasure")
	private String controlMeasure;

	@Column(name = "Frequency")
	private int frequency;

	@Column(name = "Consequence")
	private int consequence;

	@Column(name = "risk")
	private String risk;

	@Column(name = "rskid")
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

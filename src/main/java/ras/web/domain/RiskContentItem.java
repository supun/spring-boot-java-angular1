package ras.web.domain;

import java.util.ArrayList;
import java.util.List;

// domain class for RiskContentItem
public class RiskContentItem extends AbstractContent
{

	private RiskMaster riskMaster;
	private List<RskInitialRisk> initialRskList = new ArrayList<>();
	private List<RiskControlItem> controlRiskList = new ArrayList<>();

	public RiskMaster getRiskMaster()
	{
		return riskMaster;
	}

	public void setRiskMaster( RiskMaster riskMaster )
	{
		this.riskMaster = riskMaster;
	}

	public List<RskInitialRisk> getInitialRskList()
	{
		return initialRskList;
	}

	public void setInitialRskList( List<RskInitialRisk> initialRskList )
	{
		this.initialRskList = initialRskList;
	}

	public List<RiskControlItem> getControlRiskList()
	{
		return controlRiskList;
	}

	public void setControlRiskList( List<RiskControlItem> controlRiskList )
	{
		this.controlRiskList = controlRiskList;
	}

}

package ras.web.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import ras.util.ApplicationConstants;

public class RiskMaster extends AbstractContent
{

	private String rskId;
	private String formNumber;
	private String revNumber;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = ApplicationConstants.DATE_FORMAT)
	private Date revDate;
	private String vesselCode;
	private Date assessmentDate;
	private String category;
	private String task;
	private String locationCode;
	private String permits;
	private String eqpUsed;
	private String personRank;
	private String headRank;
	private int hazardCount;
	private String companyComment;
	private String approverName;
	private String approverRank;
	private Date approvedDate;
	private String reviewerName;
	private int reviewerRank;
	private Date reviewedDate;
	private String submittedBy;
	private Date submitDate;
	private Date crDate;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = ApplicationConstants.DATE_FORMAT)
	private Date jobCommenceDate;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = ApplicationConstants.DATE_FORMAT)
	private Date jobCompletedDate;
	private String isAdequate;
	private String jobComments;
	private String isTemplate;
	private String curRankId;
	private String activeStatus;

	public String getRskId()
	{
		return rskId;
	}

	public void setRskId( String rskId )
	{
		this.rskId = rskId;
	}

	public String getFormNumber()
	{
		return formNumber;
	}

	public void setFormNumber( String formNumber )
	{
		this.formNumber = formNumber;
	}

	public String getRevNumber()
	{
		return revNumber;
	}

	public void setRevNumber( String revNumber )
	{
		this.revNumber = revNumber;
	}

	public Date getRevDate()
	{
		return revDate;
	}

	public void setRevDate( Date revDate )
	{
		this.revDate = revDate;
	}

	public String getVesselCode()
	{
		return vesselCode;
	}

	public void setVesselCode( String vesselCode )
	{
		this.vesselCode = vesselCode;
	}

	public Date getAssessmentDate()
	{
		return assessmentDate;
	}

	public void setAssessmentDate( Date assessmentDate )
	{
		this.assessmentDate = assessmentDate;
	}

	public String getCategory()
	{
		return category;
	}

	public void setCategory( String category )
	{
		this.category = category;
	}

	public String getTask()
	{
		return task;
	}

	public void setTask( String task )
	{
		this.task = task;
	}

	public String getLocationCode()
	{
		return locationCode;
	}

	public void setLocationCode( String locationCode )
	{
		this.locationCode = locationCode;
	}

	public String getPermits()
	{
		return permits;
	}

	public void setPermits( String permits )
	{
		this.permits = permits;
	}

	public String getEqpUsed()
	{
		return eqpUsed;
	}

	public void setEqpUsed( String eqpUsed )
	{
		this.eqpUsed = eqpUsed;
	}

	public String getPersonRank()
	{
		return personRank;
	}

	public void setPersonRank( String personRank )
	{
		this.personRank = personRank;
	}

	public String getHeadRank()
	{
		return headRank;
	}

	public void setHeadRank( String headRank )
	{
		this.headRank = headRank;
	}

	public int getHazardCount()
	{
		return hazardCount;
	}

	public void setHazardCount( int hazardCount )
	{
		this.hazardCount = hazardCount;
	}

	public String getCompanyComment()
	{
		return companyComment;
	}

	public void setCompanyComment( String companyComment )
	{
		this.companyComment = companyComment;
	}

	public String getApproverName()
	{
		return approverName;
	}

	public void setApproverName( String approverName )
	{
		this.approverName = approverName;
	}

	public String getApproverRank()
	{
		return approverRank;
	}

	public void setApproverRank( String approverRank )
	{
		this.approverRank = approverRank;
	}

	public Date getApprovedDate()
	{
		return approvedDate;
	}

	public void setApprovedDate( Date approvedDate )
	{
		this.approvedDate = approvedDate;
	}

	public String getReviewerName()
	{
		return reviewerName;
	}

	public void setReviewerName( String reviewerName )
	{
		this.reviewerName = reviewerName;
	}

	public int getReviewerRank()
	{
		return reviewerRank;
	}

	public void setReviewerRank( int reviewerRank )
	{
		this.reviewerRank = reviewerRank;
	}

	public Date getReviewedDate()
	{
		return reviewedDate;
	}

	public void setReviewedDate( Date reviewedDate )
	{
		this.reviewedDate = reviewedDate;
	}

	public String getSubmittedBy()
	{
		return submittedBy;
	}

	public void setSubmittedBy( String submittedBy )
	{
		this.submittedBy = submittedBy;
	}

	public Date getSubmitDate()
	{
		return submitDate;
	}

	public void setSubmitDate( Date submitDate )
	{
		this.submitDate = submitDate;
	}

	public Date getCrDate()
	{
		return crDate;
	}

	public void setCrDate( Date crDate )
	{
		this.crDate = crDate;
	}

	public Date getJobCommenceDate()
	{
		return jobCommenceDate;
	}

	public void setJobCommenceDate( Date jobCommenceDate )
	{
		this.jobCommenceDate = jobCommenceDate;
	}

	public Date getJobCompletedDate()
	{
		return jobCompletedDate;
	}

	public void setJobCompletedDate( Date jobCompletedDate )
	{
		this.jobCompletedDate = jobCompletedDate;
	}

	public String getIsAdequate()
	{
		return isAdequate;
	}

	public void setIsAdequate( String isAdequate )
	{
		this.isAdequate = isAdequate;
	}

	public String getJobComments()
	{
		return jobComments;
	}

	public void setJobComments( String jobComments )
	{
		this.jobComments = jobComments;
	}

	public String getIsTemplate()
	{
		return isTemplate;
	}

	public void setIsTemplate( String isTemplate )
	{
		this.isTemplate = isTemplate;
	}

	public String getCurRankId()
	{
		return curRankId;
	}

	public void setCurRankId( String curRankId )
	{
		this.curRankId = curRankId;
	}

	public String getActiveStatus()
	{
		return activeStatus;
	}

	public void setActiveStatus( String activeStatus )
	{
		this.activeStatus = activeStatus;
	}
}

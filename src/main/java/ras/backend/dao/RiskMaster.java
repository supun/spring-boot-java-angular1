package ras.backend.dao;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rskmaster")
public class RiskMaster
{
	@Id
	@Column(name = "rskid")
	private String rskId;

	@Column(name = "formnumber")
	private String formNumber;

	@Column(name = "revnumber")
	private String revNumber;

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

	@Column(name = "revdate")
	private Date revDate;

	@Column(name = "vesselcode")
	private String vesselCode;

	@Column(name = "assessmentdate")
	private Date assessmentDate;

	@Column(name = "category")
	private String category;

	@Column(name = "task")
	private String task;

	@Column(name = "locationcode")
	private String locationCode;

	@Column(name = "permits")
	private String permits;

	@Column(name = "eqpused")
	private String eqpUsed;

	@Column(name = "personrank")
	private String personRank;

	@Column(name = "headrank")
	private String headRank;

	@Column(name = "hazardcount")
	private int hazardCount;

	@Column(name = "companycomment")
	private String companyComment;

	@Column(name = "approvername")
	private String approverName;

	@Column(name = "approverrank")
	private String approverRank;

	@Column(name = "approveddate")
	private Date approvedDate;

	@Column(name = "ReviewerName")
	private String reviewerName;

	@Column(name = "ReviewerRank")
	private int reviewerRank;

	@Column(name = "Revieweddate")
	private Date reviewedDate;

	@Column(name = "Submittedby")
	private String submittedBy;

	@Column(name = "submitdate")
	private Date submitDate;

	@Column(name = "crdate")
	private Date crDate;

	@Column(name = "jobcommencedate")
	private Date jobCommenceDate;

	@Column(name = "jobcompleteddate")
	private Date jobCompletedDate;

	@Column(name = "isAdequate")
	private String isAdequate;

	@Column(name = "jobComments")
	private String jobComments;

	@Column(name = "istemplate")
	private String isTemplate;

	@Column(name = "currankid")
	private String curRankId;

	@Column(name = "active_status")
	private String activeStatus;

	public RiskMaster()
	{

	}

}

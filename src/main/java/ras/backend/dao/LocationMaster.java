package ras.backend.dao;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "locationmaster")
public class LocationMaster
{
	@Id
	@Column(name = "ID")
	private int id;

	@Column(name = "locationcode")
	private String locationCode;

	@Column(name = "locationdesc")
	private String locationDesc;

	@Column(name = "active_status")
	private String activeStatus;

	@Column(name = "cruser")
	private String createdUser;

	@Column(name = "crdate")
	private Date createdDate;

	@Column(name = "upduser")
	private String updatedUser;

	@Column(name = "upddate")
	private Date updatedDate;

	public LocationMaster()
	{

	}
}

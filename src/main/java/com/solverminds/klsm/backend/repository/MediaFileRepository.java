package com.solverminds.klsm.backend.repository;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.solverminds.klsm.backend.dao.MediaFile;

@Repository
@Transactional
public class MediaFileRepository implements IMediaFileRepository
{

	@Autowired
	private SessionFactory _sessionFactory;

	private Session getSession()
	{
		return _sessionFactory.getCurrentSession();
	}

	@Override
	public void save( MediaFile mediaFileDao )
	{
		getSession().save( mediaFileDao );

	}

}

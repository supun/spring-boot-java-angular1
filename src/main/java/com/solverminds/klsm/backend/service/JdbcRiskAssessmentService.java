package com.solverminds.klsm.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.solverminds.klsm.backend.repository.IRiskMasterRepository;
import com.solverminds.klsm.backend.repository.IRskInitialRiskRepository;
import com.solverminds.klsm.util.DAOMapper;
import com.solverminds.klsm.web.domain.AbstractContent;
import com.solverminds.klsm.web.domain.Response;
import com.solverminds.klsm.web.domain.RiskContentItem;
import com.solverminds.klsm.web.domain.RiskMaster;
import com.solverminds.klsm.web.domain.RskInitialRisk;

@Service("riskService")
public class JdbcRiskAssessmentService implements IRiskAssessmentService
{
	@Autowired
	IRiskMasterRepository riskMasterRepository;

	@Autowired
	IRskInitialRiskRepository rskInitialRiskRepository;

	@Override
	public Response<Long> save( RiskContentItem riskContentItem )
	{
		Response<Long> response = null;
		switch ( riskContentItem.getStatus() )
		{
			case AbstractContent.NEW:
				response = insert( riskContentItem );
				break;
			/*
			 * case AbstractContent.MODIFIED: response = modify( profile ); break; case AbstractContent.DELETED: response = remove( profile ); break;
			 */
			default:
				break;
		}
		return response;
	}

	private Response<Long> insert( RiskContentItem riskContentItem )
	{
		// TODO Auto-generated method stub
		Response<Long> response = new Response<>();
		try
		{
			if ( riskContentItem.getRiskMaster() != null )
			{
				// Create RiskMAster
				RiskMaster riskMaster = riskContentItem.getRiskMaster();
				com.solverminds.klsm.backend.dao.RiskMaster riskMasterDao = DAOMapper.mapToriskMasterDao( riskMaster );
				riskMasterRepository.save( riskMasterDao );

				com.solverminds.klsm.backend.dao.RskInitialRisk rskIntRskDao = new com.solverminds.klsm.backend.dao.RskInitialRisk();
				if ( !CollectionUtils.isEmpty( riskContentItem.getInitialRskList() ) )
				{
					{
						for ( RskInitialRisk rskIntRsk : riskContentItem.getInitialRskList() )
						{
							rskIntRsk.setRiskId( riskMasterDao.getRskId() );
							rskIntRskDao = DAOMapper.mapToRskIntRskDao( rskIntRsk );
							rskInitialRiskRepository.save( rskIntRskDao );
							// rskInitialRiskRepository.
						}
					}
				}
				response.setStatus( Response.SUCCESS );
				response.setData( new Long( 1 ) );
			}
		}
		catch ( Exception ex )
		{ //
			// LOGGER.error( ex.getMessage(), ex );
			response.setStatus( Response.ERROR );
			response.setMessage( ex.getMessage() );
			response.setData( -1L );
		}
		return response;
	}
}

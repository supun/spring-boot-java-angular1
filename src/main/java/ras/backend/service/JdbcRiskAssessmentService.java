package ras.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import ras.backend.repository.IRiskMasterRepository;
import ras.backend.repository.IRskInitialRiskRepository;
import ras.util.DAOMapper;
import ras.web.domain.AbstractContent;
import ras.web.domain.Response;
import ras.web.domain.RiskContentItem;
import ras.web.domain.RiskMaster;
import ras.web.domain.RskInitialRisk;

@Service("jdbcRASService")
public class JdbcRiskAssessmentService implements IRiskAssessmentService
{

	@Autowired
	IRiskMasterRepository riskMasterRepository;

	@Autowired
	IRskInitialRiskRepository rskInitialRiskRepository;

	@Transactional
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
		Response<Long> response = new Response<>();
		// LOGGER.info( "Inserting a new content profile..." );
		try
		{
			if ( riskContentItem.getRiskMaster() != null )
			{
				// Create RiskMAster
				RiskMaster riskMaster = riskContentItem.getRiskMaster();
				ras.backend.dao.RiskMaster riskMasterDao = DAOMapper.mapToriskMasterDao( riskMaster );
				// save riskMater to db
				riskMasterRepository.save( riskMasterDao );

				if ( !CollectionUtils.isEmpty( riskContentItem.getInitialRskList() ) )
				{
					for ( RskInitialRisk rskIntRsk : riskContentItem.getInitialRskList() )
					{
						ras.backend.dao.RskInitialRisk rskIntRskDao = DAOMapper.mapToRskIntRskDao( rskIntRsk );
						rskInitialRiskRepository.save( rskIntRskDao );
					}
				}
				// Operation success
				response.setStatus( Response.SUCCESS );
				response.setData( Long.parseLong( riskMasterDao.getFormNumber() ) );
			}
			else
			{
				response.setStatus( Response.ERROR );
				response.setMessage( "No RiskMasterFound" );
				response.setData( -1L );
			}

		}
		catch ( Exception ex )
		{
			// LOGGER.error( ex.getMessage(), ex );
			response.setStatus( Response.ERROR );
			response.setMessage( ex.getMessage() );
			response.setData( -1L );
		}

		return response;

	}
}

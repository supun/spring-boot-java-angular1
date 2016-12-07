package ras.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import ras.backend.dao.MediaFile;

public interface IMediaFileRepository extends JpaRepository<MediaFile, Long>, JpaSpecificationExecutor<MediaFile>
{

}

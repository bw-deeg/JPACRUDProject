package com.skilldistillery.streamers.data;

import org.springframework.stereotype.Service;

import com.skilldistillery.streamers.entities.StreamingService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class StreamingServiceDAOImpl implements StreamingServiceDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public StreamingService findById(int id) {
		StreamingService streamer = em.find(StreamingService.class, id);
		return streamer;
	}

}

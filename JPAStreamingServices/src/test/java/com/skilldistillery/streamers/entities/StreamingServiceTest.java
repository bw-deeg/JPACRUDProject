package com.skilldistillery.streamers.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class StreamingServiceTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private StreamingService streamingService;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	    emf = Persistence.createEntityManagerFactory("Streamers");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	    emf.close();
	}
	
	@BeforeEach
	void setUp() throws Exception {
	    em = emf.createEntityManager();
	    streamingService = em.find(StreamingService.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
	    em.close();
	    streamingService = null;
	}

	@Test
	void test_StreamingService_basic_mappings() {
		assertNotNull(streamingService);
		assertEquals("Hulu", streamingService.getName());
	}

}

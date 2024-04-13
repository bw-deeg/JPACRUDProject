package com.skilldistillery.streamers.data;

import com.skilldistillery.streamers.entities.StreamingService;

public interface StreamingServiceDAO {
	StreamingService findById(int id);
}

package edu.swjtuhc.service;

import java.util.List;

import edu.swjtuhc.model.MusicForm;
import edu.swjtuhc.model.Rotation;

public interface HomepageService {
	
	public List<Rotation> getRotations();
	
	public List<MusicForm> gethomepageForm();
}

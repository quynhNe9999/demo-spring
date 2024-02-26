package com.oneempower.auth.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneempower.auth.model.ImageGallery;
import com.oneempower.auth.repository.ImageGalleryRepository;


@Service
public class ImageGalleryServiceImpl implements ImageGalleryService {
	@Autowired
	private ImageGalleryRepository imageGalleryRepository;
	
	public void saveImage(ImageGallery imageGallery) {
		imageGalleryRepository.save(imageGallery);	
	}

	public List<ImageGallery> getAllActiveImages() {
		return imageGalleryRepository.findAll();
	}

	public Optional<ImageGallery> getImageById(Long id) {
		return imageGalleryRepository.findById(id);
	}

	



}

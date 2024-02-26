package com.oneempower.auth.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.oneempower.auth.model.ImageGallery;

@Service
public interface ImageGalleryService {

	void saveImage(ImageGallery imageGallery);

	Optional<ImageGallery> getImageById(Long id);

	List<ImageGallery> getAllActiveImages();




	
}
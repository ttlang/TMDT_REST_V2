package com.spring;

import java.io.File;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.service.GoogleDriveApiService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LessonTest {
	@Autowired
	GoogleDriveApiService apiService;
	@Value("${google.folder_id}")
	String folderId;
	@Test
	public void test() {
		File file = new File("C:\\Users\\ttlang\\Downloads\\Video\\test.MP4");
		System.err.println(	apiService.upLoadFile(file.getName(), file.getAbsolutePath(), folderId, "video/mp4"));
		
	}
	
}

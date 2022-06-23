package first.company.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUpload {
	public String save1(String realPath, MultipartFile files) throws IOException {
		File saveFile = new File(realPath);
		if(!saveFile.exists()) {
			saveFile.mkdir();
		}
		
		String fileName = UUID.randomUUID().toString();
		fileName = fileName + "_" + files.getOriginalFilename();
		
		saveFile = new File(saveFile, fileName);
		files.transferTo(saveFile);

		return fileName;
	}
}

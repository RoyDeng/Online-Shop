package mobile.shop.util;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ZipImage {
	public static  void zip(HttpServletRequest request, HttpServletResponse response, String url) {
		response.setContentType("image/jpeg");
		String path = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		FileInputStream fin;
		
		try {
			fin = new FileInputStream(url);
			Image src = ImageIO.read(fin);
			int h = 60, w = 60;
			BufferedImage tag = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
			tag.getGraphics().drawImage(src, 0, 0, w, h, null);
			ImageIO.write(tag, "JPEG", response.getOutputStream());
		}
		catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
	}
}
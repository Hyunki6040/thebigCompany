package poly.util;

public class GoogleDrive {
	public static String ImgSrcGet(String input) {
		String result = "";
		try {
			int index = input.indexOf("?id=") + 4;
			result = input.substring(index);
		}catch (Exception e) {
			// TODO: handle exception
			result = "fail";
			return result;
		}
		
		return "https://drive.google.com/uc?export=view&id=" + result;
		
	}
}

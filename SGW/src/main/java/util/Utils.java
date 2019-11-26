package util;

import java.text.SimpleDateFormat;

final public class Utils {

	public static String generateCurrentTime() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return  format.format(System.currentTimeMillis());
	}
	
}

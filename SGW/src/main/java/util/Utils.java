package util;

import java.util.Calendar;

final public class Utils {

	public static String generateCurrentTime() {
		Calendar today = Calendar.getInstance();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONDAY) +1;
		int date = today.get(Calendar.DATE);
		int hour = today.get(Calendar.HOUR_OF_DAY);
		int minute = today.get(Calendar.MINUTE);
		int second = today.get(Calendar.SECOND);
		
		StringBuilder builder = new StringBuilder();
		builder.append(year).append("-").append(month).append("-").append(date)
				.append(" ").append(hour).append(":").append(minute).append(":").append(second);
		return builder.toString();
	}
	
}

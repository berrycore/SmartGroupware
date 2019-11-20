package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encrypter {

	public static String sha256(String origin) {
		String rtn = "";
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(origin.getBytes());
			byte byteData[] = md.digest();
			StringBuffer buffer = new StringBuffer();
			for(int i=0; i<byteData.length; i++) {
				buffer.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
			}
			rtn = buffer.toString();
		}catch (NoSuchAlgorithmException e) {
			System.out.println("Encrypt Error - NoSuchAlgorithmException");
			rtn = null;
		}
		return rtn;
	}
}


package io.jans.test;

import org.json.JSONObject;
import org.json.JSONArray;
import io.jans.as.common.service.common.UserService;
import io.jans.service.cdi.util.CdiUtil;
import io.jans.util.StringHelper;
import io.jans.as.common.model.common.User;

import io.jans.as.model.crypto.signature.SignatureAlgorithm;
import io.jans.as.model.crypto.AuthCryptoProvider;

import io.jans.as.server.service.ClientService;
import io.jans.service.custom.CustomScriptService;
import io.jans.model.custom.script.CustomScriptType;
import io.jans.model.custom.script.model.CustomScript;
import io.jans.model.SimpleExtendedCustomProperty;
import io.jans.as.common.model.registration.Client;

import java.util.Map;
import java.net.URI;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.codec.binary.Base64;

import org.apache.http.client.HttpClient;
import io.jans.as.server.model.net.HttpServiceResponse;
import io.jans.as.server.service.net.HttpService2;

import org.apache.http.entity.ContentType;
import org.apache.http.HttpResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserCheck {

	private static final Logger logger = LoggerFactory.getLogger(UserCheck.class);
	private static final UserService userService = CdiUtil.bean(UserService);
	private static final HttpService2 httpService = CdiUtil.bean(HttpService2);
	private static Map<String, String> configAttributes;
	private static AuthCryptoProvider cryptoProvider = null;

	public UserCheck() {
	}

	public static Map<String, String> initCredentialMap(HashMap<String, String> credentialMap) {
		logger.info("Demo-otp. initCredentialMap ");
		credentialMap = new HashMap<String, String>();
		credentialMap.put("username", "");
		
	}

	public static boolean initializeFlow(Map<String, String> config) {
		logger.info("Demo-otp. Initialization. ");
		configAttributes = config;
		if (StringHelper.isEmpty(configAttributes.get("AS_ENDPOINT"))) {
			logger.info("Passwurd. Initialization. Property AS_ENDPOINT is mandatory");
			return false;
		}
		
		
		logger.info("Test. Initialization. Completed");
	}

	

	public static boolean addUser(boolean userExists, String uid) {

		User resultUser = userService.getUserByAttribute("uid", uid);
		logger.info("userExists:" + resultUser);
		if (resultUser == null) {
			logger.info("Passwurd. Adding user: " + uid);
			User user = new User();
			user.setAttribute("uid", uid);
			user = userService.addUser(user, true);
			logger.info("User has been added - " + uid);
		} else {
			return true;
		}

	}

	public static boolean userExists(String uid) {

		logger.info("Demo-otp. Checking userExists username: " + uid);
		if (uid == null || uid.isBlank()) {
			logger.info("Demo-otp. Checking userExists false ");
			return false;
		} else {    
			User resultUser = userService.getUserByAttribute("uid", uid);
			logger.info("userExists:" + resultUser);
			if (resultUser == null)
				return false;
			else
				return true;
		}
	}

	

	public static boolean validateOTP(HashMap<String, String> credential) {
		logger.info("Demo-otp. validateOTP credential: " +credential.toString());
		
		String otp = credential.get("first") + credential.get("second") + credential.get("third") + credential.get("fourth");
		logger.info("Demo-otp. validateOTP: " + otp+ ":"+ "1234".equals(otp));
		if ("1234".equals(otp))

			return true;
		else
			return false;

	}

	

	
}
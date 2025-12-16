package com.idm.fotaagent.restapi.request;

import android.text.TextUtils;
import android.util.Base64;
import com.idm.fotaagent.IDMApplication;
import com.idm.fotaagent.utils.DeviceUtils;
import com.idm.fotaagent.utils.EnablerUtils;
import com.samsung.android.fotaagent.common.feature.SalesCode;
import com.samsung.android.fotaagent.common.log.Log;
import com.samsung.android.fotaagent.common.util.TimeConstants;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public abstract class RequestPropertiesForOsp {
    private static final String KEY_ACCEPT = "Accept";
    private static final String KEY_USER_AGENT = "User-Agent";
    private static final String VALUE_ACCEPT_ALL = "*, */*";
    private static final String VALUE_USER_AGENT = "SAMSUNG-Android";
    protected Map<String, String> requestProperties;

    public static abstract class WithAuth extends RequestPropertiesForOsp {
        private static final String AUTH_KEY_KEY = "oauth_consumer_key";
        private static final String AUTH_KEY_METHOD = "oauth_signature_method";
        private static final String AUTH_KEY_NONCE = "oauth_nonce";
        private static final String AUTH_KEY_SIGNATURE = "oauth_signature";
        private static final String AUTH_KEY_TIMESTAMP = "oauth_timestamp";
        private static final String AUTH_KEY_VERSION = "oauth_version";
        private static final String AUTH_VALUE_OAUTH_SIGNATURE_METHOD = "HmacSHA1";
        private static final String AUTH_VALUE_OAUTH_VERSION = "1.0";
        private static final String KEY_ACCEPT_ENCODING = "Accept-Encoding";
        private static final String KEY_AUTH = "Authorization";
        private static final String KEY_CONNECTION = "Connection";
        private static final String KEY_CONTENT_TYPE = "Content-Type";
        private static final String KEY_CUSTOMER = "X-Sec-Dm-CustomerCode";
        private static final String KEY_MODEL = "X-Sec-Dm-DeviceModel";
        private static final String KEY_OSP_VERSION = "x-osp-version";
        private static final Charset UTF8 = StandardCharsets.UTF_8;
        private static final String VALUE_CONNECTION_KEEP_ALIVE = "keep-alive";
        private static final String VALUE_ENCODING_IDENTITY = "identity";
        private static final String VALUE_OSP_VERSION_V1 = "v1";
        private static final String VALUE_TYPE_TEXT_XML = "text/xml";

        public static class ByCurrentTime extends WithAuth {
            public ByCurrentTime(String str, String str2, String str3) {
                super(KeyValueLoader.get().getTimeKey(), KeyValueLoader.get().getTimeValue(), str, str2, str3, System.currentTimeMillis() / TimeConstants.SECOND_IN_MILLIS);
            }
        }

        public static class ByServerTime extends WithAuth {
            public ByServerTime(String str, String str2, String str3) {
                super(KeyValueLoader.get().getRegiKey(), KeyValueLoader.get().getRegiValue(), str, str2, str3, new TimestampForAuth(IDMApplication.idmGetContext()).getTimestamp());
            }
        }

        private byte[] computeSignature(String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
            Charset charset = UTF8;
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(charset), AUTH_VALUE_OAUTH_SIGNATURE_METHOD);
            Mac mac = Mac.getInstance(AUTH_VALUE_OAUTH_SIGNATURE_METHOD);
            mac.init(secretKeySpec);
            return mac.doFinal(str2.getBytes(charset));
        }

        private String generateAuth(String str, String str2, String str3, String str4, String str5, long j3) {
            HashMap map = new HashMap();
            map.put(AUTH_KEY_KEY, str);
            map.put(AUTH_KEY_NONCE, generateRandomToken(10));
            map.put(AUTH_KEY_METHOD, AUTH_VALUE_OAUTH_SIGNATURE_METHOD);
            map.put(AUTH_KEY_TIMESTAMP, Long.toString(j3));
            map.put(AUTH_KEY_VERSION, "1.0");
            StringBuilder sb = new StringBuilder();
            for (Map.Entry entry : map.entrySet()) {
                sb.append((String) entry.getKey());
                sb.append("=");
                sb.append((String) entry.getValue());
                sb.append(",");
            }
            String strGenerateSignature = generateSignature(str2, str3, str4, str5, map);
            if (strGenerateSignature != null) {
                sb.append("oauth_signature=");
                sb.append(strGenerateSignature);
            }
            return sb.toString();
        }

        private String generateRandomToken(int i5) {
            try {
                byte[] bArr = new byte[i5 / 2];
                SecureRandom.getInstance(UcmAgentProviderImpl.SECURERANDOM_SHA1PRNG).nextBytes(bArr);
                return EnablerUtils.toHexString(bArr);
            } catch (NoSuchAlgorithmException e5) {
                Log.printStackTrace(e5);
                return null;
            }
        }

        private String generateSignature(String str, String str2, String str3, String str4, Map<String, String> map) {
            try {
                return new String(Base64.encode(computeSignature(str, generateSignatureSource(str2, str3, str4, map)), 2), UTF8);
            } catch (IOException | URISyntaxException | InvalidKeyException | NoSuchAlgorithmException e5) {
                Log.printStackTrace(e5);
                return null;
            }
        }

        private String generateSignatureSource(String str, String str2, String str3, Map<String, String> map) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.toUpperCase());
            sb.append("&");
            sb.append(normalizeUrlWithOAuthSpec(str2));
            sb.append("&");
            sb.append(normalizeParameters(map));
            if (str3 != null && str3.length() > 0) {
                sb.append("&");
                sb.append(str3);
            }
            return sb.toString();
        }

        private String normalizeParameters(Map<String, String> map) {
            TreeMap treeMap = new TreeMap(map);
            StringBuilder sb = new StringBuilder();
            for (Map.Entry entry : treeMap.entrySet()) {
                sb.append((String) entry.getKey());
                sb.append("=");
                sb.append(((String) entry.getValue()).replaceAll("\"|&quot;", ""));
                sb.append("&");
            }
            return urlEncodeWithOAuthSpec(sb.substring(0, sb.length() - 1));
        }

        private String normalizeUrlWithOAuthSpec(String str) throws URISyntaxException {
            int iLastIndexOf;
            URI uri = new URI(str);
            String lowerCase = uri.getScheme().toLowerCase();
            String authority = uri.getAuthority();
            if (TextUtils.isEmpty(authority)) {
                throw new URISyntaxException(str, "null or decode error in getAuthority method");
            }
            String lowerCase2 = authority.toLowerCase();
            if ((("http".equals(lowerCase) && uri.getPort() == 80) || ("https".equals(lowerCase) && uri.getPort() == 443)) && (iLastIndexOf = lowerCase2.lastIndexOf(58)) >= 0) {
                lowerCase2 = lowerCase2.substring(0, iLastIndexOf);
            }
            String rawPath = uri.getRawPath();
            if (rawPath == null || rawPath.length() <= 0) {
                rawPath = "/";
            }
            return urlEncodeWithOAuthSpec(lowerCase + "://" + lowerCase2 + rawPath);
        }

        private String urlEncodeWithOAuthSpec(String str) {
            if (TextUtils.isEmpty(str)) {
                Log.W("url is null");
                return "";
            }
            try {
                return URLEncoder.encode(str, UTF8.name()).replace("+", "%20").replace("*", "%2A").replace("%7E", "~").replace("%25", "%");
            } catch (UnsupportedEncodingException e5) {
                Log.printStackTrace(e5);
                return "";
            }
        }

        private WithAuth(String str, String str2, String str3, String str4, String str5, long j3) {
            super();
            String strGenerateAuth = generateAuth(str, str2, str3, str4, str5, j3);
            this.requestProperties.put("User-Agent", RequestPropertiesForOsp.VALUE_USER_AGENT);
            this.requestProperties.put("Accept", RequestPropertiesForOsp.VALUE_ACCEPT_ALL);
            this.requestProperties.put(KEY_ACCEPT_ENCODING, VALUE_ENCODING_IDENTITY);
            this.requestProperties.put("Content-Type", VALUE_TYPE_TEXT_XML);
            this.requestProperties.put("Connection", VALUE_CONNECTION_KEEP_ALIVE);
            this.requestProperties.put(KEY_OSP_VERSION, VALUE_OSP_VERSION_V1);
            if (!TextUtils.isEmpty(strGenerateAuth)) {
                this.requestProperties.put(KEY_AUTH, strGenerateAuth);
            }
            String modelName = DeviceUtils.readModelName();
            if (!TextUtils.isEmpty(modelName)) {
                this.requestProperties.put(KEY_MODEL, modelName);
            }
            if (TextUtils.isEmpty(SalesCode.get().toString())) {
                return;
            }
            this.requestProperties.put(KEY_CUSTOMER, SalesCode.get().toString());
        }
    }

    public static class WithoutAuth extends RequestPropertiesForOsp {
        private static final String KEY_RANGE = "Range";
        private static final String VALUE_RANGE_BYTES = "bytes=";

        public WithoutAuth(long j3) {
            super();
            if (j3 != 0) {
                this.requestProperties.put("Range", VALUE_RANGE_BYTES + j3 + "-");
            }
        }
    }

    public Map<String, String> toMap() {
        return Collections.unmodifiableMap(this.requestProperties);
    }

    private RequestPropertiesForOsp() {
        HashMap map = new HashMap();
        this.requestProperties = map;
        map.put("User-Agent", VALUE_USER_AGENT);
        this.requestProperties.put("Accept", VALUE_ACCEPT_ALL);
    }
}

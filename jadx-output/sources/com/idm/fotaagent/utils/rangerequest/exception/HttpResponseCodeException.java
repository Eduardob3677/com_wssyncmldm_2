package com.idm.fotaagent.utils.rangerequest.exception;

/* loaded from: classes.dex */
public class HttpResponseCodeException extends Exception {
    private final int responseCode;

    public HttpResponseCodeException(int i5, String str) {
        super(str);
        this.responseCode = i5;
    }

    public int getResponseCode() {
        return this.responseCode;
    }
}

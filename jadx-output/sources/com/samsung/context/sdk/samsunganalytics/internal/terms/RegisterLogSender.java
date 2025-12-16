package com.samsung.context.sdk.samsunganalytics.internal.terms;

import K2.a;
import android.app.Application;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.internal.policy.PolicyUtils;
import com.samsung.context.sdk.samsunganalytics.internal.sender.DMA.DMALogSender;
import com.samsung.context.sdk.samsunganalytics.internal.sender.Sender;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import e4.d;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public class RegisterLogSender {
    private static final int API_TYPE_DELETE_APP_DATA = 11;
    private static final String URI_SEND_REGISTRATION_HISTORY = "content://com.sec.android.log.diagmonagent.sa/registrationHistory";
    private final Application application;
    private final Configuration config;
    private final String deviceId;
    private final RegisterType registerType;

    public RegisterLogSender(Application application, Configuration configuration, RegisterType registerType) {
        this.application = application;
        this.config = configuration;
        this.deviceId = configuration.getDeviceId();
        this.registerType = registerType;
    }

    private a buildCallback(final String str, final long j3) {
        return new a() { // from class: com.samsung.context.sdk.samsunganalytics.internal.terms.RegisterLogSender.1
            private void sendRegistrationResult(boolean z4) {
                if (Utils.isDeletionOfSensitiveDataSupported(RegisterLogSender.this.application.getApplicationContext())) {
                    Uri uri = Uri.parse(RegisterLogSender.URI_SEND_REGISTRATION_HISTORY);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("tid", RegisterLogSender.this.config.getTrackingId());
                    contentValues.put("eventTimestamp", Long.valueOf(j3));
                    contentValues.put("sendTimestamp", Long.valueOf(System.currentTimeMillis()));
                    contentValues.put("apiType", (Integer) 11);
                    contentValues.put("result", Boolean.valueOf(z4));
                    try {
                        RegisterLogSender.this.application.getApplicationContext().getContentResolver().insert(uri, contentValues);
                    } catch (Exception e5) {
                        Debug.logwingW("Send registration result failed : " + e5.getMessage());
                    }
                }
            }

            @Override // K2.a
            public void onFail(int i5, String str2, String str3, String str4) {
                RegisterLogSender.this.application.getSharedPreferences(Preferences.TERMS_PREF_NAME, 0).edit().putLong(str, j3).apply();
                sendRegistrationResult(false);
            }

            @Override // K2.a
            public void onSuccess(int i5, String str2, String str3, String str4) {
                RegisterLogSender.this.application.getSharedPreferences(Preferences.TERMS_PREF_NAME, 0).edit().remove(str).apply();
                sendRegistrationResult(true);
            }
        };
    }

    private Intent buildRequestIntent() {
        Intent intent = new Intent();
        intent.setPackage("com.sec.android.diagmonagent");
        intent.setAction(this.registerType.getAction());
        intent.putExtra("tid", this.config.getTrackingId());
        intent.putExtra("agree", false);
        if (this.registerType == RegisterType.DELETE_SENSITIVE_APP_DATA) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            arrayList.add(10);
            arrayList.add(11);
            intent.putIntegerArrayListExtra("event_type", arrayList);
        }
        return intent;
    }

    private void sendPreviousUserAgreementStateToServer() {
        for (Map.Entry<String, ?> entry : this.application.getSharedPreferences(Preferences.TERMS_PREF_NAME, 0).getAll().entrySet()) {
            String key = entry.getKey();
            long jLongValue = ((Long) entry.getValue()).longValue();
            Debug.LogD("Send previous agreement, timestamp : " + jLongValue);
            d.h().g(new RegisterTask(this.config.getTrackingId(), key, jLongValue, buildCallback(key, jLongValue)));
        }
    }

    private void sendUserAgreementStateToClient() {
        if (PolicyUtils.getSenderType() >= 2) {
            Debug.LogD("Send broadcast for " + this.registerType.getAction() + ", tid : " + this.config.getTrackingId());
            this.application.sendBroadcast(buildRequestIntent());
            if (PolicyUtils.getSenderType() == 2) {
                ((DMALogSender) Sender.get(this.application, 2, this.config)).reset();
            }
        }
    }

    private void sendUserAgreementStateToServer() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Debug.LogD("Send agreement, timestamp : " + jCurrentTimeMillis);
        d dVarH = d.h();
        String trackingId = this.config.getTrackingId();
        String str = this.deviceId;
        dVarH.g(new RegisterTask(trackingId, str, jCurrentTimeMillis, buildCallback(str, jCurrentTimeMillis)));
    }

    public void sendLog() {
        sendPreviousUserAgreementStateToServer();
        if (this.registerType != RegisterType.SEND_PREVIOUS_REGISTRATION_INFO) {
            sendUserAgreementStateToClient();
            sendUserAgreementStateToServer();
        }
    }
}

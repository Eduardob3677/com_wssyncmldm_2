package com.idm.fotaagent.restapi.restclient.push.message.fcm;

import android.os.Bundle;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.n;
import com.idm.fotaagent.restapi.registration.RegistrationHelper;
import com.idm.fotaagent.restapi.restclient.push.handler.PushHandlers;
import com.idm.fotaagent.restapi.restclient.push.message.PushMessage;
import com.samsung.android.fotaagent.common.log.Log;
import o.C0713b;

/* loaded from: classes.dex */
public class FcmReceiveService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onDeletedMessages() {
        Log.I("Deleted messages on server");
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(n nVar) {
        Log.I("FCM rawMessage received from : " + nVar.f6254c.getString("from"));
        if (nVar.f6255d == null) {
            C0713b c0713b = new C0713b();
            Bundle bundle = nVar.f6254c;
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        c0713b.put(str, str2);
                    }
                }
            }
            nVar.f6255d = c0713b;
        }
        String str3 = (String) nVar.f6255d.getOrDefault(PushMessage.RAW_MSG, null);
        Log.H("Received : " + str3);
        try {
            PushMessage pushMessage = new PushMessage(str3);
            PushHandlers.of(pushMessage.type()).handle(pushMessage.id(), pushMessage.body(), pushMessage.replyUrl());
        } catch (IllegalArgumentException e5) {
            Log.printStackTrace(e5);
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        Log.H("new token: " + str);
        RegistrationHelper.startPushRegistration(getApplicationContext());
    }
}

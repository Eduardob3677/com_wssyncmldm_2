package com.google.android.gms.internal.p000firebaseauthapi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.i4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0278i4 extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final String f5603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0290k4 f5604b;

    public C0278i4(C0290k4 c0290k4, String str) {
        this.f5604b = c0290k4;
        this.f5603a = str;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            if (((Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS")).f5309d == 0) {
                String str = (String) extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
                C0290k4 c0290k4 = this.f5604b;
                HashMap map = c0290k4.f5633c;
                String str2 = this.f5603a;
                C0284j4 c0284j4 = (C0284j4) map.get(str2);
                if (c0284j4 == null) {
                    C0290k4.f5630d.e("Verification code received with no active retrieval session.", new Object[0]);
                } else {
                    Matcher matcher = Pattern.compile("(?<!\\d)\\d{6}(?!\\d)").matcher(str);
                    String strGroup = matcher.find() ? matcher.group() : null;
                    c0284j4.f5618e = strGroup;
                    if (strGroup == null) {
                        C0290k4.f5630d.e("Unable to extract verification code.", new Object[0]);
                    } else if (!AbstractC0332s.I(c0284j4.f5617d)) {
                        C0290k4.b(c0290k4, str2);
                    }
                }
            }
            context.getApplicationContext().unregisterReceiver(this);
        }
    }
}

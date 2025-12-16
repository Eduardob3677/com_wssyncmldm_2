package com.google.android.gms.internal.p000firebaseauthapi;

import A.d;
import Z0.j;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.h4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0272h4 extends G3 {

    /* renamed from: c, reason: collision with root package name */
    public final String f5599c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0290k4 f5600d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0272h4(C0290k4 c0290k4, G3 g32, String str) {
        super(g32.f5375a, g32.f5376b);
        this.f5600d = c0290k4;
        this.f5599c = str;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.G3
    public final void a(String str) {
        d dVar = C0290k4.f5630d;
        Object[] objArr = new Object[0];
        if (dVar.f10a <= 3) {
            Log.d((String) dVar.f11b, dVar.f("onCodeSent", objArr));
        }
        C0290k4 c0290k4 = this.f5600d;
        HashMap map = c0290k4.f5633c;
        String str2 = this.f5599c;
        C0284j4 c0284j4 = (C0284j4) map.get(str2);
        if (c0284j4 == null) {
            return;
        }
        Iterator it = c0284j4.f5615b.iterator();
        while (it.hasNext()) {
            ((G3) it.next()).a(str);
        }
        c0284j4.f5619g = true;
        c0284j4.f5617d = str;
        if (c0284j4.f5614a <= 0) {
            C0284j4 c0284j42 = (C0284j4) c0290k4.f5633c.get(str2);
            if (c0284j42 == null) {
                return;
            }
            if (!c0284j42.f5621i) {
                c0290k4.g(str2);
            }
            c0290k4.d(str2);
            return;
        }
        if (!c0284j4.f5616c) {
            c0290k4.g(str2);
        } else {
            if (AbstractC0332s.I(c0284j4.f5618e)) {
                return;
            }
            C0290k4.b(c0290k4, str2);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.G3
    public final void b(Status status) {
        d dVar = C0290k4.f5630d;
        String strM = j.M(status.f5309d);
        int length = String.valueOf(strM).length();
        String str = status.f5310e;
        StringBuilder sb = new StringBuilder(length + 39 + String.valueOf(str).length());
        sb.append("SMS verification code request failed: ");
        sb.append(strM);
        sb.append(" ");
        sb.append(str);
        dVar.e(sb.toString(), new Object[0]);
        C0290k4 c0290k4 = this.f5600d;
        HashMap map = c0290k4.f5633c;
        String str2 = this.f5599c;
        C0284j4 c0284j4 = (C0284j4) map.get(str2);
        if (c0284j4 == null) {
            return;
        }
        Iterator it = c0284j4.f5615b.iterator();
        while (it.hasNext()) {
            ((G3) it.next()).b(status);
        }
        c0290k4.d(str2);
    }
}

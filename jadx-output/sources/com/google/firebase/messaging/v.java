package com.google.firebase.messaging;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: b, reason: collision with root package name */
    public static WeakReference f6276b;

    /* renamed from: a, reason: collision with root package name */
    public D3.e f6277a;

    public final synchronized u a() {
        String str;
        u uVar;
        D3.e eVar = this.f6277a;
        synchronized (((ArrayDeque) eVar.f501g)) {
            str = (String) ((ArrayDeque) eVar.f501g).peek();
        }
        Pattern pattern = u.f6272d;
        uVar = null;
        if (!TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split("!", -1);
            if (strArrSplit.length == 2) {
                uVar = new u(strArrSplit[0], strArrSplit[1]);
            }
        }
        return uVar;
    }
}

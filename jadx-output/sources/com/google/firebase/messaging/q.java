package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6261c;

    /* renamed from: d, reason: collision with root package name */
    public /* synthetic */ Object f6262d;

    public /* synthetic */ q(int i5) {
        this.f6261c = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6261c) {
            case 0:
                D3.e eVar = (D3.e) this.f6262d;
                synchronized (((ArrayDeque) eVar.f501g)) {
                    SharedPreferences.Editor editorEdit = ((SharedPreferences) eVar.f499d).edit();
                    String str = (String) eVar.f500e;
                    StringBuilder sb = new StringBuilder();
                    Iterator it = ((ArrayDeque) eVar.f501g).iterator();
                    while (it.hasNext()) {
                        sb.append((String) it.next());
                        sb.append((String) eVar.f);
                    }
                    editorEdit.putString(str, sb.toString()).commit();
                }
                return;
            default:
                C c2 = (C) this.f6262d;
                String action = c2.f6205a.getAction();
                StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 61);
                sb2.append("Service took too long to process intent: ");
                sb2.append(action);
                sb2.append(" App may get closed.");
                Log.w("FirebaseMessaging", sb2.toString());
                c2.f6206b.d(null);
                return;
        }
    }
}

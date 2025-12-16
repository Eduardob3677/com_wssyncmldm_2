package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import J.r0;
import L0.b;
import L0.k;
import Q0.f;
import Q0.j;
import U0.a;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f5291a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i5 = intent.getExtras().getInt("attemptNumber");
        k.b(context);
        r0 r0VarA = b.a();
        r0VarA.o(queryParameter);
        r0VarA.f1008e = a.b(iIntValue);
        if (queryParameter2 != null) {
            r0VarA.f1007d = Base64.decode(queryParameter2, 0);
        }
        j jVar = k.a().f1336d;
        b bVarB = r0VarA.b();
        Q0.a aVar = new Q0.a(0);
        jVar.getClass();
        jVar.f2196e.execute(new f(jVar, bVarB, i5, aVar));
    }
}

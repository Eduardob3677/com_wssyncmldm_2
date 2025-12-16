package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import A.o;
import J.r0;
import L0.b;
import L0.k;
import Q0.f;
import Q0.j;
import U0.a;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;

/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f5292c = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i5 = jobParameters.getExtras().getInt("priority");
        int i6 = jobParameters.getExtras().getInt("attemptNumber");
        k.b(getApplicationContext());
        r0 r0VarA = b.a();
        r0VarA.o(string);
        r0VarA.f1008e = a.b(i5);
        if (string2 != null) {
            r0VarA.f1007d = Base64.decode(string2, 0);
        }
        j jVar = k.a().f1336d;
        b bVarB = r0VarA.b();
        o oVar = new o(this, 2, jobParameters);
        jVar.getClass();
        jVar.f2196e.execute(new f(jVar, bVarB, i6, oVar));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}

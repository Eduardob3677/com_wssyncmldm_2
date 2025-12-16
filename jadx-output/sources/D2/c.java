package D2;

import android.app.admin.SystemUpdatePolicy;
import android.app.job.JobInfo;
import com.idm.fotaagent.enabler.fumo.policy.afw.SystemPolicy;
import com.idm.fotaagent.restapi.registration.context.Registration;
import com.idm.fotaagent.restapi.registration.context.SchedulableRegistration;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f467a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f468b;

    public /* synthetic */ c(int i5, long j3) {
        this.f467a = i5;
        this.f468b = j3;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f467a) {
            case 0:
                return Registration.lambda$scheduleFallback$1(this.f468b, (JobInfo.Builder) obj);
            case 1:
                return SchedulableRegistration.lambda$schedule$0(this.f468b, (JobInfo.Builder) obj);
            default:
                return SystemPolicy.lambda$getInstallationOption$0(this.f468b, (SystemUpdatePolicy) obj);
        }
    }
}

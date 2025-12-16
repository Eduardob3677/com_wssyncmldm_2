package D2;

import com.idm.fotaagent.restapi.registration.context.Registration;
import com.idm.fotaagent.restapi.registration.state.PollingRegistrationState;
import java.io.Serializable;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f464a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Serializable f465b;

    public /* synthetic */ a(int i5, Serializable serializable) {
        this.f464a = i5;
        this.f465b = serializable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i5 = this.f464a;
        Serializable serializable = this.f465b;
        switch (i5) {
            case 0:
                return ((Registration) serializable).lambda$start$0();
            default:
                return ((PollingRegistrationState) serializable).lambda$onEntry$0();
        }
    }
}

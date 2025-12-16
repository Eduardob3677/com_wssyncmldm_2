package Q0;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.idm.fotaagent.utils.RebootChecker;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2168c;

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2168c) {
            case 0:
                int i5 = AlarmManagerSchedulerBroadcastReceiver.f5291a;
                break;
            default:
                RebootChecker.stopTimerIfRunning();
                break;
        }
    }
}

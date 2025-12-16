package A;

import A3.D;
import J.C0048w;
import J.C0050y;
import android.app.Activity;
import android.app.job.JobParameters;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.preference.Preference;
import androidx.profileinstaller.ProfileInstallerInitializer;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.idm.agent.dl.DlAgent;
import com.idm.fotaagent.database.room.data.repository.CampaignQueueRepository;
import com.idm.fotaagent.database.room.data.repository.DmNotificationRepository;
import com.idm.fotaagent.database.room.data.repository.InstallParamRepository;
import com.idm.fotaagent.database.room.data.repository.PostponeRepository;
import com.idm.fotaagent.database.room.debug.repository.PostponeReasonsCallback;
import com.idm.fotaagent.database.room.debug.repository.PostponeReasonsRepository;
import com.idm.fotaagent.database.sqlite.database.mo.push.DmNotificationMessage;
import com.idm.fotaagent.enabler.ui.installconfirm.InstallConfirmContractor;
import com.idm.fotaagent.restapi.restclient.RestClientReceiver;
import com.idm.fotaagent.restapi.restclient.RestClientServiceType;
import com.idm.fotaagent.utils.BinaryStatus;
import com.idm.network.IDMNetworkHttpAdapter;
import com.samsung.android.fotaagent.common.log.Log;
import e.I;
import h0.AbstractC0438i;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import k2.InterfaceC0638a;
import x2.C0906a;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f30c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f31d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f32e;

    public /* synthetic */ o(Object obj, int i5, Object obj2) {
        this.f30c = i5;
        this.f31d = obj;
        this.f32e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException, IOException {
        E2.a aVar;
        boolean z4;
        int i5 = 2;
        View view = null;
        switch (this.f30c) {
            case 0:
                ((b) this.f31d).i((Typeface) this.f32e);
                return;
            case 1:
                D d2 = (D) this.f31d;
                d2.getClass();
                C0050y c0050y = new C0050y((View) d2.f80d);
                Iterator it = ((LinkedList) d2.f81e).iterator();
                while (it.hasNext()) {
                    ((I.a) it.next()).accept(c0050y);
                }
                ((I.a) this.f32e).accept(c0050y);
                int i6 = C0050y.f1022c;
                return;
            case 2:
                int i7 = JobInfoSchedulerService.f5292c;
                ((JobInfoSchedulerService) this.f31d).jobFinished((JobParameters) this.f32e, false);
                return;
            case 3:
                b2.r rVar = (b2.r) this.f31d;
                InterfaceC0638a interfaceC0638a = (InterfaceC0638a) this.f32e;
                if (rVar.f5148b != b2.r.f5146d) {
                    throw new IllegalStateException("provide() can be called only once.");
                }
                synchronized (rVar) {
                    aVar = rVar.f5147a;
                    rVar.f5147a = null;
                    rVar.f5148b = interfaceC0638a;
                }
                aVar.getClass();
                return;
            case 4:
                b2.q qVar = (b2.q) this.f31d;
                InterfaceC0638a interfaceC0638a2 = (InterfaceC0638a) this.f32e;
                synchronized (qVar) {
                    try {
                        if (qVar.f5144b == null) {
                            qVar.f5143a.add(interfaceC0638a2);
                        } else {
                            qVar.f5144b.add(interfaceC0638a2.get());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 5:
                ((DlAgent) this.f31d).lambda$createUrlConnector$0((IDMNetworkHttpAdapter) this.f32e);
                return;
            case 6:
                ((CampaignQueueRepository) this.f31d).lambda$add$0((String) this.f32e);
                return;
            case 7:
                ((DmNotificationRepository) this.f31d).lambda$save$0((DmNotificationMessage) this.f32e);
                return;
            case 8:
                ((InstallParamRepository) this.f31d).lambda$save$0((String) this.f32e);
                return;
            case 9:
                ((PostponeRepository) this.f31d).lambda$save$0((HashMap) this.f32e);
                return;
            case 10:
                ((PostponeReasonsRepository) this.f31d).lambda$add$0((String) this.f32e);
                return;
            case 11:
                ((PostponeReasonsRepository) this.f31d).lambda$getLimitedPostponeReasons$1((PostponeReasonsCallback) this.f32e);
                return;
            case 12:
                ((InstallConfirmContractor.View) this.f31d).setMainBody((String) this.f32e);
                return;
            case 13:
                ((RestClientReceiver) this.f31d).lambda$handle$0((RestClientServiceType) this.f32e);
                return;
            case 14:
                Runnable runnable = (Runnable) this.f32e;
                I i8 = (I) this.f31d;
                i8.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    i8.b();
                }
            case 15:
                ((ProfileInstallerInitializer) this.f31d).getClass();
                AbstractC0438i.a(Looper.getMainLooper()).postDelayed(new com.idm.fotaagent.analytics.diagmon.b((Context) this.f32e, i5), new Random().nextInt(Math.max(1000, 1)) + 5000);
                return;
            case 16:
                int i9 = Toolbar.f3513f0;
                Toolbar toolbar = (Toolbar) this.f31d;
                toolbar.getClass();
                ViewGroup viewGroup = (ViewGroup) this.f32e;
                C0050y c0050y2 = new C0050y(viewGroup);
                if (toolbar.v(toolbar.f)) {
                    c0050y2.a(toolbar.f, C0048w.a(0, toolbar.f.getTop(), 0, viewGroup.getHeight() - toolbar.f.getBottom()));
                    z4 = true;
                } else {
                    z4 = false;
                }
                int childCount = viewGroup.getChildCount();
                int i10 = 0;
                while (true) {
                    if (i10 < childCount) {
                        View childAt = viewGroup.getChildAt(i10);
                        if (childAt instanceof ActionMenuView) {
                            view = childAt;
                        } else {
                            i10++;
                        }
                    }
                }
                if (view != null && view.getVisibility() == 0) {
                    ViewGroup viewGroup2 = (ViewGroup) view;
                    int childCount2 = viewGroup2.getChildCount();
                    int i11 = 0;
                    while (i11 < childCount2) {
                        View childAt2 = viewGroup2.getChildAt(i11);
                        if (childAt2.getVisibility() == 0) {
                            int measuredWidth = childAt2.getMeasuredWidth() / 2;
                            c0050y2.a(childAt2, C0048w.a(i11 == 0 ? measuredWidth : 0, measuredWidth, 0, measuredWidth));
                            z4 = true;
                        }
                        i11++;
                    }
                }
                if (z4) {
                    viewGroup.setTouchDelegate(c0050y2);
                    return;
                }
                return;
            case 17:
                C0906a c0906a = (C0906a) this.f31d;
                c0906a.getClass();
                Preference preference = (Preference) this.f32e;
                D1.b bVar = new D1.b(27, preference);
                Activity activity = c0906a.f9634a;
                activity.runOnUiThread(bVar);
                try {
                    TimeUnit.MILLISECONDS.sleep(500L);
                } catch (InterruptedException e5) {
                    Log.printStackTrace(e5);
                }
                activity.runOnUiThread(new o(preference, 18, BinaryStatus.getBinaryStatus().toString()));
                return;
            default:
                ((Preference) this.f31d).z((String) this.f32e);
                return;
        }
    }
}

package D1;

import A3.D;
import B1.i;
import J.C0044s;
import J.C0045t;
import J.C0048w;
import J.C0050y;
import Q0.k;
import R0.h;
import S1.j;
import android.app.Application;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Trace;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import androidx.activity.l;
import androidx.emoji2.text.o;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.L;
import androidx.preference.Preference;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.messaging.p;
import com.idm.agent.restclient.RestRequestExecutor;
import com.idm.fotaagent.InitExecutor;
import com.idm.fotaagent.abupdate.abenabler.Executor;
import com.idm.fotaagent.abupdate.abenabler.utils.metadata.TimeoutTask;
import com.idm.fotaagent.analytics.samsunganalytics.SALogging;
import com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadDescriptor;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadInProgress;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorFumoStart;
import com.idm.fotaagent.enabler.ui.admin.setting.AdminSettingContractor;
import com.idm.fotaagent.utils.rangerequest.RangeRequest;
import f1.AbstractC0420a;
import i3.x;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import l2.C0644c;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f455c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f456d;

    public /* synthetic */ b(int i5, Object obj) {
        this.f455c = i5;
        this.f456d = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() throws IOException {
        C0044s c0044s;
        D d2;
        switch (this.f455c) {
            case 0:
                ((CarouselLayoutManager) this.f456d).h0();
                return;
            case 1:
                View view = (View) this.f456d;
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                return;
            case 2:
                k kVar = (k) this.f456d;
                kVar.getClass();
                ((h) kVar.f2201d).m(new A2.b(2, kVar));
                return;
            case 3:
                i iVar = (i) this.f456d;
                iVar.f212c = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) iVar.f214e;
                S.d dVar = sideSheetBehavior.f6056i;
                if (dVar != null && dVar.f()) {
                    iVar.a(iVar.f211b);
                    return;
                } else {
                    if (sideSheetBehavior.f6055h == 2) {
                        sideSheetBehavior.s(iVar.f211b);
                        return;
                    }
                    return;
                }
            case 4:
                ((S1.d) this.f456d).t(true);
                return;
            case 5:
                j jVar = (j) this.f456d;
                boolean zIsPopupShowing = jVar.f2485h.isPopupShowing();
                jVar.t(zIsPopupShowing);
                jVar.f2490m = zIsPopupShowing;
                return;
            case 6:
                ((TextInputLayout) this.f456d).f.requestLayout();
                return;
            case 7:
                ((ComponentActivity) this.f456d).invalidateMenu();
                return;
            case 8:
                androidx.activity.k kVar2 = (androidx.activity.k) this.f456d;
                Runnable runnable = kVar2.f3162d;
                if (runnable != null) {
                    runnable.run();
                    kVar2.f3162d = null;
                    return;
                }
                return;
            case 9:
                l.a((l) this.f456d);
                return;
            case 10:
                o oVar = (o) this.f456d;
                synchronized (oVar.f3716d) {
                    try {
                        if (oVar.f3719h == null) {
                            return;
                        }
                        try {
                            G.i iVarD = oVar.d();
                            int i5 = iVarD.f798e;
                            if (i5 == 2) {
                                synchronized (oVar.f3716d) {
                                }
                            }
                            if (i5 != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + i5 + ")");
                            }
                            try {
                                Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                P1.e eVar = oVar.f3715c;
                                Context context = oVar.f3713a;
                                eVar.getClass();
                                Typeface typefaceA = B.h.a(context, new G.i[]{iVarD}, 0);
                                MappedByteBuffer mappedByteBufferV = Z0.j.V(oVar.f3713a, iVarD.f794a);
                                if (mappedByteBufferV == null || typefaceA == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                try {
                                    Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                    p pVar = new p(typefaceA, x.M0(mappedByteBufferV));
                                    Trace.endSection();
                                    synchronized (oVar.f3716d) {
                                        try {
                                            AbstractC0420a abstractC0420a = oVar.f3719h;
                                            if (abstractC0420a != null) {
                                                abstractC0420a.a0(pVar);
                                            }
                                        } finally {
                                        }
                                    }
                                    oVar.b();
                                    return;
                                } finally {
                                    Trace.endSection();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (Throwable th2) {
                            synchronized (oVar.f3716d) {
                                try {
                                    AbstractC0420a abstractC0420a2 = oVar.f3719h;
                                    if (abstractC0420a2 != null) {
                                        abstractC0420a2.Z(th2);
                                    }
                                    oVar.b();
                                    return;
                                } finally {
                                }
                            }
                        }
                    } finally {
                    }
                }
            case 11:
                L l5 = (L) this.f456d;
                d3.i.e("this$0", l5);
                int i6 = l5.f4010d;
                C0157y c0157y = l5.f4013h;
                if (i6 == 0) {
                    l5.f4011e = true;
                    c0157y.e(EnumC0149p.ON_PAUSE);
                }
                if (l5.f4009c == 0 && l5.f4011e) {
                    c0157y.e(EnumC0149p.ON_STOP);
                    l5.f = true;
                    return;
                }
                return;
            case 12:
                ((com.google.android.material.timepicker.e) this.f456d).g();
                return;
            case 13:
                ((InitExecutor) this.f456d).lambda$execute$2();
                return;
            case 14:
                ((Executor.AB.DownloadDescriptor) this.f456d).lambda$checkMemoryAndStartDownloading$0();
                return;
            case 15:
                ((Executor.AB.DownloadProgress) this.f456d).lambda$checkMemoryAndStartDownloading$0();
                return;
            case 16:
                ((Executor.AB.UpdateInProgress) this.f456d).lambda$setNotificationAndStartMergeCallbackListenerService$0();
                return;
            case 17:
                ((TimeoutTask) this.f456d).onTimer();
                return;
            case 18:
                ((PostponeReasonDao) this.f456d).deleteAll();
                return;
            case 19:
                ((IDMFumoExecutorDownloadDescriptor) this.f456d).checkMemoryAndStartDownloading();
                return;
            case 20:
                ((IDMFumoExecutorDownloadInProgress) this.f456d).checkMemoryAndStartDownloading();
                return;
            case 21:
                ((IDMFumoExecutorFumoStart) this.f456d).callDownloadYesNo();
                return;
            case 22:
                ((RangeRequest) this.f456d).watchFileLengthChange();
                return;
            case 23:
                ArrayList arrayList = new ArrayList();
                LinearLayout linearLayout = (LinearLayout) this.f456d;
                int childCount = linearLayout.getChildCount();
                int i7 = 0;
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt = linearLayout.getChildAt(i8);
                    if ((childAt instanceof Button) && childAt.getVisibility() != 8) {
                        arrayList.add(childAt);
                    }
                }
                if (arrayList.size() == 0) {
                    d2 = null;
                } else {
                    int height = linearLayout.getHeight();
                    int width = linearLayout.getWidth();
                    final Rect rect = new Rect(0, 0, width, height);
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(C0050y.b(linearLayout, (View) it.next()));
                    }
                    if (linearLayout.getOrientation() == 0) {
                        final int i9 = 0;
                        c0044s = new Object() { // from class: J.s
                            public final C0048w a(Rect rect2, Rect rect3, Rect rect4) {
                                switch (i9) {
                                    case 0:
                                        int i10 = rect3.left - rect2.right;
                                        int i11 = rect3.top;
                                        Rect rect5 = rect;
                                        return C0048w.a(i10, i11 - rect5.top, Math.max(0, rect4.left - rect3.right) / 2, rect5.bottom - rect3.bottom);
                                    default:
                                        int i12 = rect3.left;
                                        Rect rect6 = rect;
                                        return C0048w.a(i12 - rect6.left, rect3.top - rect2.bottom, rect6.right - rect3.right, Math.max(0, rect4.top - rect3.bottom) / 2);
                                }
                            }
                        };
                    } else {
                        final int i10 = 1;
                        c0044s = new Object() { // from class: J.s
                            public final C0048w a(Rect rect2, Rect rect3, Rect rect4) {
                                switch (i10) {
                                    case 0:
                                        int i102 = rect3.left - rect2.right;
                                        int i11 = rect3.top;
                                        Rect rect5 = rect;
                                        return C0048w.a(i102, i11 - rect5.top, Math.max(0, rect4.left - rect3.right) / 2, rect5.bottom - rect3.bottom);
                                    default:
                                        int i12 = rect3.left;
                                        Rect rect6 = rect;
                                        return C0048w.a(i12 - rect6.left, rect3.top - rect2.bottom, rect6.right - rect3.right, Math.max(0, rect4.top - rect3.bottom) / 2);
                                }
                            }
                        };
                    }
                    Rect rect2 = (Rect) arrayList2.get(arrayList2.size() - 1);
                    arrayList2.add(new Rect(Math.max(0, width - rect2.right) + width, Math.max(0, height - rect2.bottom) + height, width, height));
                    Rect rect3 = new Rect(0, 0, 0, 0);
                    D d5 = new D(linearLayout);
                    while (i7 < arrayList.size()) {
                        Rect rect4 = (Rect) arrayList2.get(i7);
                        int i11 = i7 + 1;
                        final C0048w c0048wA = c0044s.a(rect3, rect4, (Rect) arrayList2.get(i11));
                        final View view2 = (View) arrayList.get(i7);
                        ((LinkedList) d5.f81e).add(new I.a() { // from class: J.u
                            @Override // I.a
                            public final void accept(Object obj) {
                                ((C0050y) obj).a(view2, c0048wA);
                            }
                        });
                        rect3 = rect4;
                        i7 = i11;
                    }
                    d2 = d5;
                }
                if (d2 != null) {
                    View view3 = (View) d2.f80d;
                    Objects.requireNonNull(view3);
                    view3.post(new A.o(d2, 1, new C0045t(0, view3)));
                    return;
                }
                return;
            case 24:
                ((C0644c) this.f456d).a(false);
                return;
            case 25:
                ((RestRequestExecutor) this.f456d).lambda$start$0();
                return;
            case 26:
                SALogging.lambda$setup$0((Application) this.f456d);
                return;
            case 27:
                ((Preference) this.f456d).z("Checking...");
                return;
            default:
                ((AdminSettingContractor.View) this.f456d).refresh();
                return;
        }
    }
}

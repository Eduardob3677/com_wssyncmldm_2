package androidx.picker.widget;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.SeslImmersiveScrollBehavior;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.wssyncmldm.R;
import d0.C0386a;
import k.J1;
import p0.AbstractC0739a;

/* renamed from: androidx.picker.widget.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0161c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4509a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4510b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HandlerC0161c(Object obj, Looper looper, int i5) {
        super(looper);
        this.f4509a = i5;
        this.f4510b = obj;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int size;
        Z0.j[] jVarArr;
        int i5;
        boolean z4;
        int childCount;
        switch (this.f4509a) {
            case 0:
                super.handleMessage(message);
                int i6 = message.what;
                SeslDatePicker seslDatePicker = (SeslDatePicker) this.f4510b;
                if (i6 == 1000) {
                    if (seslDatePicker.f4417p.get(1) > seslDatePicker.getMaxYear() || seslDatePicker.f4417p.get(1) < seslDatePicker.getMinYear()) {
                        return;
                    }
                    String strA = SeslDatePicker.a(seslDatePicker, seslDatePicker.f4417p);
                    seslDatePicker.f4394U.setText(strA);
                    if (!SeslDatePicker.a(seslDatePicker, seslDatePicker.f4417p).equals(SeslDatePicker.a(seslDatePicker, seslDatePicker.f4415m))) {
                        seslDatePicker.f4392R.announceForAccessibility(seslDatePicker.f4394U.getText());
                    }
                    String string = seslDatePicker.f4401d.getString(seslDatePicker.f4422t == 0 ? R.string.sesl_date_picker_switch_to_month_day_year_view_description : R.string.sesl_date_picker_switch_to_calendar_description);
                    seslDatePicker.getClass();
                    seslDatePicker.f4394U.setContentDescription(strA + ", " + string);
                    return;
                }
                if (i6 != 1001) {
                    return;
                }
                if (seslDatePicker.f4422t == 1) {
                    SeslDatePicker.c(seslDatePicker, 0.0f, false);
                    SeslDatePicker.d(seslDatePicker, 0.0f, false);
                    seslDatePicker.g0.setImportantForAccessibility(2);
                    seslDatePicker.f4408h0.setImportantForAccessibility(2);
                    seslDatePicker.f4394U.sendAccessibilityEvent(8);
                    return;
                }
                int iM = o4.a.m();
                if (iM != -1) {
                    AbstractC0739a.p(iM, seslDatePicker.g0);
                    AbstractC0739a.p(iM, seslDatePicker.f4408h0);
                }
                J1.a(seslDatePicker.g0, seslDatePicker.getResources().getString(R.string.sesl_date_picker_decrement_month));
                J1.a(seslDatePicker.f4408h0, seslDatePicker.getResources().getString(R.string.sesl_date_picker_increment_month));
                seslDatePicker.g0.setImportantForAccessibility(1);
                seslDatePicker.f4408h0.setImportantForAccessibility(1);
                int i7 = seslDatePicker.f4386K;
                if (i7 > 0 && i7 < seslDatePicker.f4387L - 1) {
                    SeslDatePicker.c(seslDatePicker, 1.0f, true);
                    SeslDatePicker.d(seslDatePicker, 1.0f, true);
                    return;
                }
                int i8 = seslDatePicker.f4387L;
                if (i8 == 1) {
                    SeslDatePicker.c(seslDatePicker, 0.4f, false);
                    SeslDatePicker.d(seslDatePicker, 0.4f, false);
                    seslDatePicker.l();
                    return;
                } else if (i7 == 0) {
                    SeslDatePicker.c(seslDatePicker, 0.4f, false);
                    SeslDatePicker.d(seslDatePicker, 1.0f, true);
                    seslDatePicker.l();
                    return;
                } else {
                    if (i7 == i8 - 1) {
                        SeslDatePicker.c(seslDatePicker, 1.0f, true);
                        SeslDatePicker.d(seslDatePicker, 0.4f, false);
                        seslDatePicker.l();
                        return;
                    }
                    return;
                }
            case 1:
                if (message.what != 1) {
                    return;
                }
                ((androidx.preference.z) this.f4510b).bindPreferences();
                return;
            case 2:
                if (message.what != 1) {
                    super.handleMessage(message);
                    return;
                }
                C0386a c0386a = (C0386a) this.f4510b;
                do {
                    synchronized (c0386a.f6496b) {
                        try {
                            size = c0386a.f6498d.size();
                            if (size <= 0) {
                                return;
                            }
                            jVarArr = new Z0.j[size];
                            c0386a.f6498d.toArray(jVarArr);
                            c0386a.f6498d.clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } while (size <= 0);
                Z0.j jVar = jVarArr[0];
                throw null;
            case 3:
                if (message.what != 0) {
                    return;
                }
                RecyclerView recyclerView = (RecyclerView) this.f4510b;
                if (recyclerView.f4883o == null) {
                    Log.e("SeslRecyclerView", "No adapter attached; skipping MSG_HOVERSCROLL_MOVE");
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                recyclerView.getClass();
                recyclerView.f4790E1 = (jCurrentTimeMillis - recyclerView.f4793F1) / 1000;
                boolean z5 = recyclerView.f4905x1;
                if (!z5 || jCurrentTimeMillis - recyclerView.f4801I1 >= recyclerView.G1) {
                    if (!recyclerView.f4820Q0 || jCurrentTimeMillis - recyclerView.f4801I1 >= recyclerView.f4798H1) {
                        if (z5 && !recyclerView.f4809L1) {
                            j0.M m5 = recyclerView.m0;
                            if (m5 != null) {
                                recyclerView.f4812M1 = 1;
                                m5.a(recyclerView, 1);
                            }
                            recyclerView.f4809L1 = true;
                        }
                        boolean zE = recyclerView.f4884p.e();
                        boolean zD = recyclerView.f4884p.d();
                        boolean z6 = recyclerView.f4884p.A() == 1;
                        boolean zO = recyclerView.o();
                        boolean zP = recyclerView.p();
                        int iApplyDimension = (int) (TypedValue.applyDimension(1, RecyclerView.f4775s2, recyclerView.f4907y0.getResources().getDisplayMetrics()) + 0.5f);
                        recyclerView.f4785C1 = iApplyDimension;
                        long j3 = recyclerView.f4790E1;
                        if (j3 > 2 && j3 < 4) {
                            recyclerView.f4785C1 = iApplyDimension + ((int) (iApplyDimension * 0.1d));
                        } else if (j3 >= 4 && j3 < 5) {
                            recyclerView.f4785C1 = iApplyDimension + ((int) (iApplyDimension * 0.2d));
                        } else if (j3 >= 5) {
                            recyclerView.f4785C1 = iApplyDimension + ((int) (iApplyDimension * 0.3d));
                        }
                        int i9 = recyclerView.f4804J1;
                        if (i9 == 2) {
                            i5 = (zD && z6) ? recyclerView.f4785C1 : recyclerView.f4785C1 * (-1);
                            if (recyclerView.V1 != i9 && recyclerView.f4832U1) {
                                recyclerView.f4847b1 = null;
                                recyclerView.f4854d1 = 0;
                                recyclerView.f4851c1 = recyclerView.f4838X1;
                                recyclerView.V1 = i9;
                                recyclerView.f4832U1 = true;
                            }
                        } else {
                            i5 = (zD && z6) ? recyclerView.f4785C1 * (-1) : recyclerView.f4785C1;
                            if (recyclerView.V1 != i9 && recyclerView.f4832U1) {
                                recyclerView.f4847b1 = null;
                                recyclerView.f4854d1 = 0;
                                recyclerView.f4851c1 = recyclerView.f4836W1;
                                recyclerView.V1 = i9;
                                recyclerView.f4832U1 = true;
                            }
                        }
                        if (recyclerView.getChildAt(recyclerView.getChildCount() - 1) == null) {
                            return;
                        }
                        if ((i5 < 0 && zP) || (i5 > 0 && zO)) {
                            recyclerView.D0(zD ? 1 : 2, 1);
                            if (((RecyclerView) this.f4510b).A(zD ? z6 ? -i5 : i5 : 0, zE ? i5 : 0, null, null, 1)) {
                                recyclerView.m(i5);
                            } else {
                                int i10 = zD ? z6 ? -i5 : i5 : 0;
                                if (!zE) {
                                    i5 = 0;
                                }
                                recyclerView.t0(i10, i5, null, 0);
                                recyclerView.setScrollState(1);
                            }
                            recyclerView.c2.sendEmptyMessageDelayed(0, 0L);
                            return;
                        }
                        int overScrollMode = recyclerView.getOverScrollMode();
                        if (overScrollMode == 0) {
                            z4 = true;
                        } else {
                            if (overScrollMode == 1 && (childCount = recyclerView.getChildCount()) != 0) {
                                if (childCount == recyclerView.f4883o.a()) {
                                    int top = recyclerView.getChildAt(0).getTop();
                                    Rect rect = recyclerView.f4826S1;
                                    if (top < rect.top || recyclerView.getChildAt(childCount - 1).getBottom() > recyclerView.getHeight() - rect.bottom) {
                                    }
                                }
                                z4 = true;
                            }
                            z4 = false;
                        }
                        if (z4 && !recyclerView.K1) {
                            if (zD) {
                                recyclerView.D();
                                recyclerView.E();
                            } else {
                                recyclerView.F();
                                recyclerView.C();
                            }
                            int i11 = recyclerView.f4804J1;
                            if (i11 == 2) {
                                if (zD) {
                                    recyclerView.f4805K.onAbsorb(IDMCallbackStatusInterface.IDM_RESULTS);
                                    if (!recyclerView.f4810M.isFinished()) {
                                        recyclerView.f4810M.onRelease();
                                    }
                                } else {
                                    recyclerView.f4807L.onAbsorb(IDMCallbackStatusInterface.IDM_RESULTS);
                                    if (!recyclerView.f4813N.isFinished()) {
                                        recyclerView.f4813N.onRelease();
                                    }
                                }
                            } else if (i11 == 1) {
                                if (zD) {
                                    recyclerView.f4810M.onAbsorb(IDMCallbackStatusInterface.IDM_RESULTS);
                                    if (!recyclerView.f4805K.isFinished()) {
                                        recyclerView.f4805K.onRelease();
                                    }
                                } else {
                                    recyclerView.f4813N.onAbsorb(IDMCallbackStatusInterface.IDM_RESULTS);
                                    recyclerView.setupGoToTop(1);
                                    if (!recyclerView.f4807L.isFinished()) {
                                        recyclerView.f4807L.onRelease();
                                    }
                                }
                            }
                            recyclerView.invalidate();
                            recyclerView.K1 = true;
                        }
                        if (recyclerView.f4819Q == 1) {
                            recyclerView.setScrollState(0);
                        }
                        if (z4 || recyclerView.K1) {
                            return;
                        }
                        recyclerView.K1 = true;
                        return;
                    }
                    return;
                }
                return;
            default:
                if (message.what == 100) {
                    ((SeslImmersiveScrollBehavior) this.f4510b).getClass();
                    return;
                }
                return;
        }
    }
}

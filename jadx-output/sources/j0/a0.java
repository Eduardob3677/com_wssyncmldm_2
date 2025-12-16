package j0;

import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.WeakHashMap;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public final class a0 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public int f7394c;

    /* renamed from: d, reason: collision with root package name */
    public int f7395d;

    /* renamed from: e, reason: collision with root package name */
    public OverScroller f7396e;
    public Interpolator f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7397g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7398h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f7399i;

    public a0(RecyclerView recyclerView) {
        this.f7399i = recyclerView;
        F0.c cVar = RecyclerView.f4776u2;
        this.f = cVar;
        this.f7397g = false;
        this.f7398h = false;
        this.f7396e = new OverScroller(recyclerView.getContext(), cVar);
    }

    public final void a(int i5, int i6) {
        RecyclerView recyclerView = this.f7399i;
        recyclerView.setScrollState(2);
        this.f7395d = 0;
        this.f7394c = 0;
        Interpolator interpolator = this.f;
        F0.c cVar = RecyclerView.f4776u2;
        if (interpolator != cVar) {
            this.f = cVar;
            this.f7396e = new OverScroller(recyclerView.getContext(), cVar);
        }
        OverScroller overScroller = this.f7396e;
        boolean z4 = recyclerView.B0;
        float f = recyclerView.f4784C0;
        Class cls = Integer.TYPE;
        Method methodJ = i3.x.J(OverScroller.class, "hidden_fling", cls, cls, Boolean.TYPE, Float.TYPE);
        if (methodJ != null) {
            i3.x.j0(overScroller, methodJ, Integer.valueOf(i5), Integer.valueOf(i6), Boolean.valueOf(z4), Float.valueOf(f));
        } else {
            overScroller.fling(0, 0, i5, i6, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        }
        b();
    }

    public final void b() {
        if (this.f7397g) {
            this.f7398h = true;
            return;
        }
        RecyclerView recyclerView = this.f7399i;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = J.Q.f940a;
        recyclerView.postOnAnimation(this);
    }

    public final void c(int i5, int i6, int i7, Interpolator interpolator) {
        int iMin;
        int iRound;
        RecyclerView recyclerView = this.f7399i;
        if (i7 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i5);
            int iAbs2 = Math.abs(i6);
            boolean z4 = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt(0);
            int iSqrt2 = (int) Math.sqrt((i6 * i6) + (i5 * i5));
            int width = z4 ? recyclerView.getWidth() : recyclerView.getHeight();
            int i8 = width / 2;
            float f = width;
            float f5 = i8;
            float fSin = (((float) Math.sin((Math.min(1.0f, (iSqrt2 * 1.0f) / f) - 0.5f) * 0.47123894f)) * f5) + f5;
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fSin / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z4) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
            }
            iMin = Math.min(iRound, 2000);
        } else {
            iMin = i7;
        }
        Interpolator interpolator2 = interpolator == null ? RecyclerView.f4776u2 : interpolator;
        recyclerView.D0(i5 != 0 ? 2 : 1, 1);
        if (!this.f7399i.A(i5, i6, null, null, 1)) {
            if (this.f != interpolator2) {
                this.f = interpolator2;
                this.f7396e = new OverScroller(recyclerView.getContext(), interpolator2);
            }
            this.f7395d = 0;
            this.f7394c = 0;
            recyclerView.setScrollState(2);
            this.f7396e.startScroll(0, 0, i5, i6, iMin);
            b();
        }
        recyclerView.m(i6);
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i5;
        int i6;
        int i7;
        int i8;
        RecyclerView recyclerView = this.f7399i;
        if (recyclerView.f4884p == null) {
            recyclerView.removeCallbacks(this);
            this.f7396e.abortAnimation();
            AbstractC0739a.s(recyclerView, 0.0f);
            return;
        }
        this.f7398h = false;
        this.f7397g = true;
        recyclerView.u();
        OverScroller overScroller = this.f7396e;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i9 = currX - this.f7394c;
            int i10 = currY - this.f7395d;
            this.f7394c = currX;
            this.f7395d = currY;
            int iT = RecyclerView.t(i9, recyclerView.f4805K, recyclerView.f4810M, recyclerView.getWidth());
            int iT2 = RecyclerView.t(i10, recyclerView.f4807L, recyclerView.f4813N, recyclerView.getHeight());
            int[] iArr = recyclerView.f4808L0;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean zA = recyclerView.A(iT, iT2, iArr, null, 1);
            int[] iArr2 = recyclerView.f4808L0;
            if (zA) {
                iT -= iArr2[0];
                int i11 = iArr2[1];
                iT2 -= i11;
                recyclerView.m(i11);
            } else {
                recyclerView.m(iT2);
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.s(iT, iT2);
            }
            if (recyclerView.f4883o != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                recyclerView.u0(iArr2, iT, iT2);
                int i12 = iArr2[0];
                int i13 = iArr2[1];
                int i14 = iT - i12;
                int i15 = iT2 - i13;
                C0549v c0549v = recyclerView.f4884p.f7343e;
                if (c0549v != null && !c0549v.f7583d && c0549v.f7584e) {
                    int iB = recyclerView.l0.b();
                    if (iB == 0) {
                        c0549v.i();
                    } else if (c0549v.f7580a >= iB) {
                        c0549v.f7580a = iB - 1;
                        c0549v.g(i12, i13);
                    } else {
                        c0549v.g(i12, i13);
                    }
                }
                i8 = i12;
                i5 = i14;
                i6 = i15;
                i7 = i13;
            } else {
                i5 = iT;
                i6 = iT2;
                i7 = 0;
                i8 = 0;
            }
            if (!recyclerView.f4889r.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.f4808L0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            int i16 = i7;
            boolean zW0 = recyclerView.w0(i8, i7, i5, i6, null, 1, iArr3);
            int[] iArr4 = recyclerView.f4898v0;
            if (zW0) {
                iArr4[0] = 0;
                iArr4[1] = 0;
            }
            if (iArr4[0] < 0 || iArr4[1] < 0) {
                iArr4[0] = 0;
                iArr4[1] = 0;
            }
            int i17 = i5 - iArr2[0];
            int i18 = i6 - iArr2[1];
            if (i8 != 0 || i16 != 0) {
                recyclerView.B(i8, i16);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z4 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i17 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i18 != 0));
            C0549v c0549v2 = recyclerView.f4884p.f7343e;
            if ((c0549v2 == null || !c0549v2.f7583d) && z4) {
                if (recyclerView.getOverScrollMode() != 2 && !recyclerView.f4910z0) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i19 = i17 < 0 ? -currVelocity : i17 > 0 ? currVelocity : 0;
                    if (i18 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i18 <= 0) {
                        currVelocity = 0;
                    }
                    if (i19 < 0) {
                        recyclerView.D();
                        if (recyclerView.f4805K.isFinished()) {
                            recyclerView.f4805K.onAbsorb(-i19);
                        }
                    } else if (i19 > 0) {
                        recyclerView.E();
                        if (recyclerView.f4810M.isFinished()) {
                            recyclerView.f4810M.onAbsorb(i19);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.F();
                        if (recyclerView.f4807L.isFinished()) {
                            recyclerView.f4807L.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.C();
                        if (recyclerView.f4813N.isFinished()) {
                            recyclerView.f4813N.onAbsorb(currVelocity);
                        }
                    }
                    if (i19 != 0 || currVelocity != 0) {
                        WeakHashMap weakHashMap = J.Q.f940a;
                        recyclerView.postInvalidateOnAnimation();
                    }
                }
                if (RecyclerView.f4774r2) {
                    b5 b5Var = recyclerView.k0;
                    int[] iArr5 = (int[]) b5Var.f5524d;
                    if (iArr5 != null) {
                        Arrays.fill(iArr5, -1);
                    }
                    b5Var.f5523c = 0;
                }
            } else {
                b();
                RunnableC0543o runnableC0543o = recyclerView.f4872j0;
                if (runnableC0543o != null) {
                    runnableC0543o.a(recyclerView, i8, i16);
                }
            }
            AbstractC0739a.s(recyclerView, Math.abs(overScroller.getCurrVelocity()));
        }
        C0549v c0549v3 = recyclerView.f4884p.f7343e;
        if (c0549v3 != null && c0549v3.f7583d) {
            c0549v3.g(0, 0);
        }
        this.f7397g = false;
        if (!this.f7398h) {
            recyclerView.setScrollState(0);
            recyclerView.F0(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap2 = J.Q.f940a;
            recyclerView.postOnAnimation(this);
        }
    }
}

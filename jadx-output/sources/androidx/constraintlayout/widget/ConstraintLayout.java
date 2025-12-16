package androidx.constraintlayout.widget;

import J.r0;
import Y0.k;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.p000firebaseauthapi.a5;
import com.idm.fotaagent.enabler.interfaces.IDMEnablerInterface;
import e.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;
import r.c;
import s.C0824a;
import s.C0827d;
import s.e;
import s.g;
import s.h;
import s.j;
import t.C0854c;
import t.i;
import t.m;
import u.d;
import u.f;
import u.l;
import u.o;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f3570c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3571d;

    /* renamed from: e, reason: collision with root package name */
    public final e f3572e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f3573g;

    /* renamed from: h, reason: collision with root package name */
    public int f3574h;

    /* renamed from: i, reason: collision with root package name */
    public int f3575i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3576j;

    /* renamed from: k, reason: collision with root package name */
    public int f3577k;

    /* renamed from: l, reason: collision with root package name */
    public l f3578l;

    /* renamed from: m, reason: collision with root package name */
    public v f3579m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public HashMap f3580o;

    /* renamed from: p, reason: collision with root package name */
    public final SparseArray f3581p;

    /* renamed from: q, reason: collision with root package name */
    public final a5 f3582q;

    /* renamed from: r, reason: collision with root package name */
    public int f3583r;

    /* renamed from: s, reason: collision with root package name */
    public int f3584s;

    public ConstraintLayout(Context context, AttributeSet attributeSet) throws XmlPullParserException, IOException, NumberFormatException {
        super(context, attributeSet);
        this.f3570c = new SparseArray();
        this.f3571d = new ArrayList(4);
        this.f3572e = new e();
        this.f = 0;
        this.f3573g = 0;
        this.f3574h = Integer.MAX_VALUE;
        this.f3575i = Integer.MAX_VALUE;
        this.f3576j = true;
        this.f3577k = 257;
        this.f3578l = null;
        this.f3579m = null;
        this.n = -1;
        this.f3580o = new HashMap();
        this.f3581p = new SparseArray();
        this.f3582q = new a5(this, this);
        this.f3583r = 0;
        this.f3584s = 0;
        c(attributeSet, 0);
    }

    public static u.e a() {
        u.e eVar = new u.e(-2, -2);
        eVar.f9183a = -1;
        eVar.f9185b = -1;
        eVar.f9187c = -1.0f;
        eVar.f9189d = -1;
        eVar.f9191e = -1;
        eVar.f = -1;
        eVar.f9194g = -1;
        eVar.f9195h = -1;
        eVar.f9197i = -1;
        eVar.f9199j = -1;
        eVar.f9201k = -1;
        eVar.f9202l = -1;
        eVar.f9203m = -1;
        eVar.n = 0;
        eVar.f9204o = 0.0f;
        eVar.f9205p = -1;
        eVar.f9206q = -1;
        eVar.f9207r = -1;
        eVar.f9208s = -1;
        eVar.f9209t = -1;
        eVar.f9210u = -1;
        eVar.f9211v = -1;
        eVar.f9212w = -1;
        eVar.f9213x = -1;
        eVar.f9214y = -1;
        eVar.f9215z = 0.5f;
        eVar.f9158A = 0.5f;
        eVar.f9159B = null;
        eVar.f9160C = 1;
        eVar.f9161D = -1.0f;
        eVar.E = -1.0f;
        eVar.f9162F = 0;
        eVar.f9163G = 0;
        eVar.f9164H = 0;
        eVar.f9165I = 0;
        eVar.f9166J = 0;
        eVar.f9167K = 0;
        eVar.f9168L = 0;
        eVar.f9169M = 0;
        eVar.f9170N = 1.0f;
        eVar.f9171O = 1.0f;
        eVar.f9172P = -1;
        eVar.f9173Q = -1;
        eVar.f9174R = -1;
        eVar.f9175S = false;
        eVar.f9176T = false;
        eVar.f9177U = null;
        eVar.f9178V = true;
        eVar.f9179W = true;
        eVar.f9180X = false;
        eVar.f9181Y = false;
        eVar.f9182Z = false;
        eVar.f9184a0 = -1;
        eVar.f9186b0 = -1;
        eVar.f9188c0 = -1;
        eVar.f9190d0 = -1;
        eVar.f9192e0 = -1;
        eVar.f9193f0 = -1;
        eVar.g0 = 0.5f;
        eVar.k0 = new C0827d();
        return eVar;
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i5, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i5, layoutParams);
    }

    public final C0827d b(View view) {
        if (view == this) {
            return this.f3572e;
        }
        if (view == null) {
            return null;
        }
        return ((u.e) view.getLayoutParams()).k0;
    }

    public final void c(AttributeSet attributeSet, int i5) throws XmlPullParserException, IOException, NumberFormatException {
        e eVar = this.f3572e;
        eVar.f8917Z = this;
        a5 a5Var = this.f3582q;
        eVar.n0 = a5Var;
        eVar.m0.f = a5Var;
        this.f3570c.put(getId(), this);
        this.f3578l = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.f9311b, i5, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 9) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == 10) {
                    this.f3573g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f3573g);
                } else if (index == 7) {
                    this.f3574h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f3574h);
                } else if (index == 8) {
                    this.f3575i = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f3575i);
                } else if (index == 90) {
                    this.f3577k = typedArrayObtainStyledAttributes.getInt(index, this.f3577k);
                } else if (index == 39) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            d(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f3579m = null;
                        }
                    }
                } else if (index == 18) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        l lVar = new l();
                        this.f3578l = lVar;
                        lVar.e(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f3578l = null;
                    }
                    this.n = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        eVar.f8956w0 = this.f3577k;
        c.f8723p = eVar.Q(512);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof u.e;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(int i5) throws XmlPullParserException, Resources.NotFoundException, IOException, NumberFormatException {
        char c2;
        Context context = getContext();
        v vVar = new v();
        vVar.f6792c = new SparseArray();
        vVar.f6793d = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i5);
        try {
            k kVar = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c2 = 4;
                                break;
                            } else {
                                c2 = 65535;
                                break;
                            }
                        case 80204913:
                            if (name.equals("State")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    if (c2 != 0 && c2 != 1) {
                        if (c2 == 2) {
                            kVar = new k(context, xml);
                            ((SparseArray) vVar.f6792c).put(kVar.f2908c, kVar);
                        } else if (c2 == 3) {
                            f fVar = new f(context, xml);
                            if (kVar != null) {
                                ((ArrayList) kVar.f2910e).add(fVar);
                            }
                        } else if (c2 != 4) {
                            Log.v("ConstraintLayoutStates", "unknown tag " + name);
                        } else {
                            vVar.z(context, xml);
                        }
                    }
                }
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        } catch (XmlPullParserException e6) {
            e6.printStackTrace();
        }
        this.f3579m = vVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) throws NumberFormatException {
        Object tag;
        int size;
        ArrayList arrayList = this.f3571d;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i5 = 0; i5 < size; i5++) {
                ((u.c) arrayList.get(i5)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i7 = Integer.parseInt(strArrSplit[0]);
                        int i8 = Integer.parseInt(strArrSplit[1]);
                        int i9 = Integer.parseInt(strArrSplit[2]);
                        int i10 = (int) ((i7 / 1080.0f) * width);
                        int i11 = (int) ((i8 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i10;
                        float f5 = i11;
                        float f6 = i10 + ((int) ((i9 / 1080.0f) * width));
                        canvas.drawLine(f, f5, f6, f5, paint);
                        float f7 = i11 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f6, f5, f6, f7, paint);
                        canvas.drawLine(f6, f7, f, f7, paint);
                        canvas.drawLine(f, f7, f, f5, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f5, f6, f7, paint);
                        canvas.drawLine(f, f7, f6, f5, paint);
                    }
                }
            }
        }
    }

    public final void e(int i5, int i6, int i7, int i8, boolean z4, boolean z5) {
        a5 a5Var = this.f3582q;
        int i9 = a5Var.f5514d;
        int iResolveSizeAndState = View.resolveSizeAndState(i7 + a5Var.f5513c, i5, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i8 + i9, i6, 0) & 16777215;
        int iMin = Math.min(this.f3574h, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.f3575i, iResolveSizeAndState2);
        if (z4) {
            iMin |= IDMEnablerInterface.FLAG_RECEIVER_INCLUDE_BACKGROUND;
        }
        if (z5) {
            iMin2 |= IDMEnablerInterface.FLAG_RECEIVER_INCLUDE_BACKGROUND;
        }
        setMeasuredDimension(iMin, iMin2);
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x04d8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(e eVar, int i5, int i6, int i7) {
        int iMin;
        int iMax;
        int iMin2;
        int iMax2;
        int i8;
        boolean z4;
        a5 a5Var;
        int i9;
        int i10;
        int i11;
        boolean zN;
        int i12;
        int i13;
        boolean z5;
        boolean z6;
        ArrayList arrayList;
        int i14;
        a5 a5Var2;
        int i15;
        a5 a5Var3;
        boolean z7;
        t.k kVar;
        m mVar;
        int i16;
        int i17;
        int i18;
        boolean zN2;
        int i19;
        int i20;
        int[] iArr;
        int i21;
        int i22;
        boolean z8;
        Iterator it;
        Iterator it2;
        boolean z9;
        e eVar2 = eVar;
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        int mode2 = View.MeasureSpec.getMode(i7);
        int size2 = View.MeasureSpec.getSize(i7);
        int iMax3 = Math.max(0, getPaddingTop());
        int iMax4 = Math.max(0, getPaddingBottom());
        int i23 = iMax3 + iMax4;
        int paddingWidth = getPaddingWidth();
        a5 a5Var4 = this.f3582q;
        a5Var4.f5511a = iMax3;
        a5Var4.f5512b = iMax4;
        a5Var4.f5513c = paddingWidth;
        a5Var4.f5514d = i23;
        a5Var4.f5515e = i6;
        a5Var4.f = i7;
        int iMax5 = Math.max(0, getPaddingStart());
        int iMax6 = Math.max(0, getPaddingEnd());
        int i24 = 1;
        if (iMax5 <= 0 && iMax6 <= 0) {
            iMax5 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            iMax5 = iMax6;
        }
        int i25 = size - paddingWidth;
        int i26 = size2 - i23;
        int i27 = a5Var4.f5514d;
        int i28 = a5Var4.f5513c;
        int childCount = getChildCount();
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode != 1073741824) {
                    iMin = 0;
                } else {
                    iMin = Math.min(this.f3574h - i28, i25);
                    i24 = 1;
                }
            } else if (childCount == 0) {
                iMax = Math.max(0, this.f);
                iMin = iMax;
                i24 = 2;
            } else {
                iMin = 0;
                i24 = 2;
            }
        } else if (childCount == 0) {
            iMax = Math.max(0, this.f);
            iMin = iMax;
            i24 = 2;
        } else {
            iMin = i25;
            i24 = 2;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 0) {
                iMin2 = mode2 != 1073741824 ? 0 : Math.min(this.f3575i - i27, i26);
                i8 = 1;
            } else if (childCount == 0) {
                iMax2 = Math.max(0, this.f3573g);
                iMin2 = iMax2;
                i8 = 2;
            } else {
                iMin2 = 0;
                i8 = 2;
            }
        } else if (childCount == 0) {
            iMax2 = Math.max(0, this.f3573g);
            iMin2 = iMax2;
            i8 = 2;
        } else {
            iMin2 = i26;
            i8 = 2;
        }
        int iN = eVar.n();
        t.e eVar3 = eVar2.m0;
        int i29 = iMin;
        if (i29 != iN || iMin2 != eVar.k()) {
            eVar3.f9090c = true;
        }
        eVar2.f8910S = 0;
        eVar2.f8911T = 0;
        int i30 = this.f3574h - i28;
        int[] iArr2 = eVar2.f8947w;
        iArr2[0] = i30;
        iArr2[1] = this.f3575i - i27;
        eVar2.f8913V = 0;
        eVar2.f8914W = 0;
        eVar2.F(i24);
        eVar2.H(i29);
        eVar2.G(i8);
        eVar2.E(iMin2);
        int i31 = this.f - i28;
        if (i31 < 0) {
            eVar2.f8913V = 0;
        } else {
            eVar2.f8913V = i31;
        }
        int i32 = this.f3573g - i27;
        if (i32 < 0) {
            eVar2.f8914W = 0;
        } else {
            eVar2.f8914W = i32;
        }
        eVar2.q0 = iMax5;
        eVar2.r0 = iMax3;
        r0 r0Var = eVar2.l0;
        r0Var.getClass();
        a5 a5Var5 = eVar2.n0;
        int size3 = eVar2.k0.size();
        int iN2 = eVar.n();
        int iK = eVar.k();
        boolean zC = j.c(i5, 128);
        boolean z10 = zC || j.c(i5, 64);
        if (z10) {
            for (int i33 = 0; i33 < size3; i33++) {
                C0827d c0827d = (C0827d) eVar2.k0.get(i33);
                int[] iArr3 = c0827d.f8935j0;
                boolean z11 = (iArr3[0] == 3) && (iArr3[1] == 3) && c0827d.f8908Q > 0.0f;
                if ((c0827d.t() && z11) || ((c0827d.u() && z11) || (c0827d instanceof g) || c0827d.t() || c0827d.u())) {
                    z10 = false;
                    break;
                }
            }
        }
        boolean z12 = z10 & ((mode == 1073741824 && mode2 == 1073741824) || zC);
        if (z12) {
            int iMin3 = Math.min(iArr2[0], i25);
            int iMin4 = Math.min(iArr2[1], i26);
            if (mode == 1073741824 && eVar.n() != iMin3) {
                eVar2.H(iMin3);
                eVar2.m0.f9089b = true;
            }
            if (mode2 == 1073741824 && eVar.k() != iMin4) {
                eVar2.E(iMin4);
                eVar2.m0.f9089b = true;
            }
            if (mode == 1073741824 && mode2 == 1073741824) {
                boolean z13 = zC & true;
                boolean z14 = eVar3.f9089b;
                e eVar4 = eVar3.f9088a;
                if (z14 || eVar3.f9090c) {
                    Iterator it3 = eVar4.k0.iterator();
                    while (it3.hasNext()) {
                        C0827d c0827d2 = (C0827d) it3.next();
                        c0827d2.h();
                        c0827d2.f8918a = false;
                        c0827d2.f8924d.n();
                        c0827d2.f8926e.m();
                    }
                    i19 = 0;
                    eVar4.h();
                    eVar4.f8918a = false;
                    eVar4.f8924d.n();
                    eVar4.f8926e.m();
                    eVar3.f9090c = false;
                } else {
                    i19 = 0;
                }
                eVar3.b(eVar3.f9091d);
                eVar4.f8910S = i19;
                eVar4.f8911T = i19;
                int iJ = eVar4.j(i19);
                int iJ2 = eVar4.j(1);
                if (eVar3.f9089b) {
                    eVar3.c();
                }
                int iO = eVar4.o();
                int iP = eVar4.p();
                z4 = z12;
                eVar4.f8924d.f9124h.d(iO);
                eVar4.f8926e.f9124h.d(iP);
                eVar3.g();
                ArrayList arrayList2 = eVar3.f9092e;
                a5Var = a5Var5;
                if (iJ == 2 || iJ2 == 2) {
                    if (z13) {
                        Iterator it4 = arrayList2.iterator();
                        while (true) {
                            if (it4.hasNext()) {
                                if (!((t.o) it4.next()).k()) {
                                    z13 = false;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    if (z13 && iJ == 2) {
                        eVar4.F(1);
                        i9 = iN2;
                        eVar4.H(eVar3.d(eVar4, 0));
                        eVar4.f8924d.f9122e.d(eVar4.n());
                    } else {
                        i9 = iN2;
                    }
                    if (z13 && iJ2 == 2) {
                        i20 = 1;
                        eVar4.G(1);
                        eVar4.E(eVar3.d(eVar4, 1));
                        eVar4.f8926e.f9122e.d(eVar4.k());
                    }
                    iArr = eVar4.f8935j0;
                    i10 = iK;
                    i21 = iArr[0];
                    if (i21 != i20 || i21 == 4) {
                        int iN3 = eVar4.n() + iO;
                        eVar4.f8924d.f9125i.d(iN3);
                        eVar4.f8924d.f9122e.d(iN3 - iO);
                        eVar3.g();
                        i22 = iArr[1];
                        if (i22 != 1 || i22 == 4) {
                            int iK2 = eVar4.k() + iP;
                            eVar4.f8926e.f9125i.d(iK2);
                            eVar4.f8926e.f9122e.d(iK2 - iP);
                        }
                        eVar3.g();
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                        t.o oVar = (t.o) it.next();
                        if (oVar.f9119b != eVar4 || oVar.f9123g) {
                            oVar.e();
                        }
                    }
                    it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        t.o oVar2 = (t.o) it2.next();
                        if (z8 || oVar2.f9119b != eVar4) {
                            if (!oVar2.f9124h.f9103j || ((!oVar2.f9125i.f9103j && !(oVar2 instanceof i)) || (!oVar2.f9122e.f9103j && !(oVar2 instanceof C0854c) && !(oVar2 instanceof i)))) {
                                z9 = false;
                                break;
                            }
                        }
                    }
                    z9 = true;
                    eVar4.F(iJ);
                    eVar4.G(iJ2);
                    zN = z9;
                    i17 = 1073741824;
                    i11 = 2;
                } else {
                    i9 = iN2;
                }
                i20 = 1;
                iArr = eVar4.f8935j0;
                i10 = iK;
                i21 = iArr[0];
                if (i21 != i20) {
                    int iN32 = eVar4.n() + iO;
                    eVar4.f8924d.f9125i.d(iN32);
                    eVar4.f8924d.f9122e.d(iN32 - iO);
                    eVar3.g();
                    i22 = iArr[1];
                    if (i22 != 1) {
                        int iK22 = eVar4.k() + iP;
                        eVar4.f8926e.f9125i.d(iK22);
                        eVar4.f8926e.f9122e.d(iK22 - iP);
                        eVar3.g();
                        z8 = true;
                        it = arrayList2.iterator();
                        while (it.hasNext()) {
                        }
                        it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                        }
                        z9 = true;
                        eVar4.F(iJ);
                        eVar4.G(iJ2);
                        zN = z9;
                        i17 = 1073741824;
                        i11 = 2;
                    }
                }
            } else {
                z4 = z12;
                a5Var = a5Var5;
                i9 = iN2;
                i10 = iK;
                boolean z15 = eVar3.f9089b;
                e eVar5 = eVar3.f9088a;
                if (z15) {
                    Iterator it5 = eVar5.k0.iterator();
                    while (it5.hasNext()) {
                        C0827d c0827d3 = (C0827d) it5.next();
                        c0827d3.h();
                        c0827d3.f8918a = false;
                        t.k kVar2 = c0827d3.f8924d;
                        kVar2.f9122e.f9103j = false;
                        kVar2.f9123g = false;
                        kVar2.n();
                        m mVar2 = c0827d3.f8926e;
                        mVar2.f9122e.f9103j = false;
                        mVar2.f9123g = false;
                        mVar2.m();
                    }
                    i16 = 0;
                    eVar5.h();
                    eVar5.f8918a = false;
                    t.k kVar3 = eVar5.f8924d;
                    kVar3.f9122e.f9103j = false;
                    kVar3.f9123g = false;
                    kVar3.n();
                    m mVar3 = eVar5.f8926e;
                    mVar3.f9122e.f9103j = false;
                    mVar3.f9123g = false;
                    mVar3.m();
                    eVar3.c();
                } else {
                    i16 = 0;
                }
                eVar3.b(eVar3.f9091d);
                eVar5.f8910S = i16;
                eVar5.f8911T = i16;
                eVar5.f8924d.f9124h.d(i16);
                eVar5.f8926e.f9124h.d(i16);
                i17 = 1073741824;
                if (mode == 1073741824) {
                    i18 = 1;
                    zN2 = eVar2.N(i16, zC) & true;
                    i11 = 1;
                } else {
                    i18 = 1;
                    zN2 = true;
                    i11 = 0;
                }
                if (mode2 == 1073741824) {
                    zN = zN2 & eVar2.N(i18, zC);
                    i11++;
                } else {
                    zN = zN2;
                }
            }
            if (zN) {
                eVar2.I(mode == i17, mode2 == i17);
            }
        } else {
            z4 = z12;
            a5Var = a5Var5;
            i9 = iN2;
            i10 = iK;
            i11 = 0;
            zN = false;
        }
        if (zN && i11 == 2) {
            return;
        }
        int i34 = eVar2.f8956w0;
        if (size3 > 0) {
            int size4 = eVar2.k0.size();
            boolean zQ = eVar2.Q(64);
            a5 a5Var6 = eVar2.n0;
            for (int i35 = 0; i35 < size4; i35++) {
                C0827d c0827d4 = (C0827d) eVar2.k0.get(i35);
                if (!(c0827d4 instanceof h) && !(c0827d4 instanceof C0824a) && !c0827d4.f8950z && (!zQ || (kVar = c0827d4.f8924d) == null || (mVar = c0827d4.f8926e) == null || !kVar.f9122e.f9103j || !mVar.f9122e.f9103j)) {
                    int iJ3 = c0827d4.j(0);
                    int iJ4 = c0827d4.j(1);
                    boolean z16 = iJ3 == 3 && c0827d4.f8937l != 1 && iJ4 == 3 && c0827d4.f8938m != 1;
                    if (!z16 && eVar2.Q(1) && !(c0827d4 instanceof g)) {
                        if (iJ3 == 3 && c0827d4.f8937l == 0 && iJ4 != 3 && !c0827d4.t()) {
                            z16 = true;
                        }
                        if (iJ4 == 3 && c0827d4.f8938m == 0 && iJ3 != 3 && !c0827d4.t()) {
                            z16 = true;
                        }
                        if (iJ3 == 3 || iJ4 == 3) {
                            if (c0827d4.f8908Q > 0.0f) {
                                z16 = true;
                            }
                        }
                        if (z16) {
                            r0Var.l(a5Var6, c0827d4, 0);
                        }
                    }
                    if (z16) {
                    }
                }
            }
            ConstraintLayout constraintLayout = (ConstraintLayout) a5Var6.f5516g;
            int childCount2 = constraintLayout.getChildCount();
            for (int i36 = 0; i36 < childCount2; i36++) {
                constraintLayout.getChildAt(i36);
            }
            ArrayList arrayList3 = constraintLayout.f3571d;
            int size5 = arrayList3.size();
            if (size5 > 0) {
                for (int i37 = 0; i37 < size5; i37++) {
                    ((u.c) arrayList3.get(i37)).getClass();
                }
            }
        }
        r0Var.q(eVar2);
        ArrayList arrayList4 = (ArrayList) r0Var.f1006c;
        int size6 = arrayList4.size();
        int i38 = i9;
        if (size3 > 0) {
            i12 = i10;
            r0Var.p(eVar2, i38, i12);
        } else {
            i12 = i10;
        }
        if (size6 > 0) {
            int[] iArr4 = eVar2.f8935j0;
            boolean z17 = iArr4[0] == 2;
            boolean z18 = iArr4[1] == 2;
            int iN4 = eVar.n();
            e eVar6 = (e) r0Var.f1008e;
            int iMax7 = Math.max(iN4, eVar6.f8913V);
            int iMax8 = Math.max(eVar.k(), eVar6.f8914W);
            int i39 = 0;
            boolean z19 = false;
            while (i39 < size6) {
                C0827d c0827d5 = (C0827d) arrayList4.get(i39);
                if (c0827d5 instanceof g) {
                    int iN5 = c0827d5.n();
                    int iK3 = c0827d5.k();
                    i15 = i34;
                    a5Var3 = a5Var;
                    boolean zL = z19 | r0Var.l(a5Var3, c0827d5, 1);
                    int iN6 = c0827d5.n();
                    int iK4 = c0827d5.k();
                    if (iN6 != iN5) {
                        c0827d5.H(iN6);
                        if (z17 && c0827d5.o() + c0827d5.f8906O > iMax7) {
                            iMax7 = Math.max(iMax7, c0827d5.i(4).e() + c0827d5.o() + c0827d5.f8906O);
                        }
                        z7 = true;
                    } else {
                        z7 = zL;
                    }
                    if (iK4 != iK3) {
                        c0827d5.E(iK4);
                        if (z18 && c0827d5.p() + c0827d5.f8907P > iMax8) {
                            iMax8 = Math.max(iMax8, c0827d5.i(5).e() + c0827d5.p() + c0827d5.f8907P);
                        }
                        z7 = true;
                    }
                    z19 = ((g) c0827d5).s0 | z7;
                } else {
                    i15 = i34;
                    a5Var3 = a5Var;
                }
                i39++;
                a5Var = a5Var3;
                i34 = i15;
            }
            int i40 = i34;
            a5 a5Var7 = a5Var;
            int i41 = 0;
            int i42 = 2;
            while (i41 < i42) {
                int i43 = 0;
                while (i43 < size6) {
                    C0827d c0827d6 = (C0827d) arrayList4.get(i43);
                    if (((c0827d6 instanceof s.i) && !(c0827d6 instanceof g)) || (c0827d6 instanceof h) || c0827d6.f8919a0 == 8 || ((z4 && c0827d6.f8924d.f9122e.f9103j && c0827d6.f8926e.f9122e.f9103j) || (c0827d6 instanceof g))) {
                        a5Var2 = a5Var7;
                        arrayList = arrayList4;
                        i14 = size6;
                    } else {
                        int iN7 = c0827d6.n();
                        int iK5 = c0827d6.k();
                        arrayList = arrayList4;
                        int i44 = c0827d6.f8912U;
                        i14 = size6;
                        boolean zL2 = r0Var.l(a5Var7, c0827d6, i41 == 1 ? 2 : 1) | z19;
                        int iN8 = c0827d6.n();
                        a5Var2 = a5Var7;
                        int iK6 = c0827d6.k();
                        if (iN8 != iN7) {
                            c0827d6.H(iN8);
                            if (z17 && c0827d6.o() + c0827d6.f8906O > iMax7) {
                                iMax7 = Math.max(iMax7, c0827d6.i(4).e() + c0827d6.o() + c0827d6.f8906O);
                            }
                            zL2 = true;
                        }
                        if (iK6 != iK5) {
                            c0827d6.E(iK6);
                            if (z18 && c0827d6.p() + c0827d6.f8907P > iMax8) {
                                iMax8 = Math.max(iMax8, c0827d6.i(5).e() + c0827d6.p() + c0827d6.f8907P);
                            }
                            zL2 = true;
                        }
                        z19 = (!c0827d6.f8949y || i44 == c0827d6.f8912U) ? zL2 : true;
                    }
                    i43++;
                    arrayList4 = arrayList;
                    size6 = i14;
                    a5Var7 = a5Var2;
                }
                a5 a5Var8 = a5Var7;
                ArrayList arrayList5 = arrayList4;
                int i45 = size6;
                if (!z19) {
                    break;
                }
                r0Var.p(eVar, i38, i12);
                i41++;
                a5Var7 = a5Var8;
                size6 = i45;
                z19 = false;
                i42 = 2;
                arrayList4 = arrayList5;
            }
            eVar2 = eVar;
            if (z19) {
                r0Var.p(eVar2, i38, i12);
                if (eVar.n() < iMax7) {
                    eVar2.H(iMax7);
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (eVar.k() < iMax8) {
                    eVar2.E(iMax8);
                    z6 = true;
                } else {
                    z6 = z5;
                }
                if (z6) {
                    r0Var.p(eVar2, i38, i12);
                }
            }
            i13 = i40;
        } else {
            i13 = i34;
        }
        eVar2.f8956w0 = i13;
        c.f8723p = eVar2.Q(512);
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f3576j = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return a();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) throws NumberFormatException {
        int i5;
        Context context = getContext();
        u.e eVar = new u.e(context, attributeSet);
        eVar.f9183a = -1;
        eVar.f9185b = -1;
        eVar.f9187c = -1.0f;
        eVar.f9189d = -1;
        eVar.f9191e = -1;
        eVar.f = -1;
        eVar.f9194g = -1;
        eVar.f9195h = -1;
        eVar.f9197i = -1;
        eVar.f9199j = -1;
        eVar.f9201k = -1;
        eVar.f9202l = -1;
        eVar.f9203m = -1;
        eVar.n = 0;
        eVar.f9204o = 0.0f;
        eVar.f9205p = -1;
        eVar.f9206q = -1;
        eVar.f9207r = -1;
        eVar.f9208s = -1;
        eVar.f9209t = -1;
        eVar.f9210u = -1;
        eVar.f9211v = -1;
        eVar.f9212w = -1;
        eVar.f9213x = -1;
        eVar.f9214y = -1;
        eVar.f9215z = 0.5f;
        eVar.f9158A = 0.5f;
        eVar.f9159B = null;
        eVar.f9160C = 1;
        eVar.f9161D = -1.0f;
        eVar.E = -1.0f;
        eVar.f9162F = 0;
        eVar.f9163G = 0;
        eVar.f9164H = 0;
        eVar.f9165I = 0;
        eVar.f9166J = 0;
        eVar.f9167K = 0;
        eVar.f9168L = 0;
        eVar.f9169M = 0;
        eVar.f9170N = 1.0f;
        eVar.f9171O = 1.0f;
        eVar.f9172P = -1;
        eVar.f9173Q = -1;
        eVar.f9174R = -1;
        eVar.f9175S = false;
        eVar.f9176T = false;
        eVar.f9177U = null;
        eVar.f9178V = true;
        eVar.f9179W = true;
        eVar.f9180X = false;
        eVar.f9181Y = false;
        eVar.f9182Z = false;
        eVar.f9184a0 = -1;
        eVar.f9186b0 = -1;
        eVar.f9188c0 = -1;
        eVar.f9190d0 = -1;
        eVar.f9192e0 = -1;
        eVar.f9193f0 = -1;
        eVar.g0 = 0.5f;
        eVar.k0 = new C0827d();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.f9311b);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            int i7 = d.f9157a.get(index);
            switch (i7) {
                case 1:
                    eVar.f9174R = typedArrayObtainStyledAttributes.getInt(index, eVar.f9174R);
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9203m);
                    eVar.f9203m = resourceId;
                    if (resourceId == -1) {
                        eVar.f9203m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    eVar.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.n);
                    break;
                case 4:
                    float f = typedArrayObtainStyledAttributes.getFloat(index, eVar.f9204o) % 360.0f;
                    eVar.f9204o = f;
                    if (f < 0.0f) {
                        eVar.f9204o = (360.0f - f) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    eVar.f9183a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f9183a);
                    break;
                case 6:
                    eVar.f9185b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f9185b);
                    break;
                case 7:
                    eVar.f9187c = typedArrayObtainStyledAttributes.getFloat(index, eVar.f9187c);
                    break;
                case 8:
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9189d);
                    eVar.f9189d = resourceId2;
                    if (resourceId2 == -1) {
                        eVar.f9189d = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9191e);
                    eVar.f9191e = resourceId3;
                    if (resourceId3 == -1) {
                        eVar.f9191e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f);
                    eVar.f = resourceId4;
                    if (resourceId4 == -1) {
                        eVar.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9194g);
                    eVar.f9194g = resourceId5;
                    if (resourceId5 == -1) {
                        eVar.f9194g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9195h);
                    eVar.f9195h = resourceId6;
                    if (resourceId6 == -1) {
                        eVar.f9195h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9197i);
                    eVar.f9197i = resourceId7;
                    if (resourceId7 == -1) {
                        eVar.f9197i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9199j);
                    eVar.f9199j = resourceId8;
                    if (resourceId8 == -1) {
                        eVar.f9199j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9201k);
                    eVar.f9201k = resourceId9;
                    if (resourceId9 == -1) {
                        eVar.f9201k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9202l);
                    eVar.f9202l = resourceId10;
                    if (resourceId10 == -1) {
                        eVar.f9202l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9205p);
                    eVar.f9205p = resourceId11;
                    if (resourceId11 == -1) {
                        eVar.f9205p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9206q);
                    eVar.f9206q = resourceId12;
                    if (resourceId12 == -1) {
                        eVar.f9206q = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9207r);
                    eVar.f9207r = resourceId13;
                    if (resourceId13 == -1) {
                        eVar.f9207r = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f9208s);
                    eVar.f9208s = resourceId14;
                    if (resourceId14 == -1) {
                        eVar.f9208s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    eVar.f9209t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9209t);
                    break;
                case 22:
                    eVar.f9210u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9210u);
                    break;
                case 23:
                    eVar.f9211v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9211v);
                    break;
                case 24:
                    eVar.f9212w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9212w);
                    break;
                case 25:
                    eVar.f9213x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9213x);
                    break;
                case 26:
                    eVar.f9214y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9214y);
                    break;
                case 27:
                    eVar.f9175S = typedArrayObtainStyledAttributes.getBoolean(index, eVar.f9175S);
                    break;
                case 28:
                    eVar.f9176T = typedArrayObtainStyledAttributes.getBoolean(index, eVar.f9176T);
                    break;
                case 29:
                    eVar.f9215z = typedArrayObtainStyledAttributes.getFloat(index, eVar.f9215z);
                    break;
                case 30:
                    eVar.f9158A = typedArrayObtainStyledAttributes.getFloat(index, eVar.f9158A);
                    break;
                case 31:
                    int i8 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.f9164H = i8;
                    if (i8 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 32:
                    int i9 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.f9165I = i9;
                    if (i9 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 33:
                    try {
                        eVar.f9166J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9166J);
                        break;
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f9166J) == -2) {
                            eVar.f9166J = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        eVar.f9168L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9168L);
                        break;
                    } catch (Exception unused2) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f9168L) == -2) {
                            eVar.f9168L = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    eVar.f9170N = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.f9170N));
                    eVar.f9164H = 2;
                    break;
                case 36:
                    try {
                        eVar.f9167K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9167K);
                        break;
                    } catch (Exception unused3) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f9167K) == -2) {
                            eVar.f9167K = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 37:
                    try {
                        eVar.f9169M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f9169M);
                        break;
                    } catch (Exception unused4) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f9169M) == -2) {
                            eVar.f9169M = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    eVar.f9171O = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.f9171O));
                    eVar.f9165I = 2;
                    break;
                default:
                    switch (i7) {
                        case 44:
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            eVar.f9159B = string;
                            eVar.f9160C = -1;
                            if (string != null) {
                                int length = string.length();
                                int iIndexOf = eVar.f9159B.indexOf(44);
                                if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                    i5 = 0;
                                } else {
                                    String strSubstring = eVar.f9159B.substring(0, iIndexOf);
                                    if (strSubstring.equalsIgnoreCase("W")) {
                                        eVar.f9160C = 0;
                                    } else if (strSubstring.equalsIgnoreCase("H")) {
                                        eVar.f9160C = 1;
                                    }
                                    i5 = iIndexOf + 1;
                                }
                                int iIndexOf2 = eVar.f9159B.indexOf(58);
                                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                    String strSubstring2 = eVar.f9159B.substring(i5);
                                    if (strSubstring2.length() > 0) {
                                        Float.parseFloat(strSubstring2);
                                        break;
                                    } else {
                                        break;
                                    }
                                } else {
                                    String strSubstring3 = eVar.f9159B.substring(i5, iIndexOf2);
                                    String strSubstring4 = eVar.f9159B.substring(iIndexOf2 + 1);
                                    if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                        break;
                                    } else {
                                        try {
                                            float f5 = Float.parseFloat(strSubstring3);
                                            float f6 = Float.parseFloat(strSubstring4);
                                            if (f5 <= 0.0f || f6 <= 0.0f) {
                                                break;
                                            } else if (eVar.f9160C == 1) {
                                                Math.abs(f6 / f5);
                                                break;
                                            } else {
                                                Math.abs(f5 / f6);
                                                break;
                                            }
                                        } catch (NumberFormatException unused5) {
                                            break;
                                        }
                                    }
                                }
                            } else {
                                break;
                            }
                            break;
                        case 45:
                            eVar.f9161D = typedArrayObtainStyledAttributes.getFloat(index, eVar.f9161D);
                            break;
                        case 46:
                            eVar.E = typedArrayObtainStyledAttributes.getFloat(index, eVar.E);
                            break;
                        case 47:
                            eVar.f9162F = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            eVar.f9163G = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            eVar.f9172P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f9172P);
                            break;
                        case 50:
                            eVar.f9173Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f9173Q);
                            break;
                        case 51:
                            eVar.f9177U = typedArrayObtainStyledAttributes.getString(index);
                            break;
                    }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        eVar.a();
        return eVar;
    }

    public int getMaxHeight() {
        return this.f3575i;
    }

    public int getMaxWidth() {
        return this.f3574h;
    }

    public int getMinHeight() {
        return this.f3573g;
    }

    public int getMinWidth() {
        return this.f;
    }

    public int getOptimizationLevel() {
        return this.f3572e.f8956w0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            u.e eVar = (u.e) childAt.getLayoutParams();
            C0827d c0827d = eVar.k0;
            if (childAt.getVisibility() != 8 || eVar.f9181Y || eVar.f9182Z || zIsInEditMode) {
                int iO = c0827d.o();
                int iP = c0827d.p();
                childAt.layout(iO, iP, c0827d.n() + iO, c0827d.k() + iP);
            }
        }
        ArrayList arrayList = this.f3571d;
        int size = arrayList.size();
        if (size > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                ((u.c) arrayList.get(i10)).getClass();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x05a5  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x05ab  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i5, int i6) throws Resources.NotFoundException, NumberFormatException {
        e eVar;
        boolean z4;
        int i7;
        e eVar2;
        C0827d c0827d;
        int i8;
        C0827d c0827d2;
        int i9;
        C0827d c0827d3;
        int i10;
        float f;
        int i11;
        int i12;
        int i13;
        float fAbs;
        int i14;
        ArrayList arrayList;
        int i15;
        View view;
        ArrayList arrayList2;
        View view2;
        int i16;
        C0827d c0827d4;
        ConstraintLayout constraintLayout = this;
        int i17 = 0;
        if (!constraintLayout.f3576j) {
            int childCount = getChildCount();
            int i18 = 0;
            while (true) {
                if (i18 >= childCount) {
                    break;
                }
                if (constraintLayout.getChildAt(i18).isLayoutRequested()) {
                    constraintLayout.f3576j = true;
                    break;
                }
                i18++;
            }
        }
        boolean z5 = constraintLayout.f3576j;
        e eVar3 = constraintLayout.f3572e;
        if (!z5) {
            int i19 = constraintLayout.f3583r;
            if (i19 == i5 && constraintLayout.f3584s == i6) {
                e(i5, i6, eVar3.n(), eVar3.k(), eVar3.f8957x0, eVar3.f8958y0);
                return;
            }
            if (i19 == i5 && View.MeasureSpec.getMode(i5) == 1073741824 && View.MeasureSpec.getMode(i6) == Integer.MIN_VALUE && View.MeasureSpec.getMode(constraintLayout.f3584s) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i6) >= eVar3.k()) {
                constraintLayout.f3583r = i5;
                constraintLayout.f3584s = i6;
                e(i5, i6, eVar3.n(), eVar3.k(), eVar3.f8957x0, eVar3.f8958y0);
                return;
            }
        }
        constraintLayout.f3583r = i5;
        constraintLayout.f3584s = i6;
        eVar3.o0 = (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
        if (constraintLayout.f3576j) {
            constraintLayout.f3576j = false;
            int childCount2 = getChildCount();
            int i20 = 0;
            while (true) {
                if (i20 >= childCount2) {
                    z4 = false;
                    break;
                } else {
                    if (constraintLayout.getChildAt(i20).isLayoutRequested()) {
                        z4 = true;
                        break;
                    }
                    i20++;
                }
            }
            if (z4) {
                boolean zIsInEditMode = isInEditMode();
                int childCount3 = getChildCount();
                for (int i21 = 0; i21 < childCount3; i21++) {
                    C0827d c0827dB = constraintLayout.b(constraintLayout.getChildAt(i21));
                    if (c0827dB != null) {
                        c0827dB.y();
                    }
                }
                SparseArray sparseArray = constraintLayout.f3570c;
                if (zIsInEditMode) {
                    for (int i22 = 0; i22 < childCount3; i22++) {
                        View childAt = constraintLayout.getChildAt(i22);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            Integer numValueOf = Integer.valueOf(childAt.getId());
                            if (resourceName instanceof String) {
                                if (constraintLayout.f3580o == null) {
                                    constraintLayout.f3580o = new HashMap();
                                }
                                int iIndexOf = resourceName.indexOf("/");
                                constraintLayout.f3580o.put(iIndexOf != -1 ? resourceName.substring(iIndexOf + 1) : resourceName, numValueOf);
                            }
                            int iIndexOf2 = resourceName.indexOf(47);
                            if (iIndexOf2 != -1) {
                                resourceName = resourceName.substring(iIndexOf2 + 1);
                            }
                            int id = childAt.getId();
                            if (id != 0) {
                                View viewFindViewById = (View) sparseArray.get(id);
                                if (viewFindViewById == null && (viewFindViewById = constraintLayout.findViewById(id)) != null && viewFindViewById != constraintLayout && viewFindViewById.getParent() == constraintLayout) {
                                    constraintLayout.onViewAdded(viewFindViewById);
                                }
                                if (viewFindViewById == constraintLayout) {
                                    c0827d4 = eVar3;
                                    c0827d4.f8921b0 = resourceName;
                                } else {
                                    c0827d4 = viewFindViewById == null ? null : ((u.e) viewFindViewById.getLayoutParams()).k0;
                                    c0827d4.f8921b0 = resourceName;
                                }
                            } else {
                                c0827d4 = eVar3;
                                c0827d4.f8921b0 = resourceName;
                            }
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (constraintLayout.n != -1) {
                    for (int i23 = 0; i23 < childCount3; i23++) {
                        constraintLayout.getChildAt(i23).getId();
                    }
                }
                l lVar = constraintLayout.f3578l;
                if (lVar != null) {
                    lVar.a(constraintLayout);
                }
                eVar3.k0.clear();
                ArrayList arrayList3 = constraintLayout.f3571d;
                int size = arrayList3.size();
                if (size > 0) {
                    int i24 = 0;
                    while (i24 < size) {
                        u.c cVar = (u.c) arrayList3.get(i24);
                        if (cVar.isInEditMode()) {
                            cVar.setIds(cVar.f9154g);
                        }
                        s.i iVar = cVar.f;
                        if (iVar == null) {
                            arrayList = arrayList3;
                            i15 = size;
                        } else {
                            iVar.l0 = i17;
                            Arrays.fill(iVar.k0, (Object) null);
                            int i25 = i17;
                            while (i25 < cVar.f9152d) {
                                int i26 = cVar.f9151c[i25];
                                View view3 = (View) constraintLayout.f3570c.get(i26);
                                if (view3 == null) {
                                    Integer numValueOf2 = Integer.valueOf(i26);
                                    HashMap map = cVar.f9156i;
                                    String str = (String) map.get(numValueOf2);
                                    view = view3;
                                    int iE = cVar.e(constraintLayout, str);
                                    arrayList2 = arrayList3;
                                    if (iE != 0) {
                                        cVar.f9151c[i25] = iE;
                                        map.put(Integer.valueOf(iE), str);
                                        view2 = (View) constraintLayout.f3570c.get(iE);
                                    }
                                    if (view2 == null) {
                                        s.i iVar2 = cVar.f;
                                        C0827d c0827dB2 = constraintLayout.b(view2);
                                        iVar2.getClass();
                                        if (c0827dB2 == iVar2 || c0827dB2 == null) {
                                            i16 = size;
                                        } else {
                                            int i27 = iVar2.l0 + 1;
                                            C0827d[] c0827dArr = iVar2.k0;
                                            i16 = size;
                                            if (i27 > c0827dArr.length) {
                                                iVar2.k0 = (C0827d[]) Arrays.copyOf(c0827dArr, c0827dArr.length * 2);
                                            }
                                            C0827d[] c0827dArr2 = iVar2.k0;
                                            int i28 = iVar2.l0;
                                            c0827dArr2[i28] = c0827dB2;
                                            iVar2.l0 = i28 + 1;
                                        }
                                    }
                                    i25++;
                                    size = i16;
                                    arrayList3 = arrayList2;
                                } else {
                                    view = view3;
                                    arrayList2 = arrayList3;
                                }
                                view2 = view;
                                if (view2 == null) {
                                }
                                i25++;
                                size = i16;
                                arrayList3 = arrayList2;
                            }
                            arrayList = arrayList3;
                            i15 = size;
                            cVar.f.L();
                        }
                        i24++;
                        size = i15;
                        arrayList3 = arrayList;
                        i17 = 0;
                    }
                }
                for (int i29 = 0; i29 < childCount3; i29++) {
                    constraintLayout.getChildAt(i29);
                }
                SparseArray sparseArray2 = constraintLayout.f3581p;
                sparseArray2.clear();
                sparseArray2.put(0, eVar3);
                sparseArray2.put(getId(), eVar3);
                for (int i30 = 0; i30 < childCount3; i30++) {
                    View childAt2 = constraintLayout.getChildAt(i30);
                    sparseArray2.put(childAt2.getId(), constraintLayout.b(childAt2));
                }
                int i31 = 0;
                while (i31 < childCount3) {
                    View childAt3 = constraintLayout.getChildAt(i31);
                    C0827d c0827dB3 = constraintLayout.b(childAt3);
                    if (c0827dB3 == null) {
                        eVar2 = eVar3;
                        i7 = childCount3;
                    } else {
                        u.e eVar4 = (u.e) childAt3.getLayoutParams();
                        eVar3.k0.add(c0827dB3);
                        C0827d c0827d5 = c0827dB3.f8905N;
                        if (c0827d5 != null) {
                            ((e) c0827d5).k0.remove(c0827dB3);
                            c0827dB3.y();
                        }
                        c0827dB3.f8905N = eVar3;
                        eVar4.a();
                        c0827dB3.f8919a0 = childAt3.getVisibility();
                        c0827dB3.f8917Z = childAt3;
                        if (childAt3 instanceof u.c) {
                            ((u.c) childAt3).g(c0827dB3, eVar3.o0);
                        }
                        if (eVar4.f9181Y) {
                            h hVar = (h) c0827dB3;
                            int i32 = eVar4.f9196h0;
                            int i33 = eVar4.f9198i0;
                            float f5 = eVar4.f9200j0;
                            if (f5 != -1.0f) {
                                if (f5 > -1.0f) {
                                    hVar.k0 = f5;
                                    hVar.l0 = -1;
                                    hVar.m0 = -1;
                                }
                            } else if (i32 != -1) {
                                if (i32 > -1) {
                                    hVar.k0 = -1.0f;
                                    hVar.l0 = i32;
                                    hVar.m0 = -1;
                                }
                            } else if (i33 != -1 && i33 > -1) {
                                hVar.k0 = -1.0f;
                                hVar.l0 = -1;
                                hVar.m0 = i33;
                            }
                            eVar2 = eVar3;
                            i7 = childCount3;
                        } else {
                            int i34 = eVar4.f9184a0;
                            int i35 = eVar4.f9186b0;
                            int i36 = eVar4.f9188c0;
                            int i37 = eVar4.f9190d0;
                            i7 = childCount3;
                            int i38 = eVar4.f9192e0;
                            int i39 = eVar4.f9193f0;
                            float f6 = eVar4.g0;
                            int i40 = eVar4.f9203m;
                            eVar2 = eVar3;
                            if (i40 != -1) {
                                C0827d c0827d6 = (C0827d) sparseArray2.get(i40);
                                if (c0827d6 != null) {
                                    float f7 = eVar4.f9204o;
                                    c0827dB3.r(7, 7, eVar4.n, 0, c0827d6);
                                    c0827dB3.f8948x = f7;
                                }
                            } else {
                                int i41 = -1;
                                if (i34 != -1) {
                                    C0827d c0827d7 = (C0827d) sparseArray2.get(i34);
                                    if (c0827d7 != null) {
                                        c0827dB3.r(2, 2, ((ViewGroup.MarginLayoutParams) eVar4).leftMargin, i38, c0827d7);
                                    }
                                } else {
                                    if (i35 != -1) {
                                        C0827d c0827d8 = (C0827d) sparseArray2.get(i35);
                                        if (c0827d8 != null) {
                                            c0827dB3.r(2, 4, ((ViewGroup.MarginLayoutParams) eVar4).leftMargin, i38, c0827d8);
                                        }
                                    }
                                    if (i36 == i41) {
                                        C0827d c0827d9 = (C0827d) sparseArray2.get(i36);
                                        if (c0827d9 != null) {
                                            c0827dB3.r(4, 2, ((ViewGroup.MarginLayoutParams) eVar4).rightMargin, i39, c0827d9);
                                        }
                                    } else if (i37 != i41 && (c0827d = (C0827d) sparseArray2.get(i37)) != null) {
                                        c0827dB3.r(4, 4, ((ViewGroup.MarginLayoutParams) eVar4).rightMargin, i39, c0827d);
                                    }
                                    i8 = eVar4.f9195h;
                                    if (i8 == -1) {
                                        C0827d c0827d10 = (C0827d) sparseArray2.get(i8);
                                        if (c0827d10 != null) {
                                            c0827dB3.r(3, 3, ((ViewGroup.MarginLayoutParams) eVar4).topMargin, eVar4.f9210u, c0827d10);
                                        }
                                    } else {
                                        int i42 = eVar4.f9197i;
                                        if (i42 != -1 && (c0827d2 = (C0827d) sparseArray2.get(i42)) != null) {
                                            c0827dB3.r(3, 5, ((ViewGroup.MarginLayoutParams) eVar4).topMargin, eVar4.f9210u, c0827d2);
                                        }
                                    }
                                    i9 = eVar4.f9199j;
                                    if (i9 == -1) {
                                        C0827d c0827d11 = (C0827d) sparseArray2.get(i9);
                                        if (c0827d11 != null) {
                                            c0827dB3.r(5, 3, ((ViewGroup.MarginLayoutParams) eVar4).bottomMargin, eVar4.f9212w, c0827d11);
                                        }
                                    } else {
                                        int i43 = eVar4.f9201k;
                                        if (i43 != -1 && (c0827d3 = (C0827d) sparseArray2.get(i43)) != null) {
                                            c0827dB3.r(5, 5, ((ViewGroup.MarginLayoutParams) eVar4).bottomMargin, eVar4.f9212w, c0827d3);
                                        }
                                    }
                                    i10 = eVar4.f9202l;
                                    if (i10 != -1) {
                                        View view4 = (View) sparseArray.get(i10);
                                        C0827d c0827d12 = (C0827d) sparseArray2.get(eVar4.f9202l);
                                        if (c0827d12 != null && view4 != null && (view4.getLayoutParams() instanceof u.e)) {
                                            u.e eVar5 = (u.e) view4.getLayoutParams();
                                            eVar4.f9180X = true;
                                            eVar5.f9180X = true;
                                            c0827dB3.i(6).b(c0827d12.i(6), 0, -1, true);
                                            c0827dB3.f8949y = true;
                                            eVar5.k0.f8949y = true;
                                            c0827dB3.i(3).j();
                                            c0827dB3.i(5).j();
                                        }
                                    }
                                    if (f6 >= 0.0f) {
                                        c0827dB3.f8915X = f6;
                                    }
                                    f = eVar4.f9158A;
                                    if (f >= 0.0f) {
                                        c0827dB3.f8916Y = f;
                                    }
                                }
                                i41 = -1;
                                if (i36 == i41) {
                                }
                                i8 = eVar4.f9195h;
                                if (i8 == -1) {
                                }
                                i9 = eVar4.f9199j;
                                if (i9 == -1) {
                                }
                                i10 = eVar4.f9202l;
                                if (i10 != -1) {
                                }
                                if (f6 >= 0.0f) {
                                }
                                f = eVar4.f9158A;
                                if (f >= 0.0f) {
                                }
                            }
                            if (zIsInEditMode && ((i14 = eVar4.f9172P) != -1 || eVar4.f9173Q != -1)) {
                                int i44 = eVar4.f9173Q;
                                c0827dB3.f8910S = i14;
                                c0827dB3.f8911T = i44;
                            }
                            if (eVar4.f9178V) {
                                c0827dB3.F(1);
                                c0827dB3.H(((ViewGroup.MarginLayoutParams) eVar4).width);
                                if (((ViewGroup.MarginLayoutParams) eVar4).width == -2) {
                                    c0827dB3.F(2);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) eVar4).width == -1) {
                                if (eVar4.f9175S) {
                                    c0827dB3.F(3);
                                } else {
                                    c0827dB3.F(4);
                                }
                                c0827dB3.i(2).f8890g = ((ViewGroup.MarginLayoutParams) eVar4).leftMargin;
                                c0827dB3.i(4).f8890g = ((ViewGroup.MarginLayoutParams) eVar4).rightMargin;
                            } else {
                                c0827dB3.F(3);
                                c0827dB3.H(0);
                            }
                            if (eVar4.f9179W) {
                                i11 = -1;
                                c0827dB3.G(1);
                                c0827dB3.E(((ViewGroup.MarginLayoutParams) eVar4).height);
                                if (((ViewGroup.MarginLayoutParams) eVar4).height == -2) {
                                    c0827dB3.G(2);
                                }
                            } else {
                                i11 = -1;
                                if (((ViewGroup.MarginLayoutParams) eVar4).height == -1) {
                                    if (eVar4.f9176T) {
                                        c0827dB3.G(3);
                                    } else {
                                        c0827dB3.G(4);
                                    }
                                    c0827dB3.i(3).f8890g = ((ViewGroup.MarginLayoutParams) eVar4).topMargin;
                                    c0827dB3.i(5).f8890g = ((ViewGroup.MarginLayoutParams) eVar4).bottomMargin;
                                } else {
                                    c0827dB3.G(3);
                                    c0827dB3.E(0);
                                }
                            }
                            String str2 = eVar4.f9159B;
                            if (str2 == null || str2.length() == 0) {
                                c0827dB3.f8908Q = 0.0f;
                            } else {
                                int length = str2.length();
                                int iIndexOf3 = str2.indexOf(44);
                                if (iIndexOf3 <= 0 || iIndexOf3 >= length - 1) {
                                    i12 = i11;
                                    i13 = 0;
                                } else {
                                    String strSubstring = str2.substring(0, iIndexOf3);
                                    i12 = strSubstring.equalsIgnoreCase("W") ? 0 : strSubstring.equalsIgnoreCase("H") ? 1 : i11;
                                    i13 = iIndexOf3 + 1;
                                }
                                int iIndexOf4 = str2.indexOf(58);
                                if (iIndexOf4 < 0 || iIndexOf4 >= length - 1) {
                                    String strSubstring2 = str2.substring(i13);
                                    fAbs = strSubstring2.length() > 0 ? Float.parseFloat(strSubstring2) : 0.0f;
                                    if (fAbs > 0.0f) {
                                        c0827dB3.f8908Q = fAbs;
                                        c0827dB3.f8909R = i12;
                                    }
                                } else {
                                    String strSubstring3 = str2.substring(i13, iIndexOf4);
                                    String strSubstring4 = str2.substring(iIndexOf4 + 1);
                                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                        try {
                                            float f8 = Float.parseFloat(strSubstring3);
                                            float f9 = Float.parseFloat(strSubstring4);
                                            if (f8 > 0.0f && f9 > 0.0f) {
                                                fAbs = i12 == 1 ? Math.abs(f9 / f8) : Math.abs(f8 / f9);
                                            }
                                        } catch (NumberFormatException unused2) {
                                        }
                                        if (fAbs > 0.0f) {
                                        }
                                    }
                                }
                            }
                            float f10 = eVar4.f9161D;
                            float[] fArr = c0827dB3.f8927e0;
                            fArr[0] = f10;
                            fArr[1] = eVar4.E;
                            c0827dB3.f8923c0 = eVar4.f9162F;
                            c0827dB3.f8925d0 = eVar4.f9163G;
                            int i45 = eVar4.f9164H;
                            int i46 = eVar4.f9166J;
                            int i47 = eVar4.f9168L;
                            float f11 = eVar4.f9170N;
                            c0827dB3.f8937l = i45;
                            c0827dB3.f8939o = i46;
                            if (i47 == Integer.MAX_VALUE) {
                                i47 = 0;
                            }
                            c0827dB3.f8940p = i47;
                            c0827dB3.f8941q = f11;
                            if (f11 > 0.0f && f11 < 1.0f && i45 == 0) {
                                c0827dB3.f8937l = 2;
                            }
                            int i48 = eVar4.f9165I;
                            int i49 = eVar4.f9167K;
                            int i50 = eVar4.f9169M;
                            float f12 = eVar4.f9171O;
                            c0827dB3.f8938m = i48;
                            c0827dB3.f8942r = i49;
                            if (i50 == Integer.MAX_VALUE) {
                                i50 = 0;
                            }
                            c0827dB3.f8943s = i50;
                            c0827dB3.f8944t = f12;
                            if (f12 > 0.0f && f12 < 1.0f && i48 == 0) {
                                c0827dB3.f8938m = 2;
                            }
                        }
                    }
                    i31++;
                    constraintLayout = this;
                    childCount3 = i7;
                    eVar3 = eVar2;
                }
            }
            eVar = eVar3;
            if (z4) {
                eVar.l0.q(eVar);
            }
        } else {
            eVar = eVar3;
        }
        f(eVar, this.f3577k, i5, i6);
        e(i5, i6, eVar.n(), eVar.k(), eVar.f8957x0, eVar.f8958y0);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        C0827d c0827dB = b(view);
        if ((view instanceof Guideline) && !(c0827dB instanceof h)) {
            u.e eVar = (u.e) view.getLayoutParams();
            h hVar = new h();
            eVar.k0 = hVar;
            eVar.f9181Y = true;
            hVar.L(eVar.f9174R);
        }
        if (view instanceof u.c) {
            u.c cVar = (u.c) view;
            cVar.h();
            ((u.e) view.getLayoutParams()).f9182Z = true;
            ArrayList arrayList = this.f3571d;
            if (!arrayList.contains(cVar)) {
                arrayList.add(cVar);
            }
        }
        this.f3570c.put(view.getId(), view);
        this.f3576j = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f3570c.remove(view.getId());
        C0827d c0827dB = b(view);
        this.f3572e.k0.remove(c0827dB);
        c0827dB.y();
        this.f3571d.remove(view);
        this.f3576j = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        super.removeView(view);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f3576j = true;
        super.requestLayout();
    }

    public void setConstraintSet(l lVar) {
        this.f3578l = lVar;
    }

    @Override // android.view.View
    public void setId(int i5) {
        int id = getId();
        SparseArray sparseArray = this.f3570c;
        sparseArray.remove(id);
        super.setId(i5);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i5) {
        if (i5 == this.f3575i) {
            return;
        }
        this.f3575i = i5;
        requestLayout();
    }

    public void setMaxWidth(int i5) {
        if (i5 == this.f3574h) {
            return;
        }
        this.f3574h = i5;
        requestLayout();
    }

    public void setMinHeight(int i5) {
        if (i5 == this.f3573g) {
            return;
        }
        this.f3573g = i5;
        requestLayout();
    }

    public void setMinWidth(int i5) {
        if (i5 == this.f) {
            return;
        }
        this.f = i5;
        requestLayout();
    }

    public void setOnConstraintsChanged(u.m mVar) {
        v vVar = this.f3579m;
        if (vVar != null) {
            vVar.getClass();
        }
    }

    public void setOptimizationLevel(int i5) {
        this.f3577k = i5;
        e eVar = this.f3572e;
        eVar.f8956w0 = i5;
        c.f8723p = eVar.Q(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i5) throws XmlPullParserException, IOException, NumberFormatException {
        super(context, attributeSet, i5);
        this.f3570c = new SparseArray();
        this.f3571d = new ArrayList(4);
        this.f3572e = new e();
        this.f = 0;
        this.f3573g = 0;
        this.f3574h = Integer.MAX_VALUE;
        this.f3575i = Integer.MAX_VALUE;
        this.f3576j = true;
        this.f3577k = 257;
        this.f3578l = null;
        this.f3579m = null;
        this.n = -1;
        this.f3580o = new HashMap();
        this.f3581p = new SparseArray();
        this.f3582q = new a5(this, this);
        this.f3583r = 0;
        this.f3584s = 0;
        c(attributeSet, i5);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        u.e eVar = new u.e(layoutParams);
        eVar.f9183a = -1;
        eVar.f9185b = -1;
        eVar.f9187c = -1.0f;
        eVar.f9189d = -1;
        eVar.f9191e = -1;
        eVar.f = -1;
        eVar.f9194g = -1;
        eVar.f9195h = -1;
        eVar.f9197i = -1;
        eVar.f9199j = -1;
        eVar.f9201k = -1;
        eVar.f9202l = -1;
        eVar.f9203m = -1;
        eVar.n = 0;
        eVar.f9204o = 0.0f;
        eVar.f9205p = -1;
        eVar.f9206q = -1;
        eVar.f9207r = -1;
        eVar.f9208s = -1;
        eVar.f9209t = -1;
        eVar.f9210u = -1;
        eVar.f9211v = -1;
        eVar.f9212w = -1;
        eVar.f9213x = -1;
        eVar.f9214y = -1;
        eVar.f9215z = 0.5f;
        eVar.f9158A = 0.5f;
        eVar.f9159B = null;
        eVar.f9160C = 1;
        eVar.f9161D = -1.0f;
        eVar.E = -1.0f;
        eVar.f9162F = 0;
        eVar.f9163G = 0;
        eVar.f9164H = 0;
        eVar.f9165I = 0;
        eVar.f9166J = 0;
        eVar.f9167K = 0;
        eVar.f9168L = 0;
        eVar.f9169M = 0;
        eVar.f9170N = 1.0f;
        eVar.f9171O = 1.0f;
        eVar.f9172P = -1;
        eVar.f9173Q = -1;
        eVar.f9174R = -1;
        eVar.f9175S = false;
        eVar.f9176T = false;
        eVar.f9177U = null;
        eVar.f9178V = true;
        eVar.f9179W = true;
        eVar.f9180X = false;
        eVar.f9181Y = false;
        eVar.f9182Z = false;
        eVar.f9184a0 = -1;
        eVar.f9186b0 = -1;
        eVar.f9188c0 = -1;
        eVar.f9190d0 = -1;
        eVar.f9192e0 = -1;
        eVar.f9193f0 = -1;
        eVar.g0 = 0.5f;
        eVar.k0 = new C0827d();
        return eVar;
    }
}

package D3;

import J.I;
import J.N;
import J.Q;
import J.r0;
import J3.m;
import J3.n;
import L0.k;
import M0.g;
import R0.h;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import c.AbstractC0206a;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0332s;
import com.google.android.gms.internal.p000firebaseauthapi.C0230a4;
import com.google.android.gms.internal.p000firebaseauthapi.C0303n;
import com.google.android.gms.internal.p000firebaseauthapi.C0349u4;
import com.google.android.gms.internal.p000firebaseauthapi.C0355v4;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.android.gms.internal.p000firebaseauthapi.C0377z2;
import com.google.android.gms.internal.p000firebaseauthapi.G3;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.google.android.gms.internal.p000firebaseauthapi.H4;
import com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4;
import com.google.android.gms.internal.p000firebaseauthapi.V3;
import com.google.android.gms.internal.p000firebaseauthapi.Y3;
import com.google.firebase.messaging.p;
import d3.i;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import k.AbstractC0591g0;
import k.C0622s;
import k.x1;
import r2.C0772e;
import s3.InterfaceC0839b;

/* loaded from: classes.dex */
public final class e implements m, InterfaceC0248d4 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f498c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f499d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f500e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f501g;

    /* renamed from: h, reason: collision with root package name */
    public Object f502h;

    public e(C0303n c0303n, G3 g32, InterfaceC0248d4 interfaceC0248d4, C0373y4 c0373y4, G4 g42) {
        this.f498c = 4;
        this.f502h = c0303n;
        this.f499d = interfaceC0248d4;
        this.f500e = g32;
        this.f = c0373y4;
        this.f501g = g42;
    }

    public static e c(SharedPreferences sharedPreferences, Executor executor) {
        e eVar = new e(sharedPreferences, executor);
        synchronized (((ArrayDeque) eVar.f501g)) {
            try {
                ((ArrayDeque) eVar.f501g).clear();
                String string = ((SharedPreferences) eVar.f499d).getString((String) eVar.f500e, "");
                if (!TextUtils.isEmpty(string) && string.contains((String) eVar.f)) {
                    String[] strArrSplit = string.split((String) eVar.f, -1);
                    if (strArrSplit.length == 0) {
                        Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    }
                    for (String str : strArrSplit) {
                        if (!TextUtils.isEmpty(str)) {
                            ((ArrayDeque) eVar.f501g).add(str);
                        }
                    }
                }
            } finally {
            }
        }
        return eVar;
    }

    public void a() {
        View view = (View) this.f499d;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((x1) this.f) != null) {
                if (((x1) this.f502h) == null) {
                    this.f502h = new x1();
                }
                x1 x1Var = (x1) this.f502h;
                x1Var.f8051a = null;
                x1Var.f8054d = false;
                x1Var.f8052b = null;
                x1Var.f8053c = false;
                WeakHashMap weakHashMap = Q.f940a;
                ColorStateList colorStateListG = I.g(view);
                if (colorStateListG != null) {
                    x1Var.f8054d = true;
                    x1Var.f8051a = colorStateListG;
                }
                PorterDuff.Mode modeH = I.h(view);
                if (modeH != null) {
                    x1Var.f8053c = true;
                    x1Var.f8052b = modeH;
                }
                if (x1Var.f8054d || x1Var.f8053c) {
                    C0622s.d(background, x1Var, view.getDrawableState());
                    return;
                }
            }
            x1 x1Var2 = (x1) this.f501g;
            if (x1Var2 != null) {
                C0622s.d(background, x1Var2, view.getDrawableState());
                return;
            }
            x1 x1Var3 = (x1) this.f;
            if (x1Var3 != null) {
                C0622s.d(background, x1Var3, view.getDrawableState());
            }
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void b(String str) {
        ((InterfaceC0248d4) this.f499d).b(str);
    }

    @Override // J3.m
    public void d() {
        ((m) this.f500e).d();
        ((J3.c) this.f).q((Q3.f) this.f501g, new V3.a((InterfaceC0839b) R2.m.b1((ArrayList) this.f502h)));
    }

    public ColorStateList e() {
        x1 x1Var = (x1) this.f501g;
        if (x1Var != null) {
            return x1Var.f8051a;
        }
        return null;
    }

    public PorterDuff.Mode f() {
        x1 x1Var = (x1) this.f501g;
        if (x1Var != null) {
            return x1Var.f8052b;
        }
        return null;
    }

    @Override // J3.m
    public void g(Q3.f fVar, Object obj) {
        ((m) this.f499d).g(fVar, obj);
    }

    @Override // J3.m
    public void h(Q3.f fVar, Q3.b bVar, Q3.f fVar2) {
        ((m) this.f499d).h(fVar, bVar, fVar2);
    }

    @Override // J3.m
    public void i(Q3.f fVar, V3.f fVar2) {
        ((m) this.f499d).i(fVar, fVar2);
    }

    @Override // J3.m
    public m j(Q3.b bVar, Q3.f fVar) {
        return ((m) this.f499d).j(bVar, fVar);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void k(Y3 y3) throws IOException {
        List list = ((C0349u4) y3).f5745c.f5769c;
        InterfaceC0248d4 interfaceC0248d4 = (InterfaceC0248d4) this.f499d;
        if (list == null || list.isEmpty()) {
            interfaceC0248d4.b("No users");
            return;
        }
        C0355v4 c0355v4 = (C0355v4) list.get(0);
        G3 g32 = (G3) this.f500e;
        AbstractC0213D.e(g32);
        C0373y4 c0373y4 = (C0373y4) this.f;
        AbstractC0213D.e(c0373y4);
        AbstractC0213D.e(c0355v4);
        G4 g42 = (G4) this.f501g;
        AbstractC0213D.e(g42);
        AbstractC0213D.e(interfaceC0248d4);
        J3.c cVar = (J3.c) ((C0303n) this.f502h).f5655d;
        C0377z2 c0377z2 = new C0377z2(g42, c0355v4, g32, c0373y4, interfaceC0248d4);
        cVar.getClass();
        V3 v32 = (V3) cVar.f1138d;
        AbstractC0332s.l(v32.j("/setAccountInfo", (String) cVar.f1142i), g42, c0377z2, H4.class, (C0230a4) v32.f5455b);
    }

    public void l(AttributeSet attributeSet, int i5) {
        View view = (View) this.f499d;
        Context context = view.getContext();
        int[] iArr = AbstractC0206a.f5160D;
        r0 r0VarM = r0.m(context, attributeSet, iArr, i5, 0);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        View view2 = (View) this.f499d;
        Context context2 = view2.getContext();
        WeakHashMap weakHashMap = Q.f940a;
        N.d(view2, context2, iArr, attributeSet, (TypedArray) r0VarM.f1007d, i5, 0);
        try {
            if (typedArray.hasValue(0)) {
                typedArray.getResourceId(0, -1);
                C0622s c0622s = (C0622s) this.f500e;
                view.getContext();
                synchronized (c0622s) {
                    synchronized (c0622s.f7986a) {
                    }
                }
            }
            if (typedArray.hasValue(1)) {
                I.q(view, r0VarM.f(1));
            }
            if (typedArray.hasValue(2)) {
                I.r(view, AbstractC0591g0.b(typedArray.getInt(2, -1), null));
            }
            r0VarM.n();
        } catch (Throwable th) {
            r0VarM.n();
            throw th;
        }
    }

    @Override // J3.m
    public n m(Q3.f fVar) {
        return ((m) this.f499d).m(fVar);
    }

    public void n() {
        q(null);
        a();
    }

    public void o(int i5) {
        C0622s c0622s = (C0622s) this.f500e;
        if (c0622s != null) {
            ((View) this.f499d).getContext();
            synchronized (c0622s) {
                synchronized (c0622s.f7986a) {
                }
            }
        }
        q(null);
        a();
    }

    public void p(I0.a aVar) {
        final E2.a aVar2 = new E2.a(5);
        L0.b bVar = (L0.b) this.f499d;
        if (bVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        String str = (String) this.f500e;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        if (((com.google.firebase.messaging.e) this.f501g) == null) {
            throw new NullPointerException("Null transformer");
        }
        I0.b bVar2 = (I0.b) this.f;
        if (bVar2 == null) {
            throw new NullPointerException("Null encoding");
        }
        k kVar = (k) this.f502h;
        kVar.getClass();
        I0.c cVar = I0.c.f871d;
        r0 r0VarA = L0.b.a();
        r0VarA.o(bVar.f1314a);
        r0VarA.f1008e = cVar;
        r0VarA.f1007d = bVar.f1315b;
        final L0.b bVarB = r0VarA.b();
        J3.d dVar = new J3.d();
        dVar.f1148h = new HashMap();
        dVar.f = Long.valueOf(kVar.f1333a.a());
        dVar.f1147g = Long.valueOf(kVar.f1334b.a());
        dVar.f1144c = str;
        C0772e c0772e = (C0772e) aVar.f868a;
        c0772e.getClass();
        r0 r0Var = q1.d.f8617a;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            r0Var.r(c0772e, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        dVar.f1146e = new L0.f(bVar2, byteArrayOutputStream.toByteArray());
        dVar.f1145d = null;
        final L0.a aVarD = dVar.d();
        final P0.c cVar2 = (P0.c) kVar.f1335c;
        cVar2.getClass();
        cVar2.f2043b.execute(new Runnable() { // from class: P0.a
            @Override // java.lang.Runnable
            public final void run() {
                L0.b bVar3 = bVarB;
                E2.a aVar3 = aVar2;
                L0.a aVar4 = aVarD;
                c cVar3 = cVar2;
                cVar3.getClass();
                Logger logger = c.f;
                try {
                    g gVarA = cVar3.f2044c.a(bVar3.f1314a);
                    if (gVarA == null) {
                        String str2 = "Transport backend '" + bVar3.f1314a + "' is not registered";
                        logger.warning(str2);
                        new IllegalArgumentException(str2);
                        aVar3.getClass();
                    } else {
                        ((h) cVar3.f2046e).m(new b(cVar3, bVar3, ((J0.c) gVarA).a(aVar4), 0));
                        aVar3.getClass();
                    }
                } catch (Exception e5) {
                    logger.warning("Error scheduling event " + e5.getMessage());
                    aVar3.getClass();
                }
            }
        });
    }

    public void q(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((x1) this.f) == null) {
                this.f = new x1();
            }
            x1 x1Var = (x1) this.f;
            x1Var.f8051a = colorStateList;
            x1Var.f8054d = true;
        } else {
            this.f = null;
        }
        a();
    }

    public void r(ColorStateList colorStateList) {
        if (((x1) this.f501g) == null) {
            this.f501g = new x1();
        }
        x1 x1Var = (x1) this.f501g;
        x1Var.f8051a = colorStateList;
        x1Var.f8054d = true;
        a();
    }

    public void s(PorterDuff.Mode mode) {
        if (((x1) this.f501g) == null) {
            this.f501g = new x1();
        }
        x1 x1Var = (x1) this.f501g;
        x1Var.f8052b = mode;
        x1Var.f8053c = true;
        a();
    }

    public String toString() {
        switch (this.f498c) {
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append("FontRequest {mProviderAuthority: " + ((String) this.f499d) + ", mProviderPackage: " + ((String) this.f500e) + ", mQuery: " + ((String) this.f) + ", mCertificates:");
                int i5 = 0;
                while (true) {
                    List list = (List) this.f501g;
                    if (i5 >= list.size()) {
                        sb.append("}mCertificatesArray: 0");
                        return sb.toString();
                    }
                    sb.append(" [");
                    List list2 = (List) list.get(i5);
                    for (int i6 = 0; i6 < list2.size(); i6++) {
                        sb.append(" \"");
                        sb.append(Base64.encodeToString((byte[]) list2.get(i6), 0));
                        sb.append("\"");
                    }
                    sb.append(" ]");
                    i5++;
                }
            default:
                return super.toString();
        }
    }

    public e(SharedPreferences sharedPreferences, Executor executor) {
        this.f498c = 5;
        this.f501g = new ArrayDeque();
        this.f499d = sharedPreferences;
        this.f500e = "topic_operation_queue";
        this.f = ",";
        this.f502h = executor;
    }

    public e(L0.b bVar, I0.b bVar2, k kVar) {
        this.f498c = 3;
        com.google.firebase.messaging.e eVar = com.google.firebase.messaging.e.f6232g;
        this.f499d = bVar;
        this.f500e = "FCM_CLIENT_EVENT_LOGGING";
        this.f = bVar2;
        this.f501g = eVar;
        this.f502h = kVar;
    }

    public e(View view) {
        this.f498c = 6;
        this.f499d = view;
        this.f500e = C0622s.a();
    }

    public e(String str, String str2, String str3, List list) {
        this.f498c = 1;
        str.getClass();
        this.f499d = str;
        str2.getClass();
        this.f500e = str2;
        this.f = str3;
        list.getClass();
        this.f501g = list;
        this.f502h = str + "-" + str2 + "-" + str3;
    }

    public e(a aVar, g gVar, Q2.c cVar) {
        this.f498c = 0;
        i.e("components", aVar);
        i.e("typeParameterResolver", gVar);
        i.e("delegateForDefaultTypeQualifiers", cVar);
        this.f499d = aVar;
        this.f500e = gVar;
        this.f = cVar;
        this.f501g = cVar;
        this.f502h = new p(this, gVar);
    }

    public e(J3.c cVar, J3.c cVar2, Q3.f fVar, ArrayList arrayList) {
        this.f498c = 2;
        this.f500e = cVar;
        this.f = cVar2;
        this.f501g = fVar;
        this.f502h = arrayList;
        this.f499d = cVar;
    }
}

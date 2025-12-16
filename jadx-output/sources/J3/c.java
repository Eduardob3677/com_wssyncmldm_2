package J3;

import L3.O;
import L3.Q;
import L3.W;
import R2.u;
import android.accounts.Account;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.A4;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0296l4;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0332s;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0367x4;
import com.google.android.gms.internal.p000firebaseauthapi.B4;
import com.google.android.gms.internal.p000firebaseauthapi.C0230a4;
import com.google.android.gms.internal.p000firebaseauthapi.C0302m4;
import com.google.android.gms.internal.p000firebaseauthapi.C0349u4;
import com.google.android.gms.internal.p000firebaseauthapi.C0355v4;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.android.gms.internal.p000firebaseauthapi.G3;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4;
import com.google.android.gms.internal.p000firebaseauthapi.V3;
import com.google.android.gms.internal.p000firebaseauthapi.X3;
import com.google.android.gms.internal.p000firebaseauthapi.Y3;
import com.google.android.gms.internal.p000firebaseauthapi.Z3;
import com.google.firebase.auth.api.fallback.service.FirebaseAuthFallbackService;
import com.samsung.android.lib.episode.EternalContract;
import d4.A;
import d4.w;
import d4.y;
import d4.z;
import e.v;
import f1.AbstractC0420a;
import h0.AbstractC0432c;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0455h;
import h4.C0459l;
import h4.D;
import h4.E;
import h4.G;
import h4.J;
import h4.N;
import h4.X;
import i3.x;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import n3.AbstractC0711a;
import o.C0713b;
import o.C0714c;
import o3.AbstractC0729f;
import o3.AbstractC0732i;
import org.json.JSONException;
import org.json.JSONObject;
import p3.EnumC0747e;
import r1.C0766a;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.C0840c;
import s3.C0844g;
import s3.C0846i;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class c implements m, N0.b, InterfaceC0248d4, X3 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1137c;

    /* renamed from: d, reason: collision with root package name */
    public Object f1138d;

    /* renamed from: e, reason: collision with root package name */
    public Object f1139e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f1140g;

    /* renamed from: h, reason: collision with root package name */
    public Object f1141h;

    /* renamed from: i, reason: collision with root package name */
    public Object f1142i;

    /* renamed from: j, reason: collision with root package name */
    public Object f1143j;

    public /* synthetic */ c() {
        this.f1137c = 1;
    }

    public static AbstractC0472z c(AbstractC0472z abstractC0472z, AbstractC0468v abstractC0468v) {
        AbstractC0732i abstractC0732iY = AbstractC0420a.y(abstractC0472z);
        InterfaceC0845h interfaceC0845hT = abstractC0472z.t();
        AbstractC0468v abstractC0468vJ = AbstractC0729f.j(abstractC0472z);
        List listH = AbstractC0729f.h(abstractC0472z);
        List listJ0 = R2.m.J0(AbstractC0729f.l(abstractC0472z));
        ArrayList arrayList = new ArrayList(R2.o.C0(listJ0));
        Iterator it = listJ0.iterator();
        while (it.hasNext()) {
            arrayList.add(((N) it.next()).b());
        }
        return AbstractC0729f.e(abstractC0732iY, interfaceC0845hT, abstractC0468vJ, listH, arrayList, abstractC0468v, true).N0(abstractC0472z.K0());
    }

    public static final ArrayList l(Q q2, c cVar) {
        List list = q2.f;
        d3.i.d("argumentList", list);
        Q qI0 = x.I0(q2, (C0837c) ((G4) cVar.f1138d).f);
        Iterable iterableL = qI0 != null ? l(qI0, cVar) : null;
        if (iterableL == null) {
            iterableL = u.f2325c;
        }
        return R2.m.Y0(list, iterableL);
    }

    public static G n(List list, InterfaceC0845h interfaceC0845h, J j3, InterfaceC0807j interfaceC0807j) {
        G gJ;
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((C0459l) it.next()).getClass();
            if (interfaceC0845h.isEmpty()) {
                G.f7019d.getClass();
                gJ = G.f7020e;
            } else {
                v vVar = G.f7019d;
                List listV = AbstractC0420a.V(new C0455h(interfaceC0845h));
                vVar.getClass();
                gJ = v.j(listV);
            }
            arrayList.add(gJ);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            R2.s.E0(arrayList2, (Iterable) it2.next());
        }
        G.f7019d.getClass();
        return v.j(arrayList2);
    }

    public static final InterfaceC0802e p(c cVar, Q q2, int i5) {
        Q3.b bVarL = L2.b.l((N3.f) ((G4) cVar.f1138d).f5378d, i5);
        r4.r rVarL = r4.m.l(r4.m.k(q2, new d4.x(cVar, 2)), z.f6584d);
        ArrayList arrayList = new ArrayList();
        Iterator it = rVarL.iterator();
        while (true) {
            r4.q qVar = (r4.q) it;
            if (!qVar.hasNext()) {
                break;
            }
            arrayList.add(qVar.next());
        }
        int iH = r4.m.h(r4.m.k(bVarL, y.f6583l));
        while (arrayList.size() < iH) {
            arrayList.add(0);
        }
        return ((d4.i) ((G4) cVar.f1138d).f5377c).f6539l.v(bVarL, arrayList);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("idToken", (String) this.f1138d);
        ((String) this.f1139e).getClass();
        jSONObject.put("mfaProvider", 1);
        String str = (String) this.f;
        if (str != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("phoneNumber", str);
            String str2 = (String) this.f1141h;
            if (!TextUtils.isEmpty(str2)) {
                jSONObject2.put("recaptchaToken", str2);
            }
            String str3 = (String) this.f1142i;
            if (!TextUtils.isEmpty(str3)) {
                jSONObject2.put("safetyNetToken", str3);
            }
            C0302m4 c0302m4 = (C0302m4) this.f1143j;
            if (c0302m4 != null) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("appSignatureHash", c0302m4.f5652d);
                jSONObject2.put("autoRetrievalInfo", jSONObject3);
            }
            jSONObject.put("phoneEnrollmentInfo", jSONObject2);
        }
        return jSONObject.toString();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void b(String str) {
        ((InterfaceC0248d4) this.f1138d).b(str);
    }

    @Override // J3.m
    public void d() {
        HashMap map = (HashMap) this.f;
        d dVar = (d) this.f1139e;
        dVar.getClass();
        Q3.b bVar = (Q3.b) this.f1141h;
        d3.i.e("annotationClassId", bVar);
        d3.i.e("arguments", map);
        boolean zJ = false;
        if (d3.i.a(bVar, AbstractC0711a.f8335b)) {
            Object obj = map.get(Q3.f.e("value"));
            V3.r rVar = obj instanceof V3.r ? (V3.r) obj : null;
            if (rVar != null) {
                Object obj2 = rVar.f2797a;
                V3.p pVar = obj2 instanceof V3.p ? (V3.p) obj2 : null;
                if (pVar != null) {
                    zJ = dVar.j(pVar.f2809a.f2795a);
                }
            }
        }
        if (zJ || dVar.j(bVar)) {
            return;
        }
        ((List) this.f1142i).add(new C0840c(((InterfaceC0802e) this.f1140g).q(), map, (InterfaceC0786N) this.f1143j));
    }

    public InterfaceC0789Q e(int i5) {
        InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) ((Map) this.f1143j).get(Integer.valueOf(i5));
        if (interfaceC0789Q != null) {
            return interfaceC0789Q;
        }
        c cVar = (c) this.f1139e;
        if (cVar != null) {
            return cVar.e(i5);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03bf A[PHI: r4
      0x03bf: PHI (r4v8 h4.z) = (r4v7 h4.z), (r4v14 h4.z) binds: [B:156:0x03da, B:150:0x03b1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0142  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC0472z f(Q q2, boolean z4) {
        J jD;
        InterfaceC0804g interfaceC0804gP;
        Object next;
        AbstractC0472z abstractC0472zR;
        AbstractC0472z abstractC0472zP;
        AbstractC0468v abstractC0468vB;
        int size;
        Q qL;
        int i5;
        Object o2;
        d3.i.e("proto", q2);
        boolean zQ = q2.q();
        G4 g42 = (G4) this.f1138d;
        if (zQ) {
            if (L2.b.l((N3.f) g42.f5378d, q2.f1484k).f2232c) {
                ((d4.i) g42.f5377c).f6534g.getClass();
            }
        } else if ((q2.f1479e & 128) == 128) {
            if (L2.b.l((N3.f) g42.f5378d, q2.n).f2232c) {
                ((d4.i) g42.f5377c).f6534g.getClass();
            }
        }
        if (q2.q()) {
            interfaceC0804gP = (InterfaceC0804g) ((g4.j) this.f1141h).e(Integer.valueOf(q2.f1484k));
            if (interfaceC0804gP == null) {
                interfaceC0804gP = p(this, q2, q2.f1484k);
            }
        } else {
            int i6 = q2.f1479e;
            if ((i6 & 32) == 32) {
                interfaceC0804gP = e(q2.f1485l);
                if (interfaceC0804gP == null) {
                    j4.i iVar = j4.i.f7647a;
                    jD = j4.i.d(j4.h.f7635q, String.valueOf(q2.f1485l), (String) this.f1140g);
                }
            } else if ((i6 & 64) == 64) {
                String strR = ((N3.f) g42.f5378d).r(q2.f1486m);
                Iterator it = R2.m.g1(((Map) this.f1143j).values()).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (d3.i.a(((InterfaceC0789Q) next).getName().b(), strR)) {
                        break;
                    }
                }
                InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) next;
                if (interfaceC0789Q == null) {
                    j4.i iVar2 = j4.i.f7647a;
                    jD = j4.i.d(j4.h.f7636r, strR, ((InterfaceC0807j) g42.f5379e).toString());
                } else {
                    interfaceC0804gP = interfaceC0789Q;
                }
            } else if ((i6 & 128) == 128) {
                interfaceC0804gP = (InterfaceC0804g) ((g4.j) this.f1142i).e(Integer.valueOf(q2.n));
                if (interfaceC0804gP == null) {
                    interfaceC0804gP = p(this, q2, q2.n);
                }
            } else {
                j4.i iVar3 = j4.i.f7647a;
                jD = j4.i.d(j4.h.f7638t, new String[0]);
            }
            if (!j4.i.f(jD.i())) {
                j4.i iVar4 = j4.i.f7647a;
                return j4.i.e(j4.h.f7643y, u.f2325c, jD, (String[]) Arrays.copyOf(new String[]{jD.toString()}, 1));
            }
            f4.a aVar = new f4.a(((d4.i) g42.f5377c).f6529a, new B3.c(this, 5, q2));
            d4.i iVar5 = (d4.i) g42.f5377c;
            List list = iVar5.f6545s;
            InterfaceC0807j interfaceC0807j = (InterfaceC0807j) g42.f5379e;
            G gN = n(list, aVar, jD, interfaceC0807j);
            ArrayList arrayListL = l(q2, this);
            ArrayList arrayList = new ArrayList(R2.o.C0(arrayListL));
            Iterator it2 = arrayListL.iterator();
            int i7 = 0;
            while (true) {
                boolean zHasNext = it2.hasNext();
                C0837c c0837c = (C0837c) g42.f;
                if (!zHasNext) {
                    List listG1 = R2.m.g1(arrayList);
                    InterfaceC0804g interfaceC0804gI = jD.i();
                    if (z4 && (interfaceC0804gI instanceof f4.t)) {
                        f4.t tVar = (f4.t) interfaceC0804gI;
                        d3.i.e("<this>", tVar);
                        C0451d c0451d = new C0451d();
                        List listK = tVar.f6902i.k();
                        ArrayList arrayList2 = new ArrayList(R2.o.C0(listK));
                        Iterator it3 = listK.iterator();
                        while (it3.hasNext()) {
                            arrayList2.add(((InterfaceC0789Q) it3.next()).a());
                        }
                        com.google.firebase.messaging.p pVar = new com.google.firebase.messaging.p(q, tVar, listG1, R2.z.C1(R2.m.l1(arrayList2, listG1)), 15);
                        G.f7019d.getClass();
                        G g5 = G.f7020e;
                        d3.i.e("attributes", g5);
                        AbstractC0472z abstractC0472zH = c0451d.h(pVar, g5, false, 0, true);
                        List list2 = iVar5.f6545s;
                        ArrayList arrayListW0 = R2.m.W0(aVar, abstractC0472zH.t());
                        abstractC0472zR = abstractC0472zH.N0(X.f(abstractC0472zH) || q2.f1480g).P0(n(list2, arrayListW0.isEmpty() ? C0844g.f9041a : new C0846i(0, arrayListW0), jD, interfaceC0807j));
                    } else if (N3.e.f1885a.c(q2.f1491s).booleanValue()) {
                        boolean z5 = q2.f1480g;
                        int size2 = jD.k().size() - listG1.size();
                        if (size2 != 0) {
                            if (size2 == 1 && (size = listG1.size() - 1) >= 0) {
                                J jH = jD.g().v(size).H();
                                d3.i.d("functionTypeConstructor.…on(arity).typeConstructor", jH);
                                abstractC0472zP = C0451d.r(gN, jH, listG1, z5);
                            } else {
                                abstractC0472zP = null;
                            }
                            if (abstractC0472zP != null) {
                                j4.i iVar6 = j4.i.f7647a;
                                abstractC0472zR = j4.i.e(j4.h.f7637s, listG1, jD, new String[0]);
                            } else {
                                abstractC0472zR = abstractC0472zP;
                            }
                        } else {
                            AbstractC0472z abstractC0472zR2 = C0451d.r(gN, jD, listG1, z5);
                            InterfaceC0804g interfaceC0804gI2 = abstractC0472zR2.J0().i();
                            if ((interfaceC0804gI2 != null ? AbstractC0729f.i(interfaceC0804gI2) : null) == EnumC0747e.f) {
                                N n = (N) R2.m.V0(AbstractC0729f.l(abstractC0472zR2));
                                if (n == null || (abstractC0468vB = n.b()) == null) {
                                    abstractC0472zR2 = null;
                                } else {
                                    InterfaceC0804g interfaceC0804gI3 = abstractC0468vB.J0().i();
                                    Q3.c cVarG = interfaceC0804gI3 != null ? X3.f.g(interfaceC0804gI3) : null;
                                    if (abstractC0468vB.u0().size() == 1 && (d3.i.a(cVarG, o3.n.f) || d3.i.a(cVarG, A.f6517a))) {
                                        AbstractC0468v abstractC0468vB2 = ((N) R2.m.b1(abstractC0468vB.u0())).b();
                                        d3.i.d("continuationArgumentType.arguments.single().type", abstractC0468vB2);
                                        InterfaceC0799b interfaceC0799b = interfaceC0807j instanceof InterfaceC0799b ? (InterfaceC0799b) interfaceC0807j : null;
                                        abstractC0472zR2 = d3.i.a(interfaceC0799b != null ? X3.f.c(interfaceC0799b) : null, w.f6580a) ? c(abstractC0472zR2, abstractC0468vB2) : c(abstractC0472zR2, abstractC0468vB2);
                                    }
                                }
                                abstractC0472zP = abstractC0472zR2;
                            }
                            if (abstractC0472zP != null) {
                            }
                        }
                    } else {
                        abstractC0472zR = C0451d.r(gN, jD, listG1, q2.f1480g);
                        if (N3.e.f1886b.c(q2.f1491s).booleanValue()) {
                            abstractC0472zP = C0451d.p(abstractC0472zR, true);
                            if (abstractC0472zP == null) {
                                throw new IllegalStateException(("null DefinitelyNotNullType for '" + abstractC0472zR + '\'').toString());
                            }
                            abstractC0472zR = abstractC0472zP;
                        }
                    }
                    d3.i.e("typeTable", c0837c);
                    int i8 = q2.f1479e;
                    if ((i8 & 1024) == 1024) {
                        qL = q2.f1489q;
                    } else {
                        qL = (i8 & 2048) == 2048 ? c0837c.l(q2.f1490r) : null;
                    }
                    if (qL != null) {
                        abstractC0472zR = AbstractC0450c.z(abstractC0472zR, f(qL, false));
                    }
                    if (q2.q()) {
                        L2.b.l((N3.f) g42.f5378d, q2.f1484k);
                        iVar5.f6544r.getClass();
                        d3.i.e("computedType", abstractC0472zR);
                    }
                    return abstractC0472zR;
                }
                Object next2 = it2.next();
                int i9 = i7 + 1;
                if (i7 < 0) {
                    R2.n.B0();
                    throw null;
                }
                O o5 = (O) next2;
                List listK2 = jD.k();
                d3.i.d("constructor.parameters", listK2);
                InterfaceC0789Q interfaceC0789Q2 = (InterfaceC0789Q) R2.m.P0(i7, listK2);
                L3.N n5 = o5.f1459e;
                if (n5 == L3.N.STAR) {
                    o2 = interfaceC0789Q2 == null ? new D(iVar5.f6530b.g()) : new E(interfaceC0789Q2);
                } else {
                    d3.i.d("typeArgumentProto.projection", n5);
                    int iOrdinal = n5.ordinal();
                    if (iOrdinal == 0) {
                        i5 = 2;
                    } else if (iOrdinal == 1) {
                        i5 = 3;
                    } else {
                        if (iOrdinal != 2) {
                            if (iOrdinal != 3) {
                                throw new A0.c();
                            }
                            throw new IllegalArgumentException("Only IN, OUT and INV are supported. Actual argument: " + n5);
                        }
                        i5 = 1;
                    }
                    d3.i.e("typeTable", c0837c);
                    int i10 = o5.f1458d;
                    Q qL2 = (i10 & 2) == 2 ? o5.f : (i10 & 4) == 4 ? c0837c.l(o5.f1460g) : null;
                    o2 = qL2 == null ? new h4.O(j4.i.c(j4.h.f7621D, o5.toString())) : new h4.O(i5, o(qL2));
                }
                arrayList.add(o2);
                i7 = i9;
            }
        }
        jD = interfaceC0804gP.H();
        d3.i.d("classifier.typeConstructor", jD);
        if (!j4.i.f(jD.i())) {
        }
    }

    @Override // J3.m
    public void g(Q3.f fVar, Object obj) {
        ((HashMap) this.f).put(fVar, d.b((d) this.f1138d, fVar, obj));
    }

    @Override // P2.a
    public Object get() {
        return new Q0.j((Context) ((P2.a) this.f1138d).get(), (M0.f) ((P2.a) this.f1139e).get(), (R0.c) ((P2.a) this.f).get(), (Q0.d) ((P2.a) this.f1140g).get(), (Executor) ((P2.a) this.f1141h).get(), (S0.c) ((P2.a) this.f1142i).get(), (T0.b) ((P2.a) this.f1143j).get());
    }

    @Override // J3.m
    public void h(Q3.f fVar, Q3.b bVar, Q3.f fVar2) {
        ((HashMap) this.f).put(fVar, new V3.i(bVar, fVar2));
    }

    @Override // J3.m
    public void i(Q3.f fVar, V3.f fVar2) {
        ((HashMap) this.f).put(fVar, new V3.r(new V3.p(fVar2)));
    }

    @Override // J3.m
    public m j(Q3.b bVar, Q3.f fVar) {
        ArrayList arrayList = new ArrayList();
        return new D3.e(((d) this.f1138d).k(bVar, InterfaceC0786N.f8790a, arrayList), this, fVar, arrayList);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void k(Y3 y3) {
        List list = ((C0349u4) y3).f5745c.f5769c;
        if (list == null || list.isEmpty()) {
            ((InterfaceC0248d4) this.f1138d).b("No users.");
            return;
        }
        C0355v4 c0355v4 = (C0355v4) list.get(0);
        B4 b42 = c0355v4.f5757h;
        List list2 = b42 != null ? b42.f5341c : null;
        if (list2 != null && !list2.isEmpty()) {
            String str = (String) this.f1139e;
            boolean zIsEmpty = TextUtils.isEmpty(str);
            String str2 = (String) this.f;
            if (zIsEmpty) {
                ((A4) list2.get(0)).f5330g = str2;
            } else {
                int i5 = 0;
                while (true) {
                    if (i5 >= list2.size()) {
                        break;
                    }
                    if (((A4) list2.get(i5)).f.equals(str)) {
                        ((A4) list2.get(i5)).f5330g = str2;
                        break;
                    }
                    i5++;
                }
            }
        }
        c0355v4.f5762m = ((Boolean) this.f1140g).booleanValue();
        c0355v4.n = (Y1.r) this.f1141h;
        C0373y4 c0373y4 = (C0373y4) this.f1143j;
        G3 g32 = (G3) this.f1142i;
        g32.getClass();
        try {
            g32.f5375a.c(c0373y4, c0355v4);
        } catch (RemoteException e5) {
            g32.f5376b.d("RemoteException when sending get token and account info user response", e5, new Object[0]);
        }
    }

    @Override // J3.m
    public n m(Q3.f fVar) {
        return new com.google.firebase.messaging.p((d) this.f1138d, fVar, this);
    }

    public AbstractC0468v o(Q q2) {
        d3.i.e("proto", q2);
        if (!((q2.f1479e & 2) == 2)) {
            return f(q2, true);
        }
        G4 g42 = (G4) this.f1138d;
        String strR = ((N3.f) g42.f5378d).r(q2.f1481h);
        AbstractC0472z abstractC0472zF = f(q2, true);
        C0837c c0837c = (C0837c) g42.f;
        d3.i.e("typeTable", c0837c);
        int i5 = q2.f1479e;
        Q qL = (i5 & 4) == 4 ? q2.f1482i : (i5 & 8) == 8 ? c0837c.l(q2.f1483j) : null;
        d3.i.b(qL);
        return ((d4.i) g42.f5377c).f6537j.c(q2, strR, abstractC0472zF, f(qL, true));
    }

    public void q(Q3.f fVar, V3.g gVar) {
        if (fVar != null) {
            ((HashMap) this.f).put(fVar, gVar);
        }
    }

    public void r(C0302m4 c0302m4, InterfaceC0248d4 interfaceC0248d4) throws IOException {
        V3 v32 = (V3) this.f1138d;
        AbstractC0332s.l(v32.j("/getAccountInfo", (String) this.f1142i), c0302m4, interfaceC0248d4, C0349u4.class, (C0230a4) v32.f5455b);
    }

    public void s(d dVar, InterfaceC0248d4 interfaceC0248d4) throws IOException {
        if (((Y1.a) dVar.f1147g) != null) {
            t().f5510e = ((Y1.a) dVar.f1147g).f2920j;
        }
        V3 v32 = (V3) this.f1138d;
        AbstractC0332s.l(v32.j("/getOobConfirmationCode", (String) this.f1142i), dVar, interfaceC0248d4, AbstractC0367x4.class, (C0230a4) v32.f5455b);
    }

    public C0230a4 t() {
        if (((C0230a4) this.f1143j) == null) {
            this.f1143j = new C0230a4((Context) this.f1141h, AbstractC0432c.i("X", Integer.toString(((Z3) this.f1140g).f5498a)));
        }
        return (C0230a4) this.f1143j;
    }

    public String toString() {
        String str;
        switch (this.f1137c) {
            case 7:
                StringBuilder sb = new StringBuilder();
                sb.append((String) this.f);
                c cVar = (c) this.f1139e;
                if (cVar == null) {
                    str = "";
                } else {
                    str = ". Child of " + ((String) cVar.f);
                }
                sb.append(str);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public c(InterfaceC0248d4 interfaceC0248d4, Boolean bool, G3 g32, C0373y4 c0373y4) {
        this.f1137c = 4;
        this.f1138d = interfaceC0248d4;
        this.f1139e = null;
        this.f = null;
        this.f1140g = bool;
        this.f1141h = null;
        this.f1142i = g32;
        this.f1143j = c0373y4;
    }

    public c(FirebaseAuthFallbackService firebaseAuthFallbackService, String str, Z3 z32) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.f1137c = 5;
        AbstractC0213D.e(firebaseAuthFallbackService);
        this.f1141h = firebaseAuthFallbackService.getApplicationContext();
        AbstractC0213D.c(str);
        this.f1142i = str;
        this.f1140g = z32;
        this.f = null;
        this.f1138d = null;
        this.f1139e = null;
        String strI = AbstractC0332s.i("firebear.secureToken");
        if (TextUtils.isEmpty(strI)) {
            C0713b c0713b = AbstractC0296l4.f5642a;
            synchronized (c0713b) {
                B.f.F(c0713b.getOrDefault(str, null));
            }
            strI = "https://".concat("securetoken.googleapis.com/v1");
        } else {
            String strValueOf = String.valueOf(strI);
            Log.e("LocalClient", strValueOf.length() != 0 ? "Found hermetic configuration for secureToken URL: ".concat(strValueOf) : new String("Found hermetic configuration for secureToken URL: "));
        }
        if (((V3) this.f) == null) {
            this.f = new V3(strI, t());
        }
        String strI2 = AbstractC0332s.i("firebear.identityToolkit");
        if (TextUtils.isEmpty(strI2)) {
            strI2 = AbstractC0296l4.a(str);
        } else {
            String strValueOf2 = String.valueOf(strI2);
            Log.e("LocalClient", strValueOf2.length() != 0 ? "Found hermetic configuration for identityToolkit URL: ".concat(strValueOf2) : new String("Found hermetic configuration for identityToolkit URL: "));
        }
        if (((V3) this.f1138d) == null) {
            this.f1138d = new V3(strI2, t());
        }
        String strI3 = AbstractC0332s.i("firebear.identityToolkitV2");
        if (TextUtils.isEmpty(strI3)) {
            C0713b c0713b2 = AbstractC0296l4.f5642a;
            synchronized (c0713b2) {
                B.f.F(c0713b2.getOrDefault(str, null));
            }
            strI3 = "https://".concat("identitytoolkit.googleapis.com/v2/accounts");
        } else {
            String strValueOf3 = String.valueOf(strI3);
            Log.e("LocalClient", strValueOf3.length() != 0 ? "Found hermetic configuration for identityToolkitV2 URL: ".concat(strValueOf3) : new String("Found hermetic configuration for identityToolkitV2 URL: "));
        }
        if (((V3) this.f1139e) == null) {
            this.f1139e = new V3(strI3, t());
        }
        C0713b c0713b3 = AbstractC0296l4.f5643b;
        synchronized (c0713b3) {
            c0713b3.put(str, new WeakReference(this));
        }
    }

    public c(String str, String str2, String str3, String str4, String str5) {
        this.f1137c = 6;
        AbstractC0213D.c(str);
        this.f1138d = str;
        AbstractC0213D.c(EternalContract.DEVICE_TYPE_PHONE);
        this.f1139e = EternalContract.DEVICE_TYPE_PHONE;
        this.f = str2;
        this.f1140g = str3;
        this.f1141h = str4;
        this.f1142i = str5;
    }

    public c(Account account, C0714c c0714c, String str, String str2) {
        this.f1137c = 3;
        C0766a c0766a = C0766a.f8754c;
        this.f1138d = account;
        Set setEmptySet = c0714c == null ? Collections.emptySet() : Collections.unmodifiableSet(c0714c);
        this.f1139e = setEmptySet;
        Map mapEmptyMap = Collections.emptyMap();
        this.f1140g = str;
        this.f1141h = str2;
        this.f1142i = c0766a;
        HashSet hashSet = new HashSet(setEmptySet);
        Iterator it = mapEmptyMap.values().iterator();
        if (!it.hasNext()) {
            this.f = Collections.unmodifiableSet(hashSet);
        } else {
            B.f.F(it.next());
            throw null;
        }
    }

    public c(G4 g42, c cVar, List list, String str, String str2) {
        Map linkedHashMap;
        this.f1137c = 7;
        d3.i.e("c", g42);
        d3.i.e("debugName", str);
        this.f1138d = g42;
        this.f1139e = cVar;
        this.f = str;
        this.f1140g = str2;
        d4.i iVar = (d4.i) g42.f5377c;
        this.f1141h = ((g4.l) iVar.f6529a).c(new d4.x(this, 0));
        this.f1142i = ((g4.l) iVar.f6529a).c(new d4.x(this, 1));
        if (list.isEmpty()) {
            linkedHashMap = R2.v.f2326c;
        } else {
            linkedHashMap = new LinkedHashMap();
            Iterator it = list.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                W w2 = (W) it.next();
                linkedHashMap.put(Integer.valueOf(w2.f), new f4.u((G4) this.f1138d, w2, i5));
                i5++;
            }
        }
        this.f1143j = linkedHashMap;
    }

    public c(P2.a aVar, P2.a aVar2, P2.a aVar3, P0.e eVar, P2.a aVar4, P2.a aVar5) {
        this.f1137c = 2;
        e4.d dVar = T0.a.f2713a;
        this.f1138d = aVar;
        this.f1139e = aVar2;
        this.f = aVar3;
        this.f1140g = eVar;
        this.f1141h = aVar4;
        this.f1142i = aVar5;
        this.f1143j = dVar;
    }

    public c(d dVar, InterfaceC0802e interfaceC0802e, Q3.b bVar, List list, InterfaceC0786N interfaceC0786N) {
        this.f1137c = 0;
        this.f1139e = dVar;
        this.f1140g = interfaceC0802e;
        this.f1141h = bVar;
        this.f1142i = list;
        this.f1143j = interfaceC0786N;
        this.f1138d = dVar;
        this.f = new HashMap();
    }
}

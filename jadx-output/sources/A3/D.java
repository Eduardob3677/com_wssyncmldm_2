package A3;

import J.InterfaceC0043q;
import J.Q;
import J.h0;
import J.o0;
import J.q0;
import L3.C0055d;
import L3.C0056e;
import L3.C0058g;
import L3.C0063l;
import L3.C0070t;
import L3.C0075y;
import L3.EnumC0054c;
import L3.K;
import L3.L;
import L3.W;
import R3.AbstractC0080b;
import R3.C0094p;
import android.animation.ValueAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import c1.AbstractC0213D;
import c3.InterfaceC0222b;
import com.google.android.datatransport.cct.CctBackendFactory;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p000firebaseauthapi.A0;
import com.google.android.gms.internal.p000firebaseauthapi.C0303n;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.android.gms.internal.p000firebaseauthapi.E0;
import com.google.android.gms.internal.p000firebaseauthapi.F2;
import com.google.android.gms.internal.p000firebaseauthapi.T;
import com.google.android.gms.internal.p000firebaseauthapi.X;
import com.google.android.gms.internal.p000firebaseauthapi.Y;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.firebase.messaging.AbstractServiceC0383d;
import com.google.firebase.messaging.ExecutorC0382c;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.providers.mo.IDMMoInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.samsung.android.lib.episode.EternalContract;
import com.wssyncmldm.R;
import d4.InterfaceC0396a;
import f1.AbstractC0420a;
import h3.C0446b;
import h3.C0447c;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0460m;
import h4.J;
import h4.N;
import h4.O;
import h4.Z;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import k.Q0;
import o.C0713b;
import o3.AbstractC0732i;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;
import s2.C0837c;
import s3.C0840c;
import u1.InterfaceC0863a;
import u3.C0879k;
import u3.V;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public final class D implements C, InterfaceC0043q, d4.e, N0.b, N3.f, i4.b, InterfaceC0863a, u1.c, InterfaceC0396a {
    public static D f;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79c;

    /* renamed from: d, reason: collision with root package name */
    public Object f80d;

    /* renamed from: e, reason: collision with root package name */
    public Object f81e;

    public /* synthetic */ D(int i5, boolean z4) {
        this.f79c = i5;
    }

    public static D P0(Context context, String str) {
        String str2;
        D d2 = f;
        if (d2 == null || ((str2 = (String) d2.f80d) != str && (str2 == null || !str2.equals(str)))) {
            f = new D(context, 17, str);
        }
        return f;
    }

    @Override // i4.b
    public Set A(k4.d dVar) {
        return i3.x.K0(this, dVar);
    }

    @Override // i4.b
    public J A0(k4.d dVar) {
        return i3.x.i1(dVar);
    }

    @Override // i4.b
    public boolean B(k4.f fVar) {
        return i3.x.n0(fVar);
    }

    @Override // i4.b
    public O B0(k4.c cVar) {
        return i3.x.n(cVar);
    }

    @Override // i4.b
    public void C(k4.d dVar) {
        i3.x.B0(dVar);
    }

    public void C0(String str, Object obj) {
        ArrayList arrayList = (ArrayList) this.f80d;
        String strValueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(strValueOf.length() + str.length() + 1);
        sb.append(str);
        sb.append("=");
        sb.append(strValueOf);
        arrayList.add(sb.toString());
    }

    @Override // i4.b
    public boolean D(k4.d dVar) {
        d3.i.e("<this>", dVar);
        AbstractC0472z abstractC0472zL = i3.x.l(dVar);
        return (abstractC0472zL != null ? i3.x.h(this, abstractC0472zL) : null) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [Q2.e] */
    public C0840c D0(C0058g c0058g, N3.f fVar) {
        d3.i.e("proto", c0058g);
        d3.i.e("nameResolver", fVar);
        InterfaceC0802e interfaceC0802eG = o4.a.g((InterfaceC0821x) this.f80d, L2.b.l(fVar, c0058g.f1643e), (com.google.firebase.messaging.p) this.f81e);
        Map mapC1 = R2.v.f2326c;
        if (c0058g.f.size() != 0 && !j4.i.f(interfaceC0802eG) && T3.e.o(interfaceC0802eG, 5)) {
            Collection collectionK = interfaceC0802eG.k();
            d3.i.d("annotationClass.constructors", collectionK);
            C0879k c0879k = (C0879k) R2.m.c1(collectionK);
            if (c0879k != null) {
                List listW0 = c0879k.w0();
                d3.i.d("constructor.valueParameters", listW0);
                int iY1 = R2.z.y1(R2.o.C0(listW0));
                if (iY1 < 16) {
                    iY1 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iY1);
                for (Object obj : listW0) {
                    linkedHashMap.put(((V) obj).getName(), obj);
                }
                List<C0056e> list = c0058g.f;
                d3.i.d("proto.argumentList", list);
                ArrayList arrayList = new ArrayList();
                for (C0056e c0056e : list) {
                    d3.i.d("it", c0056e);
                    V v4 = (V) linkedHashMap.get(L2.b.v(fVar, c0056e.f1626e));
                    if (v4 != null) {
                        Q3.f fVarV = L2.b.v(fVar, c0056e.f1626e);
                        AbstractC0468v abstractC0468vE = v4.e();
                        d3.i.d("parameter.type", abstractC0468vE);
                        C0055d c0055d = c0056e.f;
                        d3.i.d("proto.value", c0055d);
                        V3.g gVarJ0 = J0(abstractC0468vE, c0055d, fVar);
                        eVar = E0(gVarJ0, abstractC0468vE, c0055d) ? gVarJ0 : null;
                        if (eVar == null) {
                            String str = "Unexpected argument value: actual type " + c0055d.f1601e + " != expected type " + abstractC0468vE;
                            d3.i.e("message", str);
                            eVar = new V3.j(str);
                        }
                        eVar = new Q2.e(fVarV, eVar);
                    }
                    if (eVar != null) {
                        arrayList.add(eVar);
                    }
                }
                mapC1 = R2.z.C1(arrayList);
            }
        }
        return new C0840c(interfaceC0802eG.q(), mapC1, InterfaceC0786N.f8790a);
    }

    @Override // i4.b
    public boolean E(k4.c cVar) {
        d3.i.e("<this>", cVar);
        return i3.x.v0(u0(cVar)) && !i3.x.w0(cVar);
    }

    public boolean E0(V3.g gVar, AbstractC0468v abstractC0468v, C0055d c0055d) {
        EnumC0054c enumC0054c = c0055d.f1601e;
        int i5 = enumC0054c == null ? -1 : d4.b.f6518a[enumC0054c.ordinal()];
        if (i5 != 10) {
            InterfaceC0821x interfaceC0821x = (InterfaceC0821x) this.f80d;
            if (i5 != 13) {
                return d3.i.a(gVar.a(interfaceC0821x), abstractC0468v);
            }
            if (gVar instanceof V3.b) {
                V3.b bVar = (V3.b) gVar;
                if (((List) bVar.f2797a).size() == c0055d.f1608m.size()) {
                    AbstractC0468v abstractC0468vF = interfaceC0821x.g().f(abstractC0468v);
                    Collection collection = (Collection) bVar.f2797a;
                    d3.i.e("<this>", collection);
                    Iterable c0447c = new C0447c(0, collection.size() - 1, 1);
                    if ((c0447c instanceof Collection) && ((Collection) c0447c).isEmpty()) {
                        return true;
                    }
                    Iterator it = c0447c.iterator();
                    while (((C0446b) it).f7007e) {
                        int iA = ((C0446b) it).a();
                        V3.g gVar2 = (V3.g) ((List) bVar.f2797a).get(iA);
                        C0055d c0055d2 = (C0055d) c0055d.f1608m.get(iA);
                        d3.i.d("value.getArrayElement(i)", c0055d2);
                        if (!E0(gVar2, abstractC0468vF, c0055d2)) {
                        }
                    }
                    return true;
                }
            }
            throw new IllegalStateException(("Deserialized ArrayValue should have the same number of elements as the original array value: " + gVar).toString());
        }
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
        if (interfaceC0802e == null) {
            return true;
        }
        Q3.f fVar = AbstractC0732i.f8454e;
        if (AbstractC0732i.b(interfaceC0802e, o3.m.f8492P)) {
            return true;
        }
        return false;
    }

    @Override // i4.b
    public Z F(k4.b bVar) {
        return i3.x.E0(bVar);
    }

    public void F0(String str, InterfaceC0222b interfaceC0222b) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) ((C0837c) this.f81e).f9022c;
        I3.o oVar = new I3.o(this, str);
        interfaceC0222b.e(oVar);
        ArrayList arrayList = oVar.f916b;
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add((String) ((Q2.e) it.next()).f2212c);
        }
        String str2 = (String) oVar.f917c.f2212c;
        String str3 = oVar.f915a;
        d3.i.e("name", str3);
        d3.i.e("ret", str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append('(');
        sb.append(R2.m.S0(arrayList2, "", null, null, J3.s.f1174d, 30));
        sb.append(')');
        if (str2.length() > 1) {
            str2 = "L" + str2 + ';';
        }
        sb.append(str2);
        String string = sb.toString();
        String str4 = (String) this.f80d;
        d3.i.e("internalName", str4);
        d3.i.e("jvmDescriptor", string);
        String str5 = str4 + '.' + string;
        I3.q qVar = (I3.q) oVar.f917c.f2213d;
        ArrayList arrayList3 = new ArrayList(R2.o.C0(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add((I3.q) ((Q2.e) it2.next()).f2213d);
        }
        linkedHashMap.put(str5, new I3.m(qVar, arrayList3));
    }

    @Override // d4.c
    public List G(X x4, AbstractC0080b abstractC0080b, int i5) {
        d3.i.e("proto", abstractC0080b);
        B.f.x(i5, "kind");
        boolean z4 = abstractC0080b instanceof C0075y;
        List list = null;
        c4.a aVar = (c4.a) this.f80d;
        if (z4) {
            C0094p c0094p = aVar.f5281e;
            if (c0094p != null) {
                list = (List) ((C0075y) abstractC0080b).k(c0094p);
            }
        } else {
            if (!(abstractC0080b instanceof L3.G)) {
                throw new IllegalStateException(("Unknown message: " + abstractC0080b).toString());
            }
            int iF = Q0.f(i5);
            if (iF != 1 && iF != 2 && iF != 3) {
                throw new IllegalStateException("Unsupported callable kind with property proto for receiver annotations: ".concat(B.f.P(i5)).toString());
            }
            C0094p c0094p2 = aVar.f5284i;
            if (c0094p2 != null) {
                list = (List) ((L3.G) abstractC0080b).k(c0094p2);
            }
        }
        if (list == null) {
            list = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), (N3.f) x4.f5487b));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CctBackendFactory G0(String str) throws PackageManager.NameNotFoundException {
        Bundle bundle;
        Map mapEmptyMap;
        PackageManager packageManager;
        if (((Map) this.f80d) == null) {
            Context context = (Context) this.f81e;
            try {
                packageManager = context.getPackageManager();
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("BackendRegistry", "Application info not found.");
            }
            if (packageManager == null) {
                Log.w("BackendRegistry", "Context has no PackageManager.");
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128);
                if (serviceInfo == null) {
                    Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                } else {
                    bundle = serviceInfo.metaData;
                    if (bundle != null) {
                        Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                        mapEmptyMap = Collections.emptyMap();
                    } else {
                        HashMap map = new HashMap();
                        for (String str2 : bundle.keySet()) {
                            Object obj = bundle.get(str2);
                            if ((obj instanceof String) && str2.startsWith("backend:")) {
                                for (String str3 : ((String) obj).split(",", -1)) {
                                    String strTrim = str3.trim();
                                    if (!strTrim.isEmpty()) {
                                        map.put(strTrim, str2.substring(8));
                                    }
                                }
                            }
                        }
                        mapEmptyMap = map;
                    }
                    this.f80d = mapEmptyMap;
                }
            }
            bundle = null;
            if (bundle != null) {
            }
            this.f80d = mapEmptyMap;
        }
        String str4 = (String) ((Map) this.f80d).get(str);
        if (str4 == null) {
            return null;
        }
        try {
            return (CctBackendFactory) Class.forName(str4).asSubclass(CctBackendFactory.class).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e5) {
            Log.w("BackendRegistry", "Class " + str4 + " is not found.", e5);
            return null;
        } catch (IllegalAccessException e6) {
            Log.w("BackendRegistry", "Could not instantiate " + str4 + IDMMoInterface.IDM_MO_ROOT_PATH, e6);
            return null;
        } catch (InstantiationException e7) {
            Log.w("BackendRegistry", "Could not instantiate " + str4 + IDMMoInterface.IDM_MO_ROOT_PATH, e7);
            return null;
        } catch (NoSuchMethodException e8) {
            Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e8);
            return null;
        } catch (InvocationTargetException e9) {
            Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e9);
            return null;
        }
    }

    @Override // u1.InterfaceC0863a
    public Object H(u1.h hVar) {
        Bundle bundle;
        switch (this.f79c) {
            case 14:
                Y0.a aVar = (Y0.a) this.f80d;
                aVar.getClass();
                return (hVar.f() && (bundle = (Bundle) hVar.e()) != null && bundle.containsKey("google.messenger")) ? aVar.a((Bundle) this.f81e).i(Y0.m.f2913c, Y0.l.f2912d) : hVar;
            case 24:
                return ((Integer) hVar.e()).intValue() != 402 ? hVar : com.google.firebase.messaging.g.a((Context) this.f80d, (Intent) this.f81e).g(ExecutorC0382c.f6226e, com.google.firebase.messaging.e.f6231e);
            default:
                D d2 = (D) this.f80d;
                String str = (String) this.f81e;
                synchronized (d2) {
                    ((C0713b) d2.f81e).remove(str);
                }
                return hVar;
        }
    }

    public String H0(String str) {
        Resources resources = (Resources) this.f80d;
        int identifier = resources.getIdentifier(str, "string", (String) this.f81e);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    @Override // i4.b
    public k4.d I(k4.d dVar) {
        AbstractC0472z abstractC0472zH0;
        d3.i.e("<this>", dVar);
        C0460m c0460mI = i3.x.i(dVar);
        return (c0460mI == null || (abstractC0472zH0 = i3.x.H0(c0460mI)) == null) ? dVar : abstractC0472zH0;
    }

    public void I0(G.g gVar) {
        int i5 = gVar.f789b;
        Handler handler = (Handler) this.f81e;
        C0837c c0837c = (C0837c) this.f80d;
        if (i5 != 0) {
            handler.post(new G.b(i5, c0837c, 0));
        } else {
            handler.post(new G.a(c0837c, 0, gVar.f788a));
        }
    }

    @Override // d4.InterfaceC0396a
    public Object J(X x4, L3.G g5, AbstractC0468v abstractC0468v) {
        d3.i.e("proto", g5);
        return null;
    }

    public V3.g J0(AbstractC0468v abstractC0468v, C0055d c0055d, N3.f fVar) {
        V3.g dVar;
        d3.i.e("nameResolver", fVar);
        boolean zBooleanValue = N3.e.f1884M.c(c0055d.f1609o).booleanValue();
        EnumC0054c enumC0054c = c0055d.f1601e;
        switch (enumC0054c == null ? -1 : d4.b.f6518a[enumC0054c.ordinal()]) {
            case 1:
                byte b3 = (byte) c0055d.f;
                if (zBooleanValue) {
                    dVar = new V3.x(b3);
                    break;
                } else {
                    dVar = new V3.d(b3);
                    break;
                }
            case 2:
                return new V3.e(Character.valueOf((char) c0055d.f));
            case 3:
                short s5 = (short) c0055d.f;
                if (zBooleanValue) {
                    dVar = new V3.x(s5);
                    break;
                } else {
                    dVar = new V3.u(s5);
                    break;
                }
            case 4:
                int i5 = (int) c0055d.f;
                if (zBooleanValue) {
                    dVar = new V3.x(i5);
                    break;
                } else {
                    dVar = new V3.k(i5);
                    break;
                }
            case 5:
                long j3 = c0055d.f;
                return zBooleanValue ? new V3.x(j3) : new V3.s(j3);
            case 6:
                return new V3.c(c0055d.f1602g);
            case 7:
                return new V3.c(c0055d.f1603h);
            case 8:
                return new V3.c(c0055d.f != 0);
            case 9:
                return new V3.v(fVar.r(c0055d.f1604i));
            case 10:
                return new V3.r(L2.b.l(fVar, c0055d.f1605j), c0055d.n);
            case 11:
                return new V3.i(L2.b.l(fVar, c0055d.f1605j), L2.b.v(fVar, c0055d.f1606k));
            case 12:
                C0058g c0058g = c0055d.f1607l;
                d3.i.d("value.annotation", c0058g);
                dVar = new V3.a((Object) D0(c0058g, fVar));
                break;
            case 13:
                List<C0055d> list = c0055d.f1608m;
                d3.i.d("value.arrayElementList", list);
                ArrayList arrayList = new ArrayList(R2.o.C0(list));
                for (C0055d c0055d2 : list) {
                    AbstractC0472z abstractC0472zE = ((InterfaceC0821x) this.f80d).g().e();
                    d3.i.d("builtIns.anyType", abstractC0472zE);
                    d3.i.d("it", c0055d2);
                    arrayList.add(J0(abstractC0472zE, c0055d2, fVar));
                }
                return new V3.w(arrayList, abstractC0468v);
            default:
                throw new IllegalStateException(("Unsupported annotation argument type: " + c0055d.f1601e + " (expected " + abstractC0468v + ')').toString());
        }
        return dVar;
    }

    @Override // i4.b
    public int K(k4.c cVar) {
        return i3.x.f(cVar);
    }

    public void K0(View view) {
        d.c cVar;
        if (view.isClickable()) {
            ArrayList arrayList = (ArrayList) this.f80d;
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    Iterator it2 = arrayList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            cVar = new d.c(view, (Context) this.f81e);
                            arrayList.add(cVar);
                            break;
                        } else {
                            cVar = (d.c) it2.next();
                            if (!cVar.b()) {
                                cVar.f6489a = view;
                                break;
                            }
                        }
                    }
                } else {
                    cVar = (d.c) it.next();
                    if (cVar.f6489a == view) {
                        break;
                    }
                }
            }
            View view2 = cVar.f6489a;
            if (view2 instanceof ViewGroup) {
                cVar.f6491c = true;
            } else {
                cVar.f6491c = false;
            }
            float width = view2.getWidth();
            cVar.f6490b = (width - (cVar.f.getResources().getDisplayMetrics().density * 3.0f)) / width;
            if (cVar.f6493e) {
                return;
            }
            cVar.f6493e = true;
            ValueAnimator valueAnimator = cVar.f6492d;
            if (valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (fFloatValue == 0.0f) {
                fFloatValue = 1.0f;
            }
            valueAnimator.setFloatValues(fFloatValue, cVar.f6490b);
            valueAnimator.setDuration(100L);
            valueAnimator.setInterpolator(d.c.f6487g);
            valueAnimator.start();
        }
    }

    @Override // i4.b
    public int L(k4.f fVar) {
        return i3.x.J0(fVar);
    }

    public void L0() {
        ((ArrayList) this.f80d).forEach(new A2.a(26));
    }

    @Override // d4.e
    public d4.d M(Q3.b bVar) {
        d3.i.e("classId", bVar);
        J3.f fVar = (J3.f) this.f81e;
        d3.i.e("<this>", fVar.c().f6531c);
        w3.b bVarW = AbstractC0420a.w((e.v) this.f80d, bVar, P3.f.f2161g);
        if (bVarW == null) {
            return null;
        }
        d3.i.a(AbstractC0917d.a(bVarW.f9608a), bVar);
        return fVar.f(bVarW);
    }

    public Q2.i M0(int i5) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z4 = false;
        while (i5 != -1) {
            L3.J j3 = (L3.J) ((K) this.f81e).f1440d.get(i5);
            String str = (String) ((L) this.f80d).f1445d.get(j3.f);
            L3.I i6 = j3.f1434g;
            d3.i.b(i6);
            int iOrdinal = i6.ordinal();
            if (iOrdinal == 0) {
                linkedList2.addFirst(str);
            } else if (iOrdinal == 1) {
                linkedList.addFirst(str);
            } else if (iOrdinal == 2) {
                linkedList2.addFirst(str);
                z4 = true;
            }
            i5 = j3.f1433e;
        }
        return new Q2.i(linkedList, linkedList2, Boolean.valueOf(z4));
    }

    @Override // N3.f
    public boolean N(int i5) {
        return ((Boolean) M0(i5).f2223e).booleanValue();
    }

    public com.google.firebase.messaging.p N0(Q3.f fVar, String str) {
        d3.i.e("name", fVar);
        String strB = fVar.b();
        d3.i.d("name.asString()", strB);
        return new com.google.firebase.messaging.p(this, new J3.r(strB.concat(str)));
    }

    @Override // i4.b
    public boolean O(k4.d dVar) {
        d3.i.e("<this>", dVar);
        return i3.x.l0(i3.x.i1(dVar));
    }

    public void O0(boolean z4, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (((Map) this.f80d)) {
            map = new HashMap((Map) this.f80d);
        }
        synchronized (((Map) this.f81e)) {
            map2 = new HashMap((Map) this.f81e);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z4 || ((Boolean) entry.getValue()).booleanValue()) {
                B.f.F(entry.getKey());
                throw null;
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z4 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((u1.i) entry2.getKey()).c(new W1.h(status));
            }
        }
    }

    @Override // i4.b
    public boolean P(k4.d dVar) {
        d3.i.e("<this>", dVar);
        return i3.x.q0(i3.x.i1(dVar));
    }

    @Override // i4.b
    public N Q(U3.b bVar) {
        return i3.x.L0(bVar);
    }

    public String Q0(String str) {
        C0303n c0303nA;
        String str2;
        C0303n c0303n = (C0303n) this.f81e;
        if (c0303n == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to decrypt payload");
            return null;
        }
        try {
            synchronized (c0303n) {
                try {
                    C0303n c0303n2 = (C0303n) this.f81e;
                    synchronized (c0303n2) {
                        c0303nA = ((Y) c0303n2.f5655d).a();
                    }
                    str2 = new String(((T) c0303nA.t()).a(Base64.decode(str, 8)), "UTF-8");
                } finally {
                }
            }
            return str2;
        } catch (UnsupportedEncodingException | GeneralSecurityException e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.e("FirebearCryptoHelper", strValueOf.length() != 0 ? "Exception encountered while decrypting bytes:\n".concat(strValueOf) : new String("Exception encountered while decrypting bytes:\n"));
            return null;
        }
    }

    @Override // i4.b
    public boolean R(k4.f fVar) {
        return i3.x.q0(fVar);
    }

    public String R0() {
        C0303n c0303nA;
        if (((C0303n) this.f81e) == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to get Public key");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C0303n c0303n = new C0303n(3, byteArrayOutputStream);
        try {
            synchronized (((C0303n) this.f81e)) {
                C0303n c0303n2 = (C0303n) this.f81e;
                synchronized (c0303n2) {
                    c0303nA = ((Y) c0303n2.f5655d).a();
                }
                c0303nA.j().w(c0303n);
            }
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 8);
        } catch (IOException | GeneralSecurityException e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.e("FirebearCryptoHelper", strValueOf.length() != 0 ? "Exception encountered when attempting to get Public Key:\n".concat(strValueOf) : new String("Exception encountered when attempting to get Public Key:\n"));
            return null;
        }
    }

    @Override // i4.b
    public boolean S(InterfaceC0789Q interfaceC0789Q, k4.f fVar) {
        return i3.x.h0(interfaceC0789Q, fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ce A[Catch: F2 | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException -> 0x007d, F2 | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException -> 0x007d, F2 | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException -> 0x007d, F2 | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException -> 0x007d, TRY_ENTER, TryCatch #2 {F2 | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException -> 0x007d, blocks: (B:3:0x0008, B:6:0x0025, B:10:0x003b, B:10:0x003b, B:10:0x003b, B:10:0x003b, B:11:0x003f, B:11:0x003f, B:11:0x003f, B:12:0x0077, B:12:0x0077, B:12:0x0077, B:12:0x0077, B:16:0x0083, B:16:0x0083, B:16:0x0083, B:16:0x0083, B:17:0x008f, B:17:0x008f, B:17:0x008f, B:17:0x008f, B:18:0x0090, B:18:0x0090, B:18:0x0090, B:18:0x0090, B:20:0x009f, B:20:0x009f, B:20:0x009f, B:20:0x009f, B:22:0x00a7, B:22:0x00a7, B:22:0x00a7, B:22:0x00a7, B:23:0x00ab, B:23:0x00ab, B:23:0x00ab, B:23:0x00ab, B:25:0x00b3, B:25:0x00b3, B:25:0x00b3, B:25:0x00b3, B:30:0x00ce, B:30:0x00ce, B:30:0x00ce, B:30:0x00ce, B:28:0x00bb, B:28:0x00bb, B:28:0x00bb, B:31:0x00d0, B:31:0x00d0, B:31:0x00d0, B:31:0x00d0, B:33:0x00d6, B:33:0x00d6, B:33:0x00d6, B:33:0x00d6, B:35:0x00dc, B:35:0x00dc, B:35:0x00dc, B:35:0x00dc, B:36:0x00e2, B:36:0x00e2, B:36:0x00e2, B:36:0x00e2, B:38:0x00e8, B:38:0x00e8, B:38:0x00e8, B:38:0x00e8, B:40:0x00ff, B:40:0x00ff, B:40:0x00ff, B:40:0x00ff, B:42:0x0105, B:42:0x0105, B:42:0x0105, B:42:0x0105, B:46:0x0128, B:46:0x0128, B:46:0x0128, B:46:0x0128, B:43:0x011f, B:43:0x011f, B:43:0x011f, B:43:0x011f, B:44:0x0126, B:44:0x0126, B:44:0x0126, B:44:0x0126, B:47:0x012e, B:47:0x012e, B:47:0x012e, B:47:0x012e), top: B:56:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a2.s S0(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray;
        Y1.k kVar;
        a2.t tVar;
        try {
            String string = jSONObject.getString("cachedTokenState");
            String string2 = jSONObject.getString("applicationName");
            boolean z4 = jSONObject.getBoolean("anonymous");
            String string3 = jSONObject.getString("version");
            String str = string3 != null ? string3 : "2";
            JSONArray jSONArray2 = jSONObject.getJSONArray("userInfos");
            int length = jSONArray2.length();
            ArrayList arrayList = new ArrayList(length);
            for (int i5 = 0; i5 < length; i5++) {
                try {
                    JSONObject jSONObject2 = new JSONObject(jSONArray2.getString(i5));
                    arrayList.add(new a2.q(jSONObject2.optString("userId"), jSONObject2.optString("providerId"), jSONObject2.optString("email"), jSONObject2.optString("phoneNumber"), jSONObject2.optString("displayName"), jSONObject2.optString("photoUrl"), jSONObject2.optBoolean("isEmailVerified"), jSONObject2.optString("rawUserInfo")));
                } catch (JSONException e5) {
                    Log.d("DefaultAuthUserInfo", "Failed to unpack UserInfo from JSON");
                    throw new F2(e5);
                }
            }
            a2.s sVar = new a2.s(W1.g.e(string2), arrayList);
            if (!TextUtils.isEmpty(string)) {
                sVar.f3078c = C0373y4.d(string);
            }
            if (!z4) {
                sVar.f3084j = Boolean.FALSE;
            }
            sVar.f3083i = str;
            if (jSONObject.has("userMetadata")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("userMetadata");
                if (jSONObject3 == null) {
                    tVar = null;
                    if (tVar != null) {
                        sVar.f3085k = tVar;
                    }
                } else {
                    try {
                        tVar = new a2.t(jSONObject3.getLong("lastSignInTimestamp"), jSONObject3.getLong("creationTimestamp"));
                    } catch (JSONException unused) {
                    }
                    if (tVar != null) {
                    }
                }
            }
            if (jSONObject.has("userMultiFactorInfo") && (jSONArray = jSONObject.getJSONArray("userMultiFactorInfo")) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                    JSONObject jSONObject4 = new JSONObject(jSONArray.getString(i6));
                    if (!EternalContract.DEVICE_TYPE_PHONE.equals(jSONObject4.optString("factorIdKey"))) {
                        kVar = null;
                    } else {
                        if (!jSONObject4.has("enrollmentTimestamp")) {
                            throw new IllegalArgumentException("An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a PhoneMultiFactorInfo instance.");
                        }
                        kVar = new Y1.k(jSONObject4.optLong("enrollmentTimestamp"), jSONObject4.optString("uid"), jSONObject4.optString("displayName"), jSONObject4.optString("phoneNumber"));
                    }
                    arrayList2.add(kVar);
                }
                sVar.g(arrayList2);
            }
            return sVar;
        } catch (F2 | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException e6) {
            Log.wtf((String) ((A.d) this.f81e).f11b, e6);
            return null;
        }
    }

    @Override // i4.b
    public int T(k4.b bVar) {
        return i3.x.p(bVar);
    }

    @Override // i4.b
    public Z U(ArrayList arrayList) {
        AbstractC0472z abstractC0472z;
        int size = arrayList.size();
        if (size == 0) {
            throw new IllegalStateException("Expected some types".toString());
        }
        if (size == 1) {
            return (Z) R2.m.b1(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        boolean z4 = false;
        boolean z5 = false;
        while (it.hasNext()) {
            Z z6 = (Z) it.next();
            z4 = z4 || AbstractC0450c.i(z6);
            if (z6 instanceof AbstractC0472z) {
                abstractC0472z = (AbstractC0472z) z6;
            } else {
                if (!(z6 instanceof AbstractC0464q)) {
                    throw new A0.c();
                }
                d3.i.e("<this>", z6);
                abstractC0472z = ((AbstractC0464q) z6).f7069d;
                z5 = true;
            }
            arrayList2.add(abstractC0472z);
        }
        if (z4) {
            return j4.i.c(j4.h.f7644z, arrayList.toString());
        }
        i4.t tVar = i4.t.f7196a;
        if (!z5) {
            return tVar.b(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList(R2.o.C0(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(AbstractC0450c.y((Z) it2.next()));
        }
        return C0451d.j(tVar.b(arrayList2), tVar.b(arrayList3));
    }

    @Override // d4.c
    public List V(X x4, L3.G g5) {
        d3.i.e("proto", g5);
        C0094p c0094p = ((c4.a) this.f80d).f5286k;
        List list = c0094p != null ? (List) g5.k(c0094p) : null;
        if (list == null) {
            list = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), (N3.f) x4.f5487b));
        }
        return arrayList;
    }

    @Override // i4.b
    public InterfaceC0789Q W(k4.f fVar, int i5) {
        return i3.x.T(fVar, i5);
    }

    @Override // i4.b
    public N X(k4.c cVar, int i5) {
        return i3.x.C(cVar, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008a  */
    @Override // J.InterfaceC0043q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public q0 Y(View view, q0 q0Var) {
        boolean z4;
        switch (this.f79c) {
            case 1:
                q0 q0VarE = Q.e(view, q0Var);
                if (q0VarE.f1002a.j()) {
                    return q0VarE;
                }
                int iB = q0VarE.b();
                Rect rect = (Rect) this.f80d;
                rect.left = iB;
                rect.top = q0VarE.d();
                rect.right = q0VarE.c();
                rect.bottom = q0VarE.a();
                ViewPager viewPager = (ViewPager) this.f81e;
                int childCount = viewPager.getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    q0 q0VarB = Q.b(viewPager.getChildAt(i5), q0VarE);
                    rect.left = Math.min(q0VarB.b(), rect.left);
                    rect.top = Math.min(q0VarB.d(), rect.top);
                    rect.right = Math.min(q0VarB.c(), rect.right);
                    rect.bottom = Math.min(q0VarB.a(), rect.bottom);
                }
                h0 h0Var = new h0(q0VarE);
                h0Var.e(B.c.b(rect.left, rect.top, rect.right, rect.bottom));
                return h0Var.b();
            default:
                J1.o oVar = (J1.o) this.f81e;
                int i6 = oVar.f1129a;
                B1.c cVar = (B1.c) this.f80d;
                cVar.getClass();
                o0 o0Var = q0Var.f1002a;
                B.c cVarF = o0Var.f(7);
                B.c cVarF2 = o0Var.f(32);
                int i7 = cVarF.f183b;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) cVar.f198e;
                bottomSheetBehavior.f5886w = i7;
                boolean zE = J1.m.e(view);
                int paddingBottom = view.getPaddingBottom();
                int paddingLeft = view.getPaddingLeft();
                int paddingRight = view.getPaddingRight();
                boolean z5 = bottomSheetBehavior.f5878o;
                if (z5) {
                    int iA = q0Var.a();
                    bottomSheetBehavior.f5885v = iA;
                    paddingBottom = iA + oVar.f1131c;
                }
                int i8 = oVar.f1130b;
                boolean z6 = bottomSheetBehavior.f5879p;
                int i9 = cVarF.f182a;
                if (z6) {
                    paddingLeft = (zE ? i8 : i6) + i9;
                }
                boolean z7 = bottomSheetBehavior.f5880q;
                int i10 = cVarF.f184c;
                if (z7) {
                    if (!zE) {
                        i6 = i8;
                    }
                    paddingRight = i6 + i10;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                boolean z8 = true;
                if (!bottomSheetBehavior.f5882s || marginLayoutParams.leftMargin == i9) {
                    z4 = false;
                } else {
                    marginLayoutParams.leftMargin = i9;
                    z4 = true;
                }
                if (bottomSheetBehavior.f5883t && marginLayoutParams.rightMargin != i10) {
                    marginLayoutParams.rightMargin = i10;
                    z4 = true;
                }
                if (bottomSheetBehavior.f5884u) {
                    int i11 = marginLayoutParams.topMargin;
                    int i12 = cVarF.f183b;
                    if (i11 != i12) {
                        marginLayoutParams.topMargin = i12;
                    } else {
                        z8 = z4;
                    }
                }
                if (z8) {
                    view.setLayoutParams(marginLayoutParams);
                }
                view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
                boolean z9 = cVar.f197d;
                if (z9) {
                    bottomSheetBehavior.f5877m = cVarF2.f185d;
                }
                if (z5 || z9) {
                    bottomSheetBehavior.J();
                }
                return q0Var;
        }
    }

    @Override // i4.b
    public AbstractC0472z Z(k4.c cVar) {
        return i3.x.l(cVar);
    }

    @Override // i4.b
    public AbstractC0472z a(C0460m c0460m) {
        return i3.x.H0(c0460m);
    }

    @Override // d4.c
    public ArrayList a0(W w2, N3.f fVar) {
        d3.i.e("proto", w2);
        d3.i.e("nameResolver", fVar);
        Iterable iterable = (List) w2.k(((c4.a) this.f80d).f5290p);
        if (iterable == null) {
            iterable = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), fVar));
        }
        return arrayList;
    }

    @Override // i4.b
    public void b(k4.c cVar) {
        d3.i.e("<this>", cVar);
        i3.x.j(cVar);
    }

    @Override // i4.b
    public AbstractC0472z b0(AbstractC0464q abstractC0464q) {
        return i3.x.D0(abstractC0464q);
    }

    @Override // i4.b
    public boolean c(N n) {
        return i3.x.z0(n);
    }

    @Override // i4.b
    public boolean c0(k4.f fVar) {
        return i3.x.l0(fVar);
    }

    @Override // i4.b
    public void d(k4.d dVar, k4.f fVar) {
    }

    @Override // i4.b
    public int d0(InterfaceC0789Q interfaceC0789Q) {
        d3.i.e("$receiver", interfaceC0789Q);
        int iA = interfaceC0789Q.A();
        B.f.E(iA, "this.variance");
        return i3.x.u(iA);
    }

    @Override // i4.b
    public boolean e(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        return cVar instanceof I3.g;
    }

    @Override // i4.b
    public AbstractC0464q e0(k4.c cVar) {
        return i3.x.j(cVar);
    }

    @Override // i4.b
    public int f(k4.e eVar) {
        d3.i.e("<this>", eVar);
        if (eVar instanceof k4.d) {
            return i3.x.f((k4.c) eVar);
        }
        if (eVar instanceof k4.a) {
            return ((k4.a) eVar).size();
        }
        throw new IllegalStateException(("unknown type argument list type: " + eVar + ", " + d3.q.f6516a.b(eVar.getClass())).toString());
    }

    @Override // i4.b
    public AbstractC0472z f0(k4.d dVar, boolean z4) {
        return i3.x.l1(dVar, z4);
    }

    @Override // i4.b
    public AbstractC0472z g(k4.c cVar) {
        AbstractC0472z abstractC0472zK1;
        d3.i.e("<this>", cVar);
        AbstractC0464q abstractC0464qJ = i3.x.j(cVar);
        if (abstractC0464qJ != null && (abstractC0472zK1 = i3.x.k1(abstractC0464qJ)) != null) {
            return abstractC0472zK1;
        }
        AbstractC0472z abstractC0472zL = i3.x.l(cVar);
        d3.i.b(abstractC0472zL);
        return abstractC0472zL;
    }

    @Override // i4.b
    public boolean g0(k4.f fVar) {
        return i3.x.v0(fVar);
    }

    @Override // P2.a
    public Object get() {
        return new M0.f((Context) ((P2.a) this.f80d).get(), (M0.d) ((P2.a) this.f81e).get());
    }

    @Override // i4.b
    public i4.i h(k4.b bVar) {
        return i3.x.j1(bVar);
    }

    @Override // i4.b
    public AbstractC0472z h0(AbstractC0464q abstractC0464q) {
        return i3.x.k1(abstractC0464q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // i4.b
    public N i(k4.e eVar, int i5) {
        d3.i.e("<this>", eVar);
        if (eVar instanceof k4.d) {
            return i3.x.C((k4.c) eVar, i5);
        }
        if (eVar instanceof k4.a) {
            E e5 = ((k4.a) eVar).get(i5);
            d3.i.d("get(index)", e5);
            return (N) e5;
        }
        throw new IllegalStateException(("unknown type argument list type: " + eVar + ", " + d3.q.f6516a.b(eVar.getClass())).toString());
    }

    @Override // i4.b
    public int i0(N n) {
        return i3.x.e0(n);
    }

    @Override // i4.b
    public boolean j(Z z4) {
        d3.i.e("<this>", z4);
        return i3.x.u0(o(z4)) != i3.x.u0(g(z4));
    }

    @Override // d4.c
    public ArrayList j0(L3.Q q2, N3.f fVar) {
        d3.i.e("proto", q2);
        d3.i.e("nameResolver", fVar);
        Iterable iterable = (List) q2.k(((c4.a) this.f80d).f5289o);
        if (iterable == null) {
            iterable = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), fVar));
        }
        return arrayList;
    }

    @Override // i4.b
    public AbstractC0472z k(k4.d dVar) {
        return i3.x.o(dVar);
    }

    @Override // d4.c
    public ArrayList k0(d4.s sVar) {
        d3.i.e("container", sVar);
        Iterable iterable = (List) sVar.f6571e.k(((c4.a) this.f80d).f5279c);
        if (iterable == null) {
            iterable = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), (N3.f) sVar.f5487b));
        }
        return arrayList;
    }

    @Override // i4.b
    public boolean l(k4.f fVar) {
        return i3.x.k0(fVar);
    }

    @Override // i4.b
    public boolean l0(k4.b bVar) {
        return i3.x.y0(bVar);
    }

    @Override // i4.b
    public Z m(k4.d dVar, k4.d dVar2) {
        return i3.x.x(this, dVar, dVar2);
    }

    @Override // i4.b
    public boolean m0(k4.d dVar) {
        return i3.x.u0(dVar);
    }

    @Override // i4.b
    public Z n(k4.c cVar) {
        return i3.x.F0(cVar);
    }

    @Override // i4.b
    public boolean n0(k4.b bVar) {
        d3.i.e("$receiver", bVar);
        return bVar instanceof U3.a;
    }

    @Override // i4.b
    public AbstractC0472z o(k4.c cVar) {
        AbstractC0472z abstractC0472zD0;
        d3.i.e("<this>", cVar);
        AbstractC0464q abstractC0464qJ = i3.x.j(cVar);
        if (abstractC0464qJ != null && (abstractC0472zD0 = i3.x.D0(abstractC0464qJ)) != null) {
            return abstractC0472zD0;
        }
        AbstractC0472z abstractC0472zL = i3.x.l(cVar);
        d3.i.b(abstractC0472zL);
        return abstractC0472zL;
    }

    @Override // i4.b
    public Collection o0(k4.f fVar) {
        return i3.x.f1(fVar);
    }

    @Override // u1.c
    public void onComplete(u1.h hVar) {
        switch (this.f79c) {
            case 18:
                ((Map) ((D) this.f81e).f81e).remove((u1.i) this.f80d);
                break;
            default:
                ((AbstractServiceC0383d) this.f80d).m1x83fa35aa((Intent) this.f81e, hVar);
                break;
        }
    }

    @Override // i4.b
    public k4.e p(k4.d dVar) {
        return i3.x.g(dVar);
    }

    @Override // i4.b
    public C0460m p0(k4.d dVar) {
        return i3.x.i(dVar);
    }

    @Override // i4.b
    public Z q(N n) {
        return i3.x.b0(n);
    }

    @Override // i4.b
    public boolean q0(k4.c cVar) {
        d3.i.e("<this>", cVar);
        AbstractC0472z abstractC0472zL = i3.x.l(cVar);
        return (abstractC0472zL != null ? i3.x.i(abstractC0472zL) : null) != null;
    }

    @Override // N3.f
    public String r(int i5) {
        String str = (String) ((L) this.f80d).f1445d.get(i5);
        d3.i.d("strings.getString(index)", str);
        return str;
    }

    @Override // i4.b
    public boolean r0(k4.f fVar) {
        return i3.x.m0(fVar);
    }

    @Override // d4.c
    public List s(X x4, AbstractC0080b abstractC0080b, int i5, int i6, L3.Z z4) {
        d3.i.e("container", x4);
        d3.i.e("callableProto", abstractC0080b);
        B.f.x(i5, "kind");
        d3.i.e("proto", z4);
        Iterable iterable = (List) z4.k(((c4.a) this.f80d).n);
        if (iterable == null) {
            iterable = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), (N3.f) x4.f5487b));
        }
        return arrayList;
    }

    @Override // i4.b
    public boolean s0(k4.d dVar, k4.d dVar2) {
        return i3.x.i0(dVar, dVar2);
    }

    @Override // i4.b
    public i4.a t(k4.d dVar) {
        return i3.x.e1(this, dVar);
    }

    @Override // i4.b
    public k4.c t0(k4.c cVar) {
        return i3.x.m1(this, cVar);
    }

    public String toString() {
        switch (this.f79c) {
            case 21:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.f81e.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.f80d;
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    sb.append((String) arrayList.get(i5));
                    if (i5 < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // d4.c
    public List u(X x4, L3.G g5) {
        d3.i.e("proto", g5);
        C0094p c0094p = ((c4.a) this.f80d).f5285j;
        List list = c0094p != null ? (List) g5.k(c0094p) : null;
        if (list == null) {
            list = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), (N3.f) x4.f5487b));
        }
        return arrayList;
    }

    @Override // i4.b
    public J u0(k4.c cVar) {
        d3.i.e("<this>", cVar);
        AbstractC0472z abstractC0472zL = i3.x.l(cVar);
        if (abstractC0472zL == null) {
            abstractC0472zL = o(cVar);
        }
        return i3.x.i1(abstractC0472zL);
    }

    @Override // i4.b
    public N v(k4.d dVar, int i5) {
        d3.i.e("<this>", dVar);
        if (i5 < 0 || i5 >= i3.x.f(dVar)) {
            return null;
        }
        return i3.x.C(dVar, i5);
    }

    @Override // i4.b
    public k4.b v0(k4.d dVar) {
        return i3.x.h(this, dVar);
    }

    @Override // i4.b
    public boolean w(k4.d dVar) {
        return i3.x.o0(dVar);
    }

    @Override // i4.b
    public void w0(k4.d dVar) {
        i3.x.A0(dVar);
    }

    @Override // i4.b
    public boolean x(k4.f fVar) {
        return i3.x.r0(fVar);
    }

    @Override // N3.f
    public String x0(int i5) {
        Q2.i iVarM0 = M0(i5);
        List list = (List) iVarM0.f2221c;
        String strS0 = R2.m.S0((List) iVarM0.f2222d, IDMMoInterface.IDM_MO_ROOT_PATH, null, null, null, 62);
        if (list.isEmpty()) {
            return strS0;
        }
        return R2.m.S0(list, "/", null, null, null, 62) + IDMTndsXmlWbxmlDefine.XML_SLASH + strS0;
    }

    @Override // d4.c
    public List y(d4.s sVar, C0070t c0070t) {
        d3.i.e("container", sVar);
        d3.i.e("proto", c0070t);
        Iterable iterable = (List) c0070t.k(((c4.a) this.f80d).f5287l);
        if (iterable == null) {
            iterable = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), (N3.f) sVar.f5487b));
        }
        return arrayList;
    }

    @Override // d4.InterfaceC0396a
    public Object y0(X x4, L3.G g5, AbstractC0468v abstractC0468v) {
        d3.i.e("proto", g5);
        C0055d c0055d = (C0055d) AbstractC0420a.C(g5, ((c4.a) this.f80d).f5288m);
        if (c0055d == null) {
            return null;
        }
        return ((D) this.f81e).J0(abstractC0468v, c0055d, (N3.f) x4.f5487b);
    }

    @Override // d4.c
    public List z(X x4, AbstractC0080b abstractC0080b, int i5) {
        List list;
        d3.i.e("proto", abstractC0080b);
        B.f.x(i5, "kind");
        boolean z4 = abstractC0080b instanceof C0063l;
        c4.a aVar = (c4.a) this.f80d;
        if (z4) {
            list = (List) ((C0063l) abstractC0080b).k(aVar.f5278b);
        } else if (abstractC0080b instanceof C0075y) {
            list = (List) ((C0075y) abstractC0080b).k(aVar.f5280d);
        } else {
            if (!(abstractC0080b instanceof L3.G)) {
                throw new IllegalStateException(("Unknown message: " + abstractC0080b).toString());
            }
            int iF = Q0.f(i5);
            if (iF == 1) {
                list = (List) ((L3.G) abstractC0080b).k(aVar.f);
            } else if (iF == 2) {
                list = (List) ((L3.G) abstractC0080b).k(aVar.f5282g);
            } else {
                if (iF != 3) {
                    throw new IllegalStateException("Unsupported callable kind with property proto".toString());
                }
                list = (List) ((L3.G) abstractC0080b).k(aVar.f5283h);
            }
        }
        if (list == null) {
            list = R2.u.f2325c;
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((D) this.f81e).D0((C0058g) it.next(), (N3.f) x4.f5487b));
        }
        return arrayList;
    }

    @Override // i4.b
    public boolean z0(k4.f fVar, k4.f fVar2) {
        d3.i.e("c1", fVar);
        d3.i.e("c2", fVar2);
        if (!(fVar instanceof J)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(fVar2 instanceof J)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!i3.x.e(fVar, fVar2)) {
            J j3 = (J) fVar;
            J j5 = (J) fVar2;
            if (!((i4.c) this.f81e).a(j3, j5)) {
                Map map = (Map) this.f80d;
                if (map != null) {
                    J j6 = (J) map.get(j3);
                    J j7 = (J) map.get(j5);
                    if ((j6 == null || !d3.i.a(j6, j5)) && (j7 == null || !d3.i.a(j7, j3))) {
                    }
                }
                return false;
            }
        }
        return true;
    }

    public D(EditText editText) {
        this.f79c = 12;
        this.f80d = editText;
        X.i iVar = new X.i(editText);
        this.f81e = iVar;
        editText.addTextChangedListener(iVar);
        if (X.a.f2843b == null) {
            synchronized (X.a.f2842a) {
                try {
                    if (X.a.f2843b == null) {
                        X.a aVar = new X.a();
                        try {
                            X.a.f2844c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, X.a.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        X.a.f2843b = aVar;
                    }
                } finally {
                }
            }
        }
        editText.setEditableFactory(X.a.f2843b);
    }

    public /* synthetic */ D(Object obj, int i5, Object obj2) {
        this.f79c = i5;
        this.f80d = obj;
        this.f81e = obj2;
    }

    public D(int i5) {
        this.f79c = i5;
        switch (i5) {
            case 20:
                Z0.e eVar = Z0.e.f3005c;
                this.f80d = new SparseIntArray();
                this.f81e = eVar;
                break;
            default:
                this.f80d = Collections.synchronizedMap(new WeakHashMap());
                this.f81e = Collections.synchronizedMap(new WeakHashMap());
                break;
        }
    }

    public D(D d2, u1.i iVar) {
        this.f79c = 18;
        this.f81e = d2;
        this.f80d = iVar;
    }

    public D(Context context, int i5, String str) {
        J3.d dVar;
        String str2;
        this.f79c = i5;
        switch (i5) {
            case 17:
                this.f80d = str;
                C0303n c0303nV = null;
                try {
                    A0.a();
                    dVar = new J3.d();
                    dVar.f1148h = null;
                    dVar.f1144c = null;
                    dVar.f1145d = null;
                    dVar.f1146e = null;
                    dVar.f = null;
                    dVar.t(context, "com.google.firebase.auth.api.crypto." + str);
                    dVar.r(E0.f5359a);
                    str2 = "android-keystore://firebear_master_key_id." + str;
                } catch (IOException | GeneralSecurityException e5) {
                    String strValueOf = String.valueOf(e5.getMessage());
                    Log.e("FirebearCryptoHelper", strValueOf.length() != 0 ? "Exception encountered during crypto setup:\n".concat(strValueOf) : new String("Exception encountered during crypto setup:\n"));
                }
                if (str2.startsWith("android-keystore://")) {
                    dVar.f1145d = str2;
                    c0303nV = dVar.v();
                    this.f81e = c0303nV;
                    return;
                }
                throw new IllegalArgumentException("key URI must start with android-keystore://");
            default:
                AbstractC0213D.e(context);
                AbstractC0213D.c(str);
                this.f80d = context.getApplicationContext().getSharedPreferences("com.google.firebase.auth.api.Store." + str, 0);
                this.f81e = new A.d("StorageHelpers", new String[0]);
                return;
        }
    }

    public D(IBinder iBinder) throws RemoteException {
        this.f79c = 13;
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f80d = new Messenger(iBinder);
            this.f81e = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f81e = new Y0.e(iBinder);
            this.f80d = null;
        } else {
            String strValueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", strValueOf.length() != 0 ? "Invalid interface descriptor: ".concat(strValueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    public D(Object obj) {
        this.f79c = 21;
        AbstractC0213D.e(obj);
        this.f81e = obj;
        this.f80d = new ArrayList();
    }

    public D(String str, W1.a aVar, P1.e eVar) {
        this.f79c = 15;
        this.f81e = str;
        this.f80d = aVar;
    }

    public D(ExecutorService executorService) {
        this.f79c = 26;
        this.f81e = new C0713b();
        this.f80d = executorService;
    }

    public D(HashMap map, i4.c cVar, i4.f fVar) {
        this.f79c = 11;
        d3.i.e("equalityAxioms", cVar);
        d3.i.e("kotlinTypeRefiner", fVar);
        this.f80d = map;
        this.f81e = cVar;
    }

    public D(InterfaceC0821x interfaceC0821x, com.google.firebase.messaging.p pVar, e4.a aVar) {
        this.f79c = 28;
        d3.i.e("module", interfaceC0821x);
        d3.i.e(NetworkAnalyticsConstants.DataPoints.PROTOCOL, aVar);
        this.f80d = aVar;
        this.f81e = new D(interfaceC0821x, pVar);
    }

    public D(InterfaceC0821x interfaceC0821x, com.google.firebase.messaging.p pVar) {
        this.f79c = 29;
        d3.i.e("module", interfaceC0821x);
        d3.i.e("notFoundClasses", pVar);
        this.f80d = interfaceC0821x;
        this.f81e = pVar;
    }

    public D(Context context, int i5) {
        this.f79c = i5;
        switch (i5) {
            case 22:
                AbstractC0213D.e(context);
                Resources resources = context.getResources();
                this.f80d = resources;
                this.f81e = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
                break;
            case 27:
                this.f80d = new ArrayList();
                this.f81e = context;
                break;
            default:
                this.f80d = null;
                this.f81e = context;
                break;
        }
    }

    public D(J3.d dVar, HashMap map, HashMap map2) {
        this.f79c = 6;
        this.f80d = dVar;
        this.f81e = map;
    }

    public D(Map map) {
        this.f79c = 0;
        this.f80d = map;
        this.f81e = new g4.l("Java nullability annotation states").c(new C0005d(1, this));
    }

    public D(C0837c c0837c, String str) {
        this.f79c = 3;
        d3.i.e("className", str);
        this.f81e = c0837c;
        this.f80d = str;
    }

    public D(LinearLayout linearLayout) {
        this.f79c = 4;
        this.f81e = new LinkedList();
        this.f80d = linearLayout;
    }

    public D(ViewPager viewPager) {
        this.f79c = 1;
        this.f81e = viewPager;
        this.f80d = new Rect();
    }
}

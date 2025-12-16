package f1;

import B.f;
import J.Q;
import L2.b;
import Q2.c;
import Q2.d;
import Q2.g;
import Q2.j;
import Q2.l;
import R2.m;
import R2.o;
import R2.s;
import R2.y;
import R3.AbstractC0092n;
import R3.C0088j;
import R3.C0093o;
import R3.C0094p;
import R3.F;
import Z0.h;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Trace;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.Spinner;
import b2.k;
import c3.InterfaceC0221a;
import com.google.android.gms.common.api.Status;
import com.google.firebase.messaging.p;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.providers.mo.IDMMoInterface;
import d3.i;
import dalvik.system.PathClassLoader;
import e.v;
import h3.C0446b;
import h3.C0447c;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.E;
import h4.I;
import h4.J;
import h4.N;
import h4.O;
import h4.X;
import h4.Z;
import i3.InterfaceC0485f;
import i3.InterfaceC0494o;
import i3.x;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import k.D0;
import k.Q0;
import l3.AbstractC0693r;
import l3.j0;
import l3.w0;
import m3.e;
import m3.u;
import o3.AbstractC0732i;
import r3.InterfaceC0783K;
import r3.InterfaceC0789Q;
import r3.InterfaceC0792U;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s2.C0837c;
import s3.InterfaceC0845h;
import u3.C0890w;
import u3.V;

/* renamed from: f1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0420a {

    /* renamed from: a, reason: collision with root package name */
    public static h f6824a = null;

    /* renamed from: b, reason: collision with root package name */
    public static long f6825b = 0;

    /* renamed from: c, reason: collision with root package name */
    public static Method f6826c = null;

    /* renamed from: d, reason: collision with root package name */
    public static String f6827d = "";

    /* renamed from: e, reason: collision with root package name */
    public static I2.a f6828e;

    public static Drawable A(Context context, int i5) {
        return D0.a().c(context, i5);
    }

    public static final AbstractC0468v B(InterfaceC0800c interfaceC0800c) {
        C0890w c0890wD0 = interfaceC0800c.d0();
        C0890w c0890wF = interfaceC0800c.F();
        if (c0890wD0 != null) {
            return c0890wD0.e();
        }
        if (c0890wF != null) {
            if (interfaceC0800c instanceof InterfaceC0806i) {
                return c0890wF.e();
            }
            InterfaceC0807j interfaceC0807jL = interfaceC0800c.l();
            InterfaceC0802e interfaceC0802e = interfaceC0807jL instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807jL : null;
            if (interfaceC0802e != null) {
                return interfaceC0802e.q();
            }
        }
        return null;
    }

    public static final Object C(AbstractC0092n abstractC0092n, C0094p c0094p) {
        i.e("<this>", abstractC0092n);
        i.e("extension", c0094p);
        if (abstractC0092n.l(c0094p)) {
            return abstractC0092n.k(c0094p);
        }
        return null;
    }

    public static final Object D(AbstractC0092n abstractC0092n, C0094p c0094p, int i5) {
        i.e("<this>", abstractC0092n);
        abstractC0092n.p(c0094p);
        C0088j c0088j = abstractC0092n.f2406c;
        c0088j.getClass();
        C0093o c0093o = c0094p.f2413d;
        if (!c0093o.f2409e) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        F f = c0088j.f2397a;
        Object obj = f.get(c0093o);
        if (i5 >= (obj == null ? 0 : ((List) obj).size())) {
            return null;
        }
        abstractC0092n.p(c0094p);
        if (!c0093o.f2409e) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object obj2 = f.get(c0093o);
        if (obj2 != null) {
            return c0094p.a(((List) obj2).get(i5));
        }
        throw new IndexOutOfBoundsException();
    }

    public static final Field F(InterfaceC0494o interfaceC0494o) {
        i.e("<this>", interfaceC0494o);
        j0 j0VarC = w0.c(interfaceC0494o);
        if (j0VarC != null) {
            return (Field) j0VarC.f8184h.getValue();
        }
        return null;
    }

    public static final Method G(InterfaceC0485f interfaceC0485f) {
        e eVarG;
        i.e("<this>", interfaceC0485f);
        AbstractC0693r abstractC0693rA = w0.a(interfaceC0485f);
        Member memberP = (abstractC0693rA == null || (eVarG = abstractC0693rA.g()) == null) ? null : eVarG.p();
        if (memberP instanceof Method) {
            return (Method) memberP;
        }
        return null;
    }

    public static int H(PathClassLoader pathClassLoader, Object obj) {
        Method methodU = b.u(pathClassLoader, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter", "getMonth", new Class[0]);
        if (methodU == null) {
            return 10;
        }
        Object objJ0 = x.j0(obj, methodU, new Object[0]);
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 10;
    }

    public static final AbstractC0468v I(InterfaceC0789Q interfaceC0789Q) {
        Object obj;
        List upperBounds = interfaceC0789Q.getUpperBounds();
        i.d("upperBounds", upperBounds);
        upperBounds.isEmpty();
        List upperBounds2 = interfaceC0789Q.getUpperBounds();
        i.d("upperBounds", upperBounds2);
        Iterator it = upperBounds2.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            InterfaceC0804g interfaceC0804gI = ((AbstractC0468v) next).J0().i();
            InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
            if (interfaceC0802e != null && interfaceC0802e.L() != 2 && interfaceC0802e.L() != 5) {
                obj = next;
                break;
            }
        }
        AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
        if (abstractC0468v != null) {
            return abstractC0468v;
        }
        List upperBounds3 = interfaceC0789Q.getUpperBounds();
        i.d("upperBounds", upperBounds3);
        Object objM0 = m.M0(upperBounds3);
        i.d("upperBounds.first()", objM0);
        return (AbstractC0468v) objM0;
    }

    public static final Method J(Class cls, InterfaceC0800c interfaceC0800c) throws NoSuchMethodException, SecurityException {
        i.e("descriptor", interfaceC0800c);
        try {
            Method declaredMethod = cls.getDeclaredMethod("unbox-impl", null);
            i.d("{\n        getDeclaredMet…LINE_CLASS_MEMBERS)\n    }", declaredMethod);
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new d("No unbox method found in inline class: " + cls + " (calling " + interfaceC0800c + ')', 2);
        }
    }

    public static int K(PathClassLoader pathClassLoader, Object obj) {
        Method methodU = b.u(pathClassLoader, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter", "getYear", new Class[0]);
        if (methodU == null) {
            return 2019;
        }
        Object objJ0 = x.j0(obj, methodU, new Object[0]);
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 2019;
    }

    public static final boolean L(InterfaceC0789Q interfaceC0789Q, J j3, Set set) {
        i.e("typeParameter", interfaceC0789Q);
        List<AbstractC0468v> upperBounds = interfaceC0789Q.getUpperBounds();
        i.d("typeParameter.upperBounds", upperBounds);
        if (upperBounds.isEmpty()) {
            return false;
        }
        for (AbstractC0468v abstractC0468v : upperBounds) {
            i.d("upperBound", abstractC0468v);
            if (e(abstractC0468v, interfaceC0789Q.q().J0(), set) && (j3 == null || i.a(abstractC0468v.J0(), j3))) {
                return true;
            }
        }
        return false;
    }

    public static void M(String str) {
        I2.a aVar = f6828e;
        if (aVar == null) {
            Log.i("DIAGMON_SDK", str);
            return;
        }
        try {
            aVar.a(f6827d);
            Log.i("DIAGMON_SDK" + aVar.f879b, str);
        } catch (Exception e5) {
            Log.e("DIAGMON_SDK", e5.getMessage());
        }
    }

    public static int N(int i5) {
        if (i5 == 1) {
            return 0;
        }
        if (i5 == 2) {
            return 1;
        }
        if (i5 == 4) {
            return 2;
        }
        if (i5 == 8) {
            return 3;
        }
        if (i5 == 16) {
            return 4;
        }
        if (i5 == 32) {
            return 5;
        }
        if (i5 == 64) {
            return 6;
        }
        if (i5 == 128) {
            return 7;
        }
        if (i5 == 256) {
            return 8;
        }
        throw new IllegalArgumentException(f.t(i5, "type needs to be >= FIRST and <= LAST, type="));
    }

    public static void O(Context context, String str) {
        try {
            if (f6828e != null || context == null || TextUtils.isEmpty(str)) {
                return;
            }
            f6827d = str;
            f6828e = new I2.a();
        } catch (Exception e5) {
            Log.e("DIAGMON_SDK", e5.getMessage());
        }
    }

    public static boolean P(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static boolean R() {
        try {
            if (f6826c == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (f6826c == null) {
                f6825b = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f6826c = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f6826c.invoke(null, Long.valueOf(f6825b))).booleanValue();
        } catch (Exception e5) {
            if (!(e5 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e5);
                return false;
            }
            Throwable cause = e5.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public static final boolean S(InterfaceC0783K interfaceC0783K) {
        i.e("<this>", interfaceC0783K);
        return interfaceC0783K.r() == null;
    }

    public static final boolean T(AbstractC0468v abstractC0468v, AbstractC0468v abstractC0468v2) {
        return i4.d.f7169a.b(abstractC0468v, abstractC0468v2);
    }

    public static c U(int i5, InterfaceC0221a interfaceC0221a) {
        f.x(i5, "mode");
        int iF = Q0.f(i5);
        if (iF == 0) {
            return new Q2.h(interfaceC0221a);
        }
        j jVar = j.f2224a;
        if (iF == 1) {
            g gVar = new g();
            gVar.f2216c = interfaceC0221a;
            gVar.f2217d = jVar;
            return gVar;
        }
        if (iF != 2) {
            throw new A0.c();
        }
        l lVar = new l();
        lVar.f2226c = interfaceC0221a;
        lVar.f2227d = jVar;
        return lVar;
    }

    public static List V(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        i.d("singletonList(element)", listSingletonList);
        return listSingletonList;
    }

    public static final Z W(AbstractC0468v abstractC0468v) {
        i.e("<this>", abstractC0468v);
        return X.h(abstractC0468v, true);
    }

    public static Typeface X(Configuration configuration, Typeface typeface) {
        int i5 = configuration.fontWeightAdjustment;
        if (i5 == Integer.MAX_VALUE || i5 == 0 || typeface == null) {
            return null;
        }
        return Typeface.create(typeface, Z0.j.n(typeface.getWeight() + configuration.fontWeightAdjustment, 1, 1000), typeface.isItalic());
    }

    public static void Y(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static final O b(AbstractC0468v abstractC0468v) {
        i.e("<this>", abstractC0468v);
        return new O(abstractC0468v);
    }

    public static Q3.f b0(Q3.f fVar, String str, String str2, int i5) {
        char cCharAt;
        char cCharAt2;
        Object next;
        boolean z4 = (i5 & 4) != 0;
        if ((i5 & 8) != 0) {
            str2 = null;
        }
        if (!fVar.f2243d) {
            String strC = fVar.c();
            if (s4.h.s(strC, str) && strC.length() != str.length() && ('a' > (cCharAt = strC.charAt(str.length())) || cCharAt >= '{')) {
                if (str2 != null) {
                    return Q3.f.e(str2.concat(s4.h.p(strC, str)));
                }
                if (!z4) {
                    return fVar;
                }
                String strP = s4.h.p(strC, str);
                if (strP.length() != 0 && o4.a.o(0, strP)) {
                    if (strP.length() != 1 && o4.a.o(1, strP)) {
                        Iterator it = new C0447c(0, strP.length() - 1, 1).iterator();
                        while (true) {
                            C0446b c0446b = (C0446b) it;
                            if (!c0446b.f7007e) {
                                next = null;
                                break;
                            }
                            next = c0446b.next();
                            if (!o4.a.o(((Number) next).intValue(), strP)) {
                                break;
                            }
                        }
                        Integer num = (Integer) next;
                        if (num != null) {
                            int iIntValue = num.intValue() - 1;
                            String strSubstring = strP.substring(0, iIntValue);
                            i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
                            String strQ = o4.a.q(strSubstring);
                            String strSubstring2 = strP.substring(iIntValue);
                            i.d("this as java.lang.String).substring(startIndex)", strSubstring2);
                            strP = strQ.concat(strSubstring2);
                        } else {
                            strP = o4.a.q(strP);
                        }
                    } else if (strP.length() != 0 && 'A' <= (cCharAt2 = strP.charAt(0)) && cCharAt2 < '[') {
                        char lowerCase = Character.toLowerCase(cCharAt2);
                        String strSubstring3 = strP.substring(1);
                        i.d("this as java.lang.String).substring(startIndex)", strSubstring3);
                        strP = lowerCase + strSubstring3;
                    }
                }
                if (Q3.f.f(strP)) {
                    return Q3.f.e(strP);
                }
            }
        }
        return null;
    }

    public static final Object c(Object obj, InterfaceC0800c interfaceC0800c) {
        AbstractC0468v abstractC0468vB;
        Class clsO0;
        return (((interfaceC0800c instanceof InterfaceC0783K) && T3.i.d((InterfaceC0792U) interfaceC0800c)) || (abstractC0468vB = B(interfaceC0800c)) == null || (clsO0 = o0(abstractC0468vB)) == null) ? obj : J(clsO0, interfaceC0800c).invoke(obj, null);
    }

    public static boolean c0(Parcel parcel, int i5) {
        u0(parcel, i5, 4);
        return parcel.readInt() != 0;
    }

    public static int d0(Parcel parcel, int i5) {
        u0(parcel, i5, 4);
        return parcel.readInt();
    }

    public static final boolean e(AbstractC0468v abstractC0468v, J j3, Set set) {
        boolean zE;
        if (i.a(abstractC0468v.J0(), j3)) {
            return true;
        }
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        InterfaceC0805h interfaceC0805h = interfaceC0804gI instanceof InterfaceC0805h ? (InterfaceC0805h) interfaceC0804gI : null;
        List listS = interfaceC0805h != null ? interfaceC0805h.s() : null;
        Iterable iterableK1 = m.k1(abstractC0468v.u0());
        if (!(iterableK1 instanceof Collection) || !((Collection) iterableK1).isEmpty()) {
            Iterator it = iterableK1.iterator();
            do {
                y yVar = (y) it;
                if (yVar.f2331d.hasNext()) {
                    R2.x xVar = (R2.x) yVar.next();
                    int i5 = xVar.f2328a;
                    N n = (N) xVar.f2329b;
                    InterfaceC0789Q interfaceC0789Q = listS != null ? (InterfaceC0789Q) m.P0(i5, listS) : null;
                    if ((interfaceC0789Q == null || set == null || !set.contains(interfaceC0789Q)) && !n.c()) {
                        AbstractC0468v abstractC0468vB = n.b();
                        i.d("argument.type", abstractC0468vB);
                        zE = e(abstractC0468vB, j3, set);
                    } else {
                        zE = false;
                    }
                }
            } while (!zE);
            return true;
        }
        return false;
    }

    public static long e0(Parcel parcel, int i5) {
        u0(parcel, i5, 8);
        return parcel.readLong();
    }

    public static void f(PathClassLoader pathClassLoader, Object obj, int i5, int i6, int i7, boolean z4) {
        Class cls = Integer.TYPE;
        Method methodU = b.u(pathClassLoader, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter", "convertLunarToSolar", cls, cls, cls, Boolean.TYPE);
        if (methodU != null) {
            x.j0(obj, methodU, Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Boolean.valueOf(z4));
        }
    }

    public static int f0(Parcel parcel, int i5) {
        return (i5 & (-65536)) != -65536 ? (i5 >> 16) & 65535 : parcel.readInt();
    }

    public static void g(PathClassLoader pathClassLoader, Object obj, int i5, int i6, int i7) {
        Class cls = Integer.TYPE;
        Method methodU = b.u(pathClassLoader, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter", "convertSolarToLunar", cls, cls, cls);
        if (methodU != null) {
            x.j0(obj, methodU, Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7));
        }
    }

    public static final AbstractC0468v g0(AbstractC0468v abstractC0468v, InterfaceC0845h interfaceC0845h) {
        return (abstractC0468v.t().isEmpty() && interfaceC0845h.isEmpty()) ? abstractC0468v : abstractC0468v.M0().P0(AbstractC0450c.q(abstractC0468v.I0(), interfaceC0845h));
    }

    public static Bundle h(Parcel parcel, int i5) {
        int iF0 = f0(parcel, i5);
        int iDataPosition = parcel.dataPosition();
        if (iF0 == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iF0);
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [h4.Z] */
    public static final Z h0(AbstractC0468v abstractC0468v) {
        AbstractC0472z abstractC0472zP;
        Z zM0 = abstractC0468v.M0();
        if (zM0 instanceof AbstractC0464q) {
            AbstractC0464q abstractC0464q = (AbstractC0464q) zM0;
            AbstractC0472z abstractC0472zP2 = abstractC0464q.f7069d;
            if (!abstractC0472zP2.J0().k().isEmpty() && abstractC0472zP2.J0().i() != null) {
                List listK = abstractC0472zP2.J0().k();
                i.d("constructor.parameters", listK);
                ArrayList arrayList = new ArrayList(o.C0(listK));
                Iterator it = listK.iterator();
                while (it.hasNext()) {
                    arrayList.add(new E((InterfaceC0789Q) it.next()));
                }
                abstractC0472zP2 = AbstractC0450c.p(abstractC0472zP2, arrayList, null, 2);
            }
            AbstractC0472z abstractC0472zP3 = abstractC0464q.f7070e;
            if (!abstractC0472zP3.J0().k().isEmpty() && abstractC0472zP3.J0().i() != null) {
                List listK2 = abstractC0472zP3.J0().k();
                i.d("constructor.parameters", listK2);
                ArrayList arrayList2 = new ArrayList(o.C0(listK2));
                Iterator it2 = listK2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new E((InterfaceC0789Q) it2.next()));
                }
                abstractC0472zP3 = AbstractC0450c.p(abstractC0472zP3, arrayList2, null, 2);
            }
            abstractC0472zP = C0451d.j(abstractC0472zP2, abstractC0472zP3);
        } else {
            if (!(zM0 instanceof AbstractC0472z)) {
                throw new A0.c();
            }
            AbstractC0472z abstractC0472z = (AbstractC0472z) zM0;
            boolean zIsEmpty = abstractC0472z.J0().k().isEmpty();
            abstractC0472zP = abstractC0472z;
            if (!zIsEmpty) {
                InterfaceC0804g interfaceC0804gI = abstractC0472z.J0().i();
                abstractC0472zP = abstractC0472z;
                if (interfaceC0804gI != null) {
                    List listK3 = abstractC0472z.J0().k();
                    i.d("constructor.parameters", listK3);
                    ArrayList arrayList3 = new ArrayList(o.C0(listK3));
                    Iterator it3 = listK3.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(new E((InterfaceC0789Q) it3.next()));
                    }
                    abstractC0472zP = AbstractC0450c.p(abstractC0472z, arrayList3, null, 2);
                }
            }
        }
        return AbstractC0450c.g(abstractC0472zP, zM0);
    }

    public static I i(boolean z4, boolean z5, i4.e eVar, i4.e eVar2, i4.f fVar, int i5) {
        if ((i5 & 2) != 0) {
            z5 = true;
        }
        boolean z6 = z5;
        if ((i5 & 4) != 0) {
            eVar = i4.e.f7171d;
        }
        i4.e eVar3 = eVar;
        if ((i5 & 8) != 0) {
            eVar2 = i4.e.f7170c;
        }
        i4.e eVar4 = eVar2;
        if ((i5 & 16) != 0) {
            fVar = i4.f.f7172a;
        }
        i4.f fVar2 = fVar;
        i.e("typeSystemContext", eVar3);
        i.e("kotlinTypePreparator", eVar4);
        i.e("kotlinTypeRefiner", fVar2);
        return new I(z4, z6, eVar3, eVar4, fVar2);
    }

    public static Z0.j j(int i5) {
        if (i5 != 0 && i5 == 1) {
            return new P1.d();
        }
        return new P1.i();
    }

    public static final e k(e eVar, InterfaceC0816s interfaceC0816s, boolean z4) {
        AbstractC0468v abstractC0468vN;
        AbstractC0468v abstractC0468vB;
        i.e("descriptor", interfaceC0816s);
        if (!T3.i.a(interfaceC0816s)) {
            List listW0 = interfaceC0816s.w0();
            i.d("descriptor.valueParameters", listW0);
            if (!listW0.isEmpty()) {
                Iterator it = listW0.iterator();
                while (it.hasNext()) {
                    AbstractC0468v abstractC0468vE = ((V) it.next()).e();
                    i.d("it.type", abstractC0468vE);
                    if (T3.i.c(abstractC0468vE)) {
                        break;
                    }
                }
                abstractC0468vN = interfaceC0816s.n();
                return abstractC0468vN != null ? eVar : eVar;
            }
            abstractC0468vN = interfaceC0816s.n();
            if ((abstractC0468vN != null || !T3.i.c(abstractC0468vN)) && ((eVar instanceof m3.d) || (abstractC0468vB = B(interfaceC0816s)) == null || !T3.i.c(abstractC0468vB))) {
                return eVar;
            }
        }
        return new u(eVar, interfaceC0816s, z4);
    }

    public static void k0(Spinner spinner, T.a aVar, androidx.databinding.h hVar) {
        if (aVar == null && hVar == null) {
            spinner.setOnItemSelectedListener(null);
        } else {
            spinner.setOnItemSelectedListener(new T.b(aVar, hVar));
        }
    }

    public static Parcelable l(Parcel parcel, int i5, Parcelable.Creator creator) {
        int iF0 = f0(parcel, i5);
        int iDataPosition = parcel.dataPosition();
        if (iF0 == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iF0);
        return parcelable;
    }

    public static final O m(AbstractC0468v abstractC0468v, int i5, InterfaceC0789Q interfaceC0789Q) {
        i.e("type", abstractC0468v);
        f.x(i5, "projectionKind");
        if ((interfaceC0789Q != null ? interfaceC0789Q.A() : 0) == i5) {
            i5 = 1;
        }
        return new O(i5, abstractC0468v);
    }

    public static void m0(View view, P1.g gVar) {
        I1.a aVar = gVar.f2075c.f2056b;
        if (aVar == null || !aVar.f873a) {
            return;
        }
        float fI = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            WeakHashMap weakHashMap = Q.f940a;
            fI += J.I.i((View) parent);
        }
        P1.f fVar = gVar.f2075c;
        if (fVar.f2066m != fI) {
            fVar.f2066m = fI;
            gVar.n();
        }
    }

    public static String n(Parcel parcel, int i5) {
        int iF0 = f0(parcel, i5);
        int iDataPosition = parcel.dataPosition();
        if (iF0 == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iF0);
        return string;
    }

    public static void n0(Parcel parcel, int i5) {
        parcel.setDataPosition(parcel.dataPosition() + f0(parcel, i5));
    }

    public static ArrayList o(Parcel parcel, int i5) {
        int iF0 = f0(parcel, i5);
        int iDataPosition = parcel.dataPosition();
        if (iF0 == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iDataPosition + iF0);
        return arrayListCreateStringArrayList;
    }

    public static final Class o0(AbstractC0468v abstractC0468v) {
        i.e("<this>", abstractC0468v);
        Class clsP0 = p0(abstractC0468v.J0().i());
        if (clsP0 == null) {
            return null;
        }
        if (!X.f(abstractC0468v)) {
            return clsP0;
        }
        AbstractC0472z abstractC0472zF = T3.i.f(abstractC0468v);
        if (abstractC0472zF == null || X.f(abstractC0472zF) || AbstractC0732i.F(abstractC0472zF)) {
            return null;
        }
        return clsP0;
    }

    public static Object[] p(Parcel parcel, int i5, Parcelable.Creator creator) {
        int iF0 = f0(parcel, i5);
        int iDataPosition = parcel.dataPosition();
        if (iF0 == 0) {
            return null;
        }
        Object[] objArrCreateTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iF0);
        return objArrCreateTypedArray;
    }

    public static final Class p0(InterfaceC0807j interfaceC0807j) {
        if (!(interfaceC0807j instanceof InterfaceC0802e) || !T3.i.b(interfaceC0807j)) {
            return null;
        }
        InterfaceC0802e interfaceC0802e = (InterfaceC0802e) interfaceC0807j;
        Class clsJ = w0.j(interfaceC0802e);
        if (clsJ != null) {
            return clsJ;
        }
        throw new d("Class object for the class " + interfaceC0802e.getName() + " cannot be found (classId=" + X3.f.f((InterfaceC0804g) interfaceC0807j) + ')', 2);
    }

    public static ArrayList q(Parcel parcel, int i5, Parcelable.Creator creator) {
        int iF0 = f0(parcel, i5);
        int iDataPosition = parcel.dataPosition();
        if (iF0 == 0) {
            return null;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(iDataPosition + iF0);
        return arrayListCreateTypedArrayList;
    }

    public static int q0(Parcel parcel) {
        int i5 = parcel.readInt();
        int iF0 = f0(parcel, i5);
        int iDataPosition = parcel.dataPosition();
        if ((65535 & i5) != 20293) {
            String strValueOf = String.valueOf(Integer.toHexString(i5));
            throw new A0.c(strValueOf.length() != 0 ? "Expected object header. Got 0x".concat(strValueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i6 = iF0 + iDataPosition;
        if (i6 >= iDataPosition && i6 <= parcel.dataSize()) {
            return i6;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(iDataPosition);
        sb.append(" end=");
        sb.append(i6);
        throw new A0.c(sb.toString(), parcel);
    }

    public static void r(String str) {
        I2.a aVar = f6828e;
        if (aVar == null) {
            Log.d("DIAGMON_SDK", str);
            return;
        }
        try {
            aVar.a(f6827d);
            Log.d("DIAGMON_SDK" + aVar.f879b, str);
        } catch (Exception e5) {
            Log.e("DIAGMON_SDK", e5.getMessage());
        }
    }

    public static void r0(String str) {
        I2.a aVar = f6828e;
        if (aVar == null) {
            Log.w("DIAGMON_SDK", str);
            return;
        }
        try {
            aVar.a(f6827d);
            Log.w("DIAGMON_SDK" + aVar.f879b, str);
        } catch (Exception e5) {
            Log.e("DIAGMON_SDK", e5.getMessage());
        }
    }

    public static void s(ArrayList arrayList) {
        HashMap map = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (true) {
            int i5 = 0;
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (b2.j jVar : (Set) it2.next()) {
                        for (b2.l lVar : jVar.f5129a.f5117b) {
                            if (lVar.f5136c == 0) {
                                Set<b2.j> set = (Set) map.get(new k(lVar.f5134a, lVar.f5135b == 2));
                                if (set != null) {
                                    for (b2.j jVar2 : set) {
                                        jVar.f5130b.add(jVar2);
                                        jVar2.f5131c.add(jVar);
                                    }
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                HashSet hashSet2 = new HashSet();
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    b2.j jVar3 = (b2.j) it4.next();
                    if (jVar3.f5131c.isEmpty()) {
                        hashSet2.add(jVar3);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    b2.j jVar4 = (b2.j) hashSet2.iterator().next();
                    hashSet2.remove(jVar4);
                    i5++;
                    Iterator it5 = jVar4.f5130b.iterator();
                    while (it5.hasNext()) {
                        b2.j jVar5 = (b2.j) it5.next();
                        jVar5.f5131c.remove(jVar4);
                        if (jVar5.f5131c.isEmpty()) {
                            hashSet2.add(jVar5);
                        }
                    }
                }
                if (i5 == arrayList.size()) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it6 = hashSet.iterator();
                while (it6.hasNext()) {
                    b2.j jVar6 = (b2.j) it6.next();
                    if (!jVar6.f5131c.isEmpty() && !jVar6.f5130b.isEmpty()) {
                        arrayList2.add(jVar6.f5129a);
                    }
                }
                throw new b2.m("Dependency cycle detected: " + Arrays.toString(arrayList2.toArray()));
            }
            b2.c cVar = (b2.c) it.next();
            b2.j jVar7 = new b2.j(cVar);
            for (Class cls : cVar.f5116a) {
                boolean z4 = !(cVar.f5119d == 0);
                k kVar = new k(cls, z4);
                if (!map.containsKey(kVar)) {
                    map.put(kVar, new HashSet());
                }
                Set set2 = (Set) map.get(kVar);
                if (!set2.isEmpty() && !z4) {
                    throw new IllegalArgumentException("Multiple components provide " + cls + IDMMoInterface.IDM_MO_ROOT_PATH);
                }
                set2.add(jVar7);
            }
        }
    }

    public static void t(String str) {
        I2.a aVar = f6828e;
        if (aVar == null) {
            Log.e("DIAGMON_SDK", str);
            return;
        }
        try {
            aVar.a(f6827d);
            Log.e("DIAGMON_SDK" + aVar.f879b, str);
        } catch (Exception e5) {
            Log.e("DIAGMON_SDK", e5.getMessage());
        }
    }

    public static Status t0(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return new Status(17499, null);
        }
        String[] strArrSplit = str.split(":", 2);
        strArrSplit[0] = strArrSplit[0].trim();
        if (strArrSplit.length > 1 && (str2 = strArrSplit[1]) != null) {
            strArrSplit[1] = str2.trim();
        }
        List listAsList = Arrays.asList(strArrSplit);
        return listAsList.size() > 1 ? w0((String) listAsList.get(0), (String) listAsList.get(1)) : w0((String) listAsList.get(0), null);
    }

    public static void u(Parcel parcel, int i5) {
        if (parcel.dataPosition() == i5) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i5);
        throw new A0.c(sb.toString(), parcel);
    }

    public static void u0(Parcel parcel, int i5, int i6) {
        int iF0 = f0(parcel, i5);
        if (iF0 == i6) {
            return;
        }
        String hexString = Integer.toHexString(iF0);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i6);
        sb.append(" got ");
        sb.append(iF0);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new A0.c(sb.toString(), parcel);
    }

    public static final void v(AbstractC0468v abstractC0468v, AbstractC0472z abstractC0472z, LinkedHashSet linkedHashSet, Set set) {
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        if (interfaceC0804gI instanceof InterfaceC0789Q) {
            if (!i.a(abstractC0468v.J0(), abstractC0472z.J0())) {
                linkedHashSet.add(interfaceC0804gI);
                return;
            }
            for (AbstractC0468v abstractC0468v2 : ((InterfaceC0789Q) interfaceC0804gI).getUpperBounds()) {
                i.d("upperBound", abstractC0468v2);
                v(abstractC0468v2, abstractC0472z, linkedHashSet, set);
            }
            return;
        }
        InterfaceC0804g interfaceC0804gI2 = abstractC0468v.J0().i();
        InterfaceC0805h interfaceC0805h = interfaceC0804gI2 instanceof InterfaceC0805h ? (InterfaceC0805h) interfaceC0804gI2 : null;
        List listS = interfaceC0805h != null ? interfaceC0805h.s() : null;
        int i5 = 0;
        for (N n : abstractC0468v.u0()) {
            int i6 = i5 + 1;
            InterfaceC0789Q interfaceC0789Q = listS != null ? (InterfaceC0789Q) m.P0(i5, listS) : null;
            if ((interfaceC0789Q == null || set == null || !set.contains(interfaceC0789Q)) && !n.c() && !linkedHashSet.contains(n.b().J0().i()) && !i.a(n.b().J0(), abstractC0472z.J0())) {
                AbstractC0468v abstractC0468vB = n.b();
                i.d("argument.type", abstractC0468vB);
                v(abstractC0468vB, abstractC0472z, linkedHashSet, set);
            }
            i5 = i6;
        }
    }

    public static void v0(Parcel parcel, int i5, int i6) {
        if (i5 == i6) {
            return;
        }
        String hexString = Integer.toHexString(i5);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i6);
        sb.append(" got ");
        sb.append(i5);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new A0.c(sb.toString(), parcel);
    }

    public static final w3.b w(v vVar, Q3.b bVar, P3.f fVar) {
        i.e("<this>", vVar);
        i.e("classId", bVar);
        i.e("jvmMetadataVersion", fVar);
        C0837c c0837cM = vVar.m(bVar, fVar);
        if (c0837cM != null) {
            return (w3.b) c0837cM.f9022c;
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0329  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Status w0(String str, String str2) {
        char c2;
        int i5;
        switch (str.hashCode()) {
            case -2130504259:
                if (!str.equals("USER_CANCELLED")) {
                    c2 = 65535;
                    break;
                } else {
                    c2 = 'C';
                    break;
                }
            case -2065866930:
                if (str.equals("INVALID_RECIPIENT_EMAIL")) {
                    c2 = 28;
                    break;
                }
                break;
            case -2014808264:
                if (str.equals("WEB_CONTEXT_ALREADY_PRESENTED")) {
                    c2 = IDMTndsXmlWbxmlDefine.XML_SLASH;
                    break;
                }
                break;
            case -2005236790:
                if (str.equals("INTERNAL_SUCCESS_SIGN_OUT")) {
                    c2 = '@';
                    break;
                }
                break;
            case -2001169389:
                if (str.equals("INVALID_IDP_RESPONSE")) {
                    c2 = 4;
                    break;
                }
                break;
            case -1944433728:
                if (str.equals("DYNAMIC_LINK_NOT_ACTIVATED")) {
                    c2 = '-';
                    break;
                }
                break;
            case -1800638118:
                if (str.equals("QUOTA_EXCEEDED")) {
                    c2 = '\'';
                    break;
                }
                break;
            case -1774756919:
                if (str.equals("WEB_NETWORK_REQUEST_FAILED")) {
                    c2 = ')';
                    break;
                }
                break;
            case -1587614300:
                if (str.equals("EXPIRED_OOB_CODE")) {
                    c2 = 25;
                    break;
                }
                break;
            case -1583894766:
                if (str.equals("INVALID_OOB_CODE")) {
                    c2 = 24;
                    break;
                }
                break;
            case -1458751677:
                if (str.equals("MISSING_EMAIL")) {
                    c2 = 29;
                    break;
                }
                break;
            case -1421414571:
                if (str.equals("INVALID_CODE")) {
                    c2 = '\"';
                    break;
                }
                break;
            case -1345867105:
                if (str.equals("TOKEN_EXPIRED")) {
                    c2 = 23;
                    break;
                }
                break;
            case -1340100504:
                if (str.equals("INVALID_TENANT_ID")) {
                    c2 = '2';
                    break;
                }
                break;
            case -1232010689:
                if (str.equals("INVALID_SESSION_INFO")) {
                    c2 = '$';
                    break;
                }
                break;
            case -1202691903:
                if (str.equals("SECOND_FACTOR_EXISTS")) {
                    c2 = IDMTndsXmlWbxmlDefine.XML_OPEN_TAG;
                    break;
                }
                break;
            case -1112393964:
                if (str.equals("INVALID_EMAIL")) {
                    c2 = 7;
                    break;
                }
                break;
            case -1063710844:
                if (str.equals("ADMIN_ONLY_OPERATION")) {
                    c2 = ':';
                    break;
                }
                break;
            case -974503964:
                if (str.equals("MISSING_OR_INVALID_NONCE")) {
                    c2 = 'B';
                    break;
                }
                break;
            case -863830559:
                if (str.equals("INVALID_CERT_HASH")) {
                    c2 = '(';
                    break;
                }
                break;
            case -828507413:
                if (str.equals("NO_SUCH_PROVIDER")) {
                    c2 = 0;
                    break;
                }
                break;
            case -749743758:
                if (str.equals("MFA_ENROLLMENT_NOT_FOUND")) {
                    c2 = '9';
                    break;
                }
                break;
            case -736207500:
                if (str.equals("MISSING_PASSWORD")) {
                    c2 = 30;
                    break;
                }
                break;
            case -646022241:
                if (str.equals("CREDENTIAL_TOO_OLD_LOGIN_AGAIN")) {
                    c2 = 20;
                    break;
                }
                break;
            case -595928767:
                if (str.equals("TIMEOUT")) {
                    c2 = 14;
                    break;
                }
                break;
            case -333672188:
                if (str.equals("OPERATION_NOT_ALLOWED")) {
                    c2 = 17;
                    break;
                }
                break;
            case -294485423:
                if (str.equals("WEB_INTERNAL_ERROR")) {
                    c2 = '*';
                    break;
                }
                break;
            case -217128228:
                if (str.equals("SECOND_FACTOR_LIMIT_EXCEEDED")) {
                    c2 = '=';
                    break;
                }
                break;
            case -122667194:
                if (str.equals("MISSING_MFA_ENROLLMENT_ID")) {
                    c2 = '7';
                    break;
                }
                break;
            case -75433118:
                if (str.equals("USER_NOT_FOUND")) {
                    c2 = '\t';
                    break;
                }
                break;
            case -40686718:
                if (str.equals("WEAK_PASSWORD")) {
                    c2 = 16;
                    break;
                }
                break;
            case 15352275:
                if (str.equals("EMAIL_NOT_FOUND")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 210308040:
                if (str.equals("UNSUPPORTED_FIRST_FACTOR")) {
                    c2 = IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG;
                    break;
                }
                break;
            case 269327773:
                if (str.equals("INVALID_SENDER")) {
                    c2 = 27;
                    break;
                }
                break;
            case 278802867:
                if (str.equals("MISSING_PHONE_NUMBER")) {
                    c2 = 31;
                    break;
                }
                break;
            case 408411681:
                if (str.equals("INVALID_DYNAMIC_LINK_DOMAIN")) {
                    c2 = '3';
                    break;
                }
                break;
            case 423563023:
                if (str.equals("MISSING_MFA_PENDING_CREDENTIAL")) {
                    c2 = '6';
                    break;
                }
                break;
            case 483847807:
                if (str.equals("EMAIL_EXISTS")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 491979549:
                if (str.equals("INVALID_ID_TOKEN")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 492072102:
                if (str.equals("WEB_STORAGE_UNSUPPORTED")) {
                    c2 = '+';
                    break;
                }
                break;
            case 542728406:
                if (str.equals("PASSWORD_LOGIN_DISABLED")) {
                    c2 = 18;
                    break;
                }
                break;
            case 582457886:
                if (str.equals("UNVERIFIED_EMAIL")) {
                    c2 = ';';
                    break;
                }
                break;
            case 605031096:
                if (str.equals("REJECTED_CREDENTIAL")) {
                    c2 = '4';
                    break;
                }
                break;
            case 745638750:
                if (str.equals("INVALID_MFA_PENDING_CREDENTIAL")) {
                    c2 = '8';
                    break;
                }
                break;
            case 786916712:
                if (str.equals("INVALID_VERIFICATION_PROOF")) {
                    c2 = '%';
                    break;
                }
                break;
            case 799258561:
                if (str.equals("INVALID_PROVIDER_ID")) {
                    c2 = '.';
                    break;
                }
                break;
            case 819646646:
                if (str.equals("CREDENTIAL_MISMATCH")) {
                    c2 = 1;
                    break;
                }
                break;
            case 844240628:
                if (str.equals("WEB_CONTEXT_CANCELED")) {
                    c2 = '0';
                    break;
                }
                break;
            case 886186878:
                if (str.equals("REQUIRES_SECOND_FACTOR_AUTH")) {
                    c2 = '5';
                    break;
                }
                break;
            case 895302372:
                if (str.equals("MISSING_CLIENT_IDENTIFIER")) {
                    c2 = 'A';
                    break;
                }
                break;
            case 922685102:
                if (str.equals("INVALID_MESSAGE_PAYLOAD")) {
                    c2 = 26;
                    break;
                }
                break;
            case 989000548:
                if (str.equals("RESET_PASSWORD_EXCEED_LIMIT")) {
                    c2 = 22;
                    break;
                }
                break;
            case 1034932393:
                if (str.equals("INVALID_PENDING_TOKEN")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1072360691:
                if (str.equals("INVALID_CUSTOM_TOKEN")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1094975491:
                if (str.equals("INVALID_PASSWORD")) {
                    c2 = 11;
                    break;
                }
                break;
            case 1107081238:
                if (str.equals("<<Network Error>>")) {
                    c2 = 15;
                    break;
                }
                break;
            case 1141576252:
                if (str.equals("SESSION_EXPIRED")) {
                    c2 = '&';
                    break;
                }
                break;
            case 1199811910:
                if (str.equals("MISSING_CODE")) {
                    c2 = '!';
                    break;
                }
                break;
            case 1226505451:
                if (str.equals("FEDERATED_USER_ID_ALREADY_LINKED")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 1388786705:
                if (str.equals("INVALID_IDENTIFIER")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1433767024:
                if (str.equals("USER_DISABLED")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1442968770:
                if (str.equals("INVALID_PHONE_NUMBER")) {
                    c2 = ' ';
                    break;
                }
                break;
            case 1494923453:
                if (str.equals("INVALID_APP_CREDENTIAL")) {
                    c2 = 19;
                    break;
                }
                break;
            case 1497901284:
                if (str.equals("TOO_MANY_ATTEMPTS_TRY_LATER")) {
                    c2 = 21;
                    break;
                }
                break;
            case 1803454477:
                if (str.equals("MISSING_CONTINUE_URI")) {
                    c2 = ',';
                    break;
                }
                break;
            case 1898790704:
                if (str.equals("MISSING_SESSION_INFO")) {
                    c2 = '#';
                    break;
                }
                break;
            case 2063209097:
                if (str.equals("EMAIL_CHANGE_NEEDS_VERIFICATION")) {
                    c2 = '?';
                    break;
                }
                break;
            case 2082564316:
                if (str.equals("UNSUPPORTED_TENANT_OPERATION")) {
                    c2 = '1';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                i5 = 17016;
                break;
            case 1:
                i5 = 17002;
                break;
            case 2:
                i5 = 17000;
                break;
            case 3:
            case 4:
                i5 = 17004;
                break;
            case 5:
                i5 = 17005;
                break;
            case 6:
            case 7:
                i5 = 17008;
                break;
            case '\b':
            case '\t':
                i5 = 17011;
                break;
            case '\n':
                i5 = 17007;
                break;
            case 11:
                i5 = 17009;
                break;
            case '\f':
                i5 = 17025;
                break;
            case '\r':
                i5 = 17017;
                break;
            case 14:
            case 15:
                i5 = 17020;
                break;
            case 16:
                i5 = 17026;
                break;
            case 17:
            case 18:
                i5 = 17006;
                break;
            case 19:
                i5 = 17028;
                break;
            case 20:
                i5 = 17014;
                break;
            case 21:
            case 22:
                i5 = 17010;
                break;
            case 23:
                i5 = 17021;
                break;
            case 24:
                i5 = 17030;
                break;
            case 25:
                i5 = 17029;
                break;
            case 26:
                i5 = 17031;
                break;
            case 27:
                i5 = 17032;
                break;
            case 28:
                i5 = 17033;
                break;
            case 29:
                i5 = 17034;
                break;
            case 30:
                i5 = 17035;
                break;
            case 31:
                i5 = 17041;
                break;
            case ' ':
                i5 = 17042;
                break;
            case '!':
                i5 = 17043;
                break;
            case '\"':
                i5 = 17044;
                break;
            case '#':
                i5 = 17045;
                break;
            case '$':
                i5 = 17046;
                break;
            case '%':
                i5 = 17049;
                break;
            case '&':
                i5 = 17051;
                break;
            case '\'':
                i5 = 17052;
                break;
            case '(':
                i5 = 17064;
                break;
            case ')':
                i5 = 17061;
                break;
            case '*':
                i5 = 17062;
                break;
            case '+':
                i5 = 17065;
                break;
            case ',':
                i5 = 17040;
                break;
            case '-':
                i5 = 17068;
                break;
            case '.':
                i5 = 17071;
                break;
            case '/':
                i5 = 17057;
                break;
            case '0':
                i5 = 17058;
                break;
            case '1':
                i5 = 17073;
                break;
            case '2':
                i5 = 17079;
                break;
            case '3':
                i5 = 17074;
                break;
            case '4':
                i5 = 17075;
                break;
            case '5':
                i5 = 17078;
                break;
            case '6':
                i5 = 17081;
                break;
            case '7':
                i5 = 17082;
                break;
            case '8':
                i5 = 17083;
                break;
            case '9':
                i5 = 17084;
                break;
            case ':':
                i5 = 17085;
                break;
            case ';':
                i5 = 17086;
                break;
            case '<':
                i5 = 17087;
                break;
            case '=':
                i5 = 17088;
                break;
            case '>':
                i5 = 17089;
                break;
            case '?':
                i5 = 17090;
                break;
            case '@':
                i5 = 17091;
                break;
            case 'A':
                i5 = 17093;
                break;
            case 'B':
                i5 = 17094;
                break;
            case 'C':
                i5 = 18001;
                break;
            default:
                i5 = 17499;
                break;
        }
        if (i5 != 17499) {
            return new Status(i5, str2);
        }
        if (str2 == null) {
            return new Status(17499, str);
        }
        StringBuilder sb = new StringBuilder(str.length() + 1 + str2.length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return new Status(17499, sb.toString());
    }

    public static final HashSet x(Iterable iterable) {
        HashSet hashSet = new HashSet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Set setE = ((a4.o) it.next()).e();
            if (setE == null) {
                return null;
            }
            s.E0(hashSet, setE);
        }
        return hashSet;
    }

    public static final AbstractC0732i y(AbstractC0468v abstractC0468v) {
        i.e("<this>", abstractC0468v);
        AbstractC0732i abstractC0732iG = abstractC0468v.J0().g();
        i.d("constructor.builtIns", abstractC0732iG);
        return abstractC0732iG;
    }

    public static int z(PathClassLoader pathClassLoader, Object obj) {
        Method methodU = b.u(pathClassLoader, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter", "getDay", new Class[0]);
        if (methodU == null) {
            return 19;
        }
        Object objJ0 = x.j0(obj, methodU, new Object[0]);
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 19;
    }

    public abstract InputFilter[] E(InputFilter[] inputFilterArr);

    public abstract boolean Q();

    public abstract void Z(Throwable th);

    public abstract void a(InterfaceC0800c interfaceC0800c);

    public abstract void a0(p pVar);

    public abstract void d(InterfaceC0800c interfaceC0800c, InterfaceC0800c interfaceC0800c2);

    public abstract void i0(boolean z4);

    public abstract void j0(boolean z4);

    public void l0(InterfaceC0800c interfaceC0800c, Collection collection) {
        i.e("member", interfaceC0800c);
        interfaceC0800c.M(collection);
    }

    public abstract TransformationMethod s0(TransformationMethod transformationMethod);
}

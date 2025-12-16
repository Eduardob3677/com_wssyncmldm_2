package L2;

import A3.AbstractC0009h;
import A3.p;
import A3.q;
import J.X;
import J3.g;
import O.d;
import O.e;
import R2.o;
import T3.i;
import X3.f;
import Y1.l;
import Y1.m;
import Y1.r;
import Z0.j;
import a4.k;
import android.R;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EdgeEffect;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.N4;
import com.samsung.context.sdk.samsunganalytics.BuildConfig;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import d3.InterfaceC0391c;
import dalvik.system.PathClassLoader;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.C0466t;
import h4.C0470x;
import h4.G;
import h4.N;
import h4.O;
import h4.S;
import i3.InterfaceC0482c;
import i3.x;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import m3.C0709b;
import o3.AbstractC0732i;
import o3.n;
import p0.AbstractC0740b;
import q3.C0757d;
import r3.AbstractC0811n;
import r3.InterfaceC0789Q;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0803f;
import r3.InterfaceC0804g;
import r3.f0;
import s3.InterfaceC0845h;
import s4.h;
import u3.AbstractC0878j;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static a f1351a = null;

    /* renamed from: b, reason: collision with root package name */
    public static Bundle f1352b = null;

    /* renamed from: c, reason: collision with root package name */
    public static int f1353c = 1;

    /* renamed from: d, reason: collision with root package name */
    public static String f1354d;

    /* renamed from: e, reason: collision with root package name */
    public static PackageInfo f1355e;

    public static Bundle A(a aVar) {
        Bundle bundle = new Bundle();
        bundle.putString("serviceId", aVar.f1346b);
        Context context = aVar.f1345a;
        bundle.putString("serviceVersion", w(context));
        bundle.putString("serviceAgreeType", N2.a.a(aVar.f1345a) == 1 ? (String) aVar.f1350g.f198e : aVar.f1348d);
        bundle.putString(Preferences.PREFS_KEY_DID, aVar.f);
        String strValueOf = "";
        bundle.putString("trackingId", "");
        try {
            strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
        } catch (Exception unused) {
        }
        bundle.putString("sdkVersion", strValueOf);
        bundle.putString("sdkType", "S");
        bundle.putString("pkgName", context.getPackageName());
        bundle.putBoolean("wifiOnly", true);
        AbstractC0420a.M("generated SR object");
        return bundle;
    }

    public static float B(EdgeEffect edgeEffect, float f, float f5) {
        if (AbstractC0740b.c()) {
            return e.c(edgeEffect, f, f5);
        }
        d.a(edgeEffect, f, f5);
        return f;
    }

    public static final boolean C(AbstractC0468v abstractC0468v) {
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        if (interfaceC0804gI == null || !i.b(interfaceC0804gI) || d3.i.a(f.g((InterfaceC0802e) interfaceC0804gI), n.f8535g)) {
            InterfaceC0804g interfaceC0804gI2 = abstractC0468v.J0().i();
            InterfaceC0789Q interfaceC0789Q = interfaceC0804gI2 instanceof InterfaceC0789Q ? (InterfaceC0789Q) interfaceC0804gI2 : null;
            if (!(interfaceC0789Q == null ? false : C(AbstractC0420a.I(interfaceC0789Q)))) {
                return false;
            }
        }
        return true;
    }

    public static final void D(Object[] objArr, int i5, int i6) {
        d3.i.e("<this>", objArr);
        while (i5 < i6) {
            objArr[i5] = null;
            i5++;
        }
    }

    public static TypedValue E(Context context, int i5) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i5, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean F(Context context, int i5, boolean z4) {
        TypedValue typedValueE = E(context, i5);
        return (typedValueE == null || typedValueE.type != 18) ? z4 : typedValueE.data != 0;
    }

    public static TypedValue G(Context context, int i5, String str) {
        TypedValue typedValueE = E(context, i5);
        if (typedValueE != null) {
            return typedValueE;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i5)));
    }

    public static void H(a aVar) {
        int i5 = 0;
        try {
            i5 = aVar.f1345a.getPackageManager().getPackageInfo("com.sec.android.diagmonagent", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            AbstractC0420a.t("DMA Client is not exist");
        }
        if (i5 == 0) {
            Log.w(N2.a.f1862a, "It is not supported : NO_DMA");
            return;
        }
        AbstractC0420a.O(aVar.f1345a, aVar.f1346b);
        if (f1353c == 2) {
            AbstractC0420a.r0("You can't use setConfiguration with enableDefaultConfiguration");
            return;
        }
        f1351a = aVar;
        f1353c = 3;
        AbstractC0420a.r("setConfiguration type : ".concat(B.f.I(3)));
        try {
            synchronized (b.class) {
                f1352b = A(f1351a);
                e4.d.h().g(new M2.a(f1351a, f1352b));
            }
        } catch (Exception e5) {
            AbstractC0420a.t("failed to setConfiguration" + e5);
        }
    }

    public static Set I(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        d3.i.d("singleton(element)", setSingleton);
        return setSingleton;
    }

    public static boolean J(int[] iArr) {
        boolean z4 = false;
        boolean z5 = false;
        for (int i5 : iArr) {
            if (i5 == 16842910) {
                z4 = true;
            } else if (i5 == 16842908 || i5 == 16842919 || i5 == 16843623) {
                z5 = true;
            }
        }
        return z4 && z5;
    }

    public static final String K(InterfaceC0802e interfaceC0802e, String str) {
        String strQ;
        d3.i.e("classDescriptor", interfaceC0802e);
        d3.i.e("jvmDescriptor", str);
        String str2 = C0757d.f8645a;
        Q3.e eVarI = f.g(interfaceC0802e).i();
        d3.i.d("fqNameSafe.toUnsafe()", eVarI);
        Q3.b bVarF = C0757d.f(eVarI);
        if (bVarF != null) {
            strQ = Y3.b.b(bVarF).e();
            d3.i.d("byClassId(it).internalName", strQ);
        } else {
            strQ = j.q(interfaceC0802e, g.f1157d);
        }
        d3.i.e("internalName", strQ);
        return strQ + '.' + str;
    }

    public static final Q3.c L(Q3.c cVar, Q3.c cVar2) {
        d3.i.e("<this>", cVar);
        d3.i.e("prefix", cVar2);
        if (!d3.i.a(cVar, cVar2) && !cVar2.d()) {
            String strB = cVar.b();
            String strB2 = cVar2.b();
            if (!h.s(strB, strB2) || strB.charAt(strB2.length()) != '.') {
                return cVar;
            }
        }
        if (cVar2.d()) {
            return cVar;
        }
        if (d3.i.a(cVar, cVar2)) {
            Q3.c cVar3 = Q3.c.f2233c;
            d3.i.d("ROOT", cVar3);
            return cVar3;
        }
        String strSubstring = cVar.b().substring(cVar2.b().length() + 1);
        d3.i.d("this as java.lang.String).substring(startIndex)", strSubstring);
        return new Q3.c(strSubstring);
    }

    public static int M(Context context, int i5) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i5});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    public static F3.a N(int i5, boolean z4, boolean z5, AbstractC0878j abstractC0878j, int i6) {
        boolean z6 = (i6 & 1) != 0 ? false : z4;
        boolean z7 = (i6 & 2) != 0 ? false : z5;
        if ((i6 & 4) != 0) {
            abstractC0878j = null;
        }
        B.f.x(i5, "<this>");
        return new F3.a(i5, z7, z6, abstractC0878j != null ? I(abstractC0878j) : null, 34);
    }

    public static final p O(f0 f0Var) {
        d3.i.e("<this>", f0Var);
        p pVar = (p) q.f145d.get(f0Var);
        return pVar == null ? AbstractC0811n.f(f0Var) : pVar;
    }

    public static S P(S s5) {
        if (!(s5 instanceof C0466t)) {
            return new U3.d(s5, true);
        }
        C0466t c0466t = (C0466t) s5;
        N[] nArr = c0466t.f7073c;
        d3.i.e("<this>", nArr);
        InterfaceC0789Q[] interfaceC0789QArr = c0466t.f7072b;
        d3.i.e("other", interfaceC0789QArr);
        int iMin = Math.min(nArr.length, interfaceC0789QArr.length);
        ArrayList arrayList = new ArrayList(iMin);
        for (int i5 = 0; i5 < iMin; i5++) {
            arrayList.add(new Q2.e(nArr[i5], interfaceC0789QArr[i5]));
        }
        ArrayList arrayList2 = new ArrayList(o.C0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Q2.e eVar = (Q2.e) it.next();
            arrayList2.add(i((N) eVar.f2212c, (InterfaceC0789Q) eVar.f2213d));
        }
        return new C0466t(interfaceC0789QArr, (N[]) arrayList2.toArray(new N[0]), true);
    }

    public static N4 Q(Y1.c cVar, String str) {
        AbstractC0213D.e(cVar);
        if (Y1.i.class.isAssignableFrom(cVar.getClass())) {
            Y1.i iVar = (Y1.i) cVar;
            return new N4(iVar.f2932c, iVar.f2933d, "google.com", null, null, str, null, null);
        }
        if (Y1.e.class.isAssignableFrom(cVar.getClass())) {
            return new N4(null, ((Y1.e) cVar).f2930c, "facebook.com", null, null, str, null, null);
        }
        if (m.class.isAssignableFrom(cVar.getClass())) {
            m mVar = (m) cVar;
            return new N4(null, mVar.f2944c, "twitter.com", mVar.f2945d, null, str, null, null);
        }
        if (Y1.h.class.isAssignableFrom(cVar.getClass())) {
            return new N4(null, ((Y1.h) cVar).f2931c, "github.com", null, null, str, null, null);
        }
        if (l.class.isAssignableFrom(cVar.getClass())) {
            return new N4(null, null, "playgames.google.com", null, ((l) cVar).f2943c, str, null, null);
        }
        if (!r.class.isAssignableFrom(cVar.getClass())) {
            throw new IllegalArgumentException("Unsupported credential type.");
        }
        r rVar = (r) cVar;
        N4 n42 = rVar.f;
        if (n42 != null) {
            return n42;
        }
        return new N4(rVar.f2952d, rVar.f2953e, rVar.f2951c, rVar.f2955h, null, str, rVar.f2954g, rVar.f2956i);
    }

    public static /* synthetic */ void a(int i5) {
        String str = (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) ? 2 : 3];
        switch (i5) {
            case 1:
                objArr[0] = "valueParameters";
                break;
            case 2:
                objArr[0] = "typeParameters";
                break;
            case 3:
                objArr[0] = "signatureErrors";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
                break;
            default:
                objArr[0] = "returnType";
                break;
        }
        if (i5 == 4) {
            objArr[1] = "getReturnType";
        } else if (i5 == 5) {
            objArr[1] = "getValueParameters";
        } else if (i5 == 6) {
            objArr[1] = "getTypeParameters";
        } else if (i5 != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
        } else {
            objArr[1] = "getErrors";
        }
        if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static /* synthetic */ void b(int i5) {
        Object[] objArr = new Object[3];
        switch (i5) {
            case 1:
            case 4:
                objArr[0] = "b";
                break;
            case 2:
            case 7:
                objArr[0] = "typeCheckingProcedure";
                break;
            case 3:
            default:
                objArr[0] = "a";
                break;
            case 5:
            case 10:
                objArr[0] = "subtype";
                break;
            case 6:
            case 11:
                objArr[0] = "supertype";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 9:
                objArr[0] = "typeProjection";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl";
        switch (i5) {
            case 3:
            case 4:
                objArr[2] = "assertEqualTypeConstructors";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = "assertSubtype";
                break;
            case 8:
            case 9:
                objArr[2] = "capture";
                break;
            case 10:
            case 11:
                objArr[2] = "noCorrespondingSupertype";
                break;
            default:
                objArr[2] = "assertEqualTypes";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static final void c(View view) {
        d3.i.e("<this>", view);
        X x4 = new X(view, null);
        r4.l lVar = new r4.l();
        lVar.f = j.y(lVar, x4, lVar);
        while (lVar.hasNext()) {
            View view2 = (View) lVar.next();
            Q.a aVar = (Q.a) view2.getTag(com.wssyncmldm.R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new Q.a();
                view2.setTag(com.wssyncmldm.R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList = aVar.f2167a;
            int iX0 = R2.n.x0(arrayList);
            if (-1 < iX0) {
                B.f.F(arrayList.get(iX0));
                throw null;
            }
        }
    }

    public static D3.e d(D3.e eVar, InterfaceC0803f interfaceC0803f, H3.e eVar2, int i5) {
        if ((i5 & 2) != 0) {
            eVar2 = null;
        }
        d3.i.e("<this>", eVar);
        d3.i.e("containingDeclaration", interfaceC0803f);
        return new D3.e((D3.a) eVar.f499d, eVar2 != null ? new D3.f(eVar, interfaceC0803f, eVar2, 0) : (D3.g) eVar.f500e, AbstractC0420a.U(3, new B3.c(eVar, 1, interfaceC0803f)));
    }

    public static int e(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static final D3.e f(D3.e eVar, InterfaceC0845h interfaceC0845h) {
        d3.i.e("<this>", eVar);
        d3.i.e("additionalAnnotations", interfaceC0845h);
        if (interfaceC0845h.isEmpty()) {
            return eVar;
        }
        return new D3.e((D3.a) eVar.f499d, (D3.g) eVar.f500e, AbstractC0420a.U(3, new B3.c(eVar, 2, interfaceC0845h)));
    }

    public static a4.o g(String str, Collection collection) {
        d3.i.e("message", str);
        d3.i.e("types", collection);
        ArrayList arrayList = new ArrayList(o.C0(collection));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((AbstractC0468v) it.next()).q0());
        }
        q4.f fVarP = o4.a.p(arrayList);
        int i5 = fVarP.f8701c;
        a4.o aVar = i5 != 0 ? i5 != 1 ? new a4.a(str, (a4.o[]) fVarP.toArray(new a4.o[0])) : (a4.o) fVarP.get(0) : a4.n.f3128b;
        return fVarP.f8701c <= 1 ? aVar : new k(aVar);
    }

    public static final Object h(Class cls, Map map, List list) throws IllegalArgumentException {
        d3.i.e("annotationClass", cls);
        d3.i.e("methods", list);
        Q2.h hVar = new Q2.h(new B3.k(24, map));
        Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C0709b(cls, map, new Q2.h(new B3.c(cls, 11, map)), hVar, list));
        d3.i.c("null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance", objNewProxyInstance);
        return objNewProxyInstance;
    }

    public static final N i(N n, InterfaceC0789Q interfaceC0789Q) {
        if (interfaceC0789Q == null || n.a() == 1) {
            return n;
        }
        if (interfaceC0789Q.A() != n.a()) {
            U3.c cVar = new U3.c(n);
            G.f7019d.getClass();
            return new O(new U3.a(n, cVar, false, G.f7020e));
        }
        if (!n.c()) {
            return new O(n.b());
        }
        g4.b bVar = g4.l.f6948e;
        d3.i.d("NO_LOCKS", bVar);
        return new O(new C0470x(bVar, new B3.k(6, n)));
    }

    public static boolean j(c cVar) {
        String str = N2.a.f1862a;
        Log.i(str, "Request CustomEventReport");
        a aVar = f1351a;
        if (aVar == null) {
            Log.w(str, "You first have to create DiagMonConfiguration");
            Log.w(str, "CustomEventReport is aborted");
            return false;
        }
        AbstractC0420a.O(aVar.f1345a, aVar.f1346b);
        if (f1353c == 2) {
            AbstractC0420a.r0("You can't use customEventReport with enableDefaultConfiguration");
            return false;
        }
        e4.d.h().g(new com.google.firebase.messaging.p(f1351a, f1352b, cVar));
        return true;
    }

    public static final InterfaceC0482c k(Annotation annotation) {
        d3.i.e("<this>", annotation);
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        d3.i.d("this as java.lang.annota…otation).annotationType()", clsAnnotationType);
        InterfaceC0482c interfaceC0482cT = t(clsAnnotationType);
        d3.i.c("null cannot be cast to non-null type kotlin.reflect.KClass<out T of kotlin.jvm.JvmClassMappingKt.<get-annotationClass>>", interfaceC0482cT);
        return interfaceC0482cT;
    }

    public static final Q3.b l(N3.f fVar, int i5) {
        d3.i.e("<this>", fVar);
        return Q3.b.f(fVar.x0(i5), fVar.N(i5));
    }

    public static int m(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.sec.android.diagmonagent", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            AbstractC0420a.t("DMA Client is not exist");
            return 0;
        }
    }

    public static float n(EdgeEffect edgeEffect) {
        if (AbstractC0740b.c()) {
            return e.b(edgeEffect);
        }
        return 0.0f;
    }

    public static String o(PowerManager.WakeLock wakeLock, String str) {
        String strValueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        String strValueOf2 = String.valueOf(str);
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    public static float p(Paint paint) {
        Method methodP = x.P(Paint.class, "getHCTStrokeWidth", new Class[0]);
        if (methodP == null) {
            return 0.0f;
        }
        Object objJ0 = x.j0(paint, methodP, new Object[0]);
        if (objJ0 instanceof Float) {
            return ((Float) objJ0).floatValue();
        }
        return 0.0f;
    }

    public static final Class q(InterfaceC0482c interfaceC0482c) {
        d3.i.e("<this>", interfaceC0482c);
        Class clsA = ((InterfaceC0391c) interfaceC0482c).a();
        d3.i.c("null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>", clsA);
        return clsA;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class r(InterfaceC0482c interfaceC0482c) {
        d3.i.e("<this>", interfaceC0482c);
        Class clsA = ((InterfaceC0391c) interfaceC0482c).a();
        if (!clsA.isPrimitive()) {
            return clsA;
        }
        String name = clsA.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (!name.equals("double")) {
                }
                break;
            case 104431:
                if (!name.equals("int")) {
                }
                break;
            case 3039496:
                if (!name.equals("byte")) {
                }
                break;
            case 3052374:
                if (!name.equals("char")) {
                }
                break;
            case 3327612:
                if (!name.equals("long")) {
                }
                break;
            case 3625364:
                if (!name.equals("void")) {
                }
                break;
            case 64711720:
                if (!name.equals("boolean")) {
                }
                break;
            case 97526364:
                if (!name.equals("float")) {
                }
                break;
            case 109413500:
                if (!name.equals("short")) {
                }
                break;
        }
        return clsA;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final Class s(InterfaceC0482c interfaceC0482c) {
        d3.i.e("<this>", interfaceC0482c);
        Class clsA = ((InterfaceC0391c) interfaceC0482c).a();
        if (clsA.isPrimitive()) {
            return clsA;
        }
        String name = clsA.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return Integer.TYPE;
                }
                return null;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return Float.TYPE;
                }
                return null;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return Short.TYPE;
                }
                return null;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return Character.TYPE;
                }
                return null;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return Boolean.TYPE;
                }
                return null;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return Byte.TYPE;
                }
                return null;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return Long.TYPE;
                }
                return null;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return Void.TYPE;
                }
                return null;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return Double.TYPE;
                }
                return null;
            default:
                return null;
        }
    }

    public static final InterfaceC0482c t(Class cls) {
        d3.i.e("<this>", cls);
        return d3.q.f6516a.b(cls);
    }

    public static Method u(PathClassLoader pathClassLoader, String str, String str2, Class... clsArr) {
        Class<?> cls;
        try {
            cls = Class.forName(str, true, pathClassLoader);
        } catch (ClassNotFoundException e5) {
            Log.e("SeslPathClassReflector", "Fail to get class", e5);
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod(str2, clsArr);
        } catch (NoSuchMethodException e6) {
            Log.e("SeslPathClassReflector", str2.concat(" NoSuchMethodException"), e6);
            return null;
        }
    }

    public static final Q3.f v(N3.f fVar, int i5) {
        d3.i.e("<this>", fVar);
        return Q3.f.d(fVar.r(i5));
    }

    public static String w(Context context) {
        if (f1354d == null) {
            PackageInfo packageInfoX = x(context);
            if (packageInfoX != null) {
                f1354d = packageInfoX.versionName;
            } else {
                f1354d = "";
            }
        }
        return f1354d;
    }

    public static PackageInfo x(Context context) {
        if (f1355e == null) {
            String packageName = context.getPackageName();
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                try {
                    f1355e = packageManager.getPackageInfo(packageName, 4096);
                } catch (PackageManager.NameNotFoundException unused) {
                    AbstractC0420a.t(packageName + " is not found");
                }
            }
        }
        return f1355e;
    }

    public static boolean y(InterfaceC0800c interfaceC0800c) {
        d3.i.e("callableMemberDescriptor", interfaceC0800c);
        if (!AbstractC0009h.f132d.contains(interfaceC0800c.getName())) {
            return false;
        }
        if (!R2.m.H0(AbstractC0009h.f131c, f.c(interfaceC0800c)) || !interfaceC0800c.w0().isEmpty()) {
            if (!AbstractC0732i.z(interfaceC0800c)) {
                return false;
            }
            Collection<InterfaceC0800c> collectionP = interfaceC0800c.p();
            d3.i.d("overriddenDescriptors", collectionP);
            if (collectionP.isEmpty()) {
                return false;
            }
            for (InterfaceC0800c interfaceC0800c2 : collectionP) {
                d3.i.d("it", interfaceC0800c2);
                if (y(interfaceC0800c2)) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean z(MotionEvent motionEvent, int i5) {
        return (motionEvent.getSource() & i5) == i5;
    }
}

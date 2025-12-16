package p;

import A3.z;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import com.samsung.android.knox.ex.KnoxContract;
import i3.x;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import o3.AbstractC0729f;
import r3.InterfaceC0776D;
import r3.InterfaceC0779G;
import s3.C0846i;
import s3.InterfaceC0845h;
import x3.AbstractC0917d;

/* renamed from: p.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0735a {
    public static final void d(InterfaceC0776D interfaceC0776D, Q3.c cVar, ArrayList arrayList) {
        d3.i.e("<this>", interfaceC0776D);
        d3.i.e("fqName", cVar);
        if (interfaceC0776D instanceof InterfaceC0779G) {
            ((InterfaceC0779G) interfaceC0776D).c(cVar, arrayList);
        } else {
            arrayList.addAll(interfaceC0776D.b(cVar));
        }
    }

    public static final InterfaceC0845h e(InterfaceC0845h interfaceC0845h, InterfaceC0845h interfaceC0845h2) {
        d3.i.e("first", interfaceC0845h);
        d3.i.e(KnoxContract.Config.DateTime.PARAM_SECOND, interfaceC0845h2);
        return interfaceC0845h.isEmpty() ? interfaceC0845h2 : interfaceC0845h2.isEmpty() ? interfaceC0845h : new C0846i(new InterfaceC0845h[]{interfaceC0845h, interfaceC0845h2});
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static w3.b f(Class cls) {
        K3.b bVar;
        K3.a aVar;
        K3.e eVar;
        d3.i.e("klass", cls);
        K3.g gVar = new K3.g();
        gVar.f1302c = null;
        gVar.f1303d = null;
        gVar.f1304e = 0;
        gVar.f = null;
        gVar.f1305g = null;
        gVar.f1306h = null;
        gVar.f1307i = null;
        gVar.f1308j = null;
        Annotation[] declaredAnnotations = cls.getDeclaredAnnotations();
        d3.i.d("klass.declaredAnnotations", declaredAnnotations);
        for (Annotation annotation : declaredAnnotations) {
            d3.i.d("annotation", annotation);
            Class clsQ = L2.b.q(L2.b.k(annotation));
            Q3.b bVarA = AbstractC0917d.a(clsQ);
            Q3.c cVarB = bVarA.b();
            if (cVarB.equals(z.f165a)) {
                eVar = new K3.e(gVar, 0);
            } else if (cVarB.equals(z.f177o)) {
                eVar = new K3.e(gVar, 1);
            } else if (K3.g.f1300k || gVar.f1307i != null || (aVar = (K3.a) K3.g.f1301l.get(bVarA)) == null) {
                eVar = null;
            } else {
                gVar.f1307i = aVar;
                eVar = new K3.e(gVar, 2);
            }
            if (eVar != null) {
                AbstractC0729f.q(eVar, annotation, clsQ);
            }
        }
        P3.f fVar = P3.f.f2161g;
        if (gVar.f1307i == null || gVar.f1302c == null) {
            bVar = null;
        } else {
            P3.f fVar2 = new P3.f(gVar.f1302c, (gVar.f1304e & 8) != 0);
            if (fVar2.b(fVar)) {
                K3.a aVar2 = gVar.f1307i;
                if ((aVar2 == K3.a.CLASS || aVar2 == K3.a.FILE_FACADE || aVar2 == K3.a.MULTIFILE_CLASS_PART) && gVar.f == null) {
                }
            } else {
                gVar.f1306h = gVar.f;
                gVar.f = null;
            }
            String[] strArr = gVar.f1308j;
            if (strArr != null) {
                P3.a.b(strArr);
            }
            bVar = new K3.b(gVar.f1307i, fVar2, gVar.f, gVar.f1306h, gVar.f1305g, gVar.f1303d, gVar.f1304e);
        }
        if (bVar == null) {
            return null;
        }
        return new w3.b(cls, bVar);
    }

    public static String g() {
        Method methodJ = x.J(Settings.System.class, "hidden_SEM_PEN_HOVERING", new Class[0]);
        Object objJ0 = methodJ != null ? x.j0(null, methodJ, new Object[0]) : null;
        return objJ0 instanceof String ? (String) objJ0 : "pen_hovering";
    }

    public static Intent h(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String strJ = j(activity, activity.getComponentName());
            if (strJ == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, strJ);
            try {
                return j(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strJ + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    public static Intent i(Context context, ComponentName componentName) {
        String strJ = j(context, componentName);
        if (strJ == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), strJ);
        return j(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String j(Context context, ComponentName componentName) {
        String string;
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(componentName, 269222528);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static final boolean k(InterfaceC0776D interfaceC0776D, Q3.c cVar) {
        d3.i.e("<this>", interfaceC0776D);
        d3.i.e("fqName", cVar);
        return interfaceC0776D instanceof InterfaceC0779G ? ((InterfaceC0779G) interfaceC0776D).a(cVar) : m(interfaceC0776D, cVar).isEmpty();
    }

    public static boolean l() {
        Object objJ0;
        Method methodQ = x.Q("com.samsung.android.view.SemWindowManager", "isTableMode", new Class[0]);
        if (methodQ == null) {
            return false;
        }
        Method methodQ2 = x.Q("com.samsung.android.view.SemWindowManager", "getInstance", new Class[0]);
        Object obj = null;
        if (methodQ2 != null && (objJ0 = x.j0(null, methodQ2, new Object[0])) != null && objJ0.getClass().getName().equals("com.samsung.android.view.SemWindowManager")) {
            obj = objJ0;
        }
        Object objJ02 = x.j0(obj, methodQ, new Object[0]);
        if (objJ02 instanceof Boolean) {
            return ((Boolean) objJ02).booleanValue();
        }
        return false;
    }

    public static final ArrayList m(InterfaceC0776D interfaceC0776D, Q3.c cVar) {
        d3.i.e("<this>", interfaceC0776D);
        d3.i.e("fqName", cVar);
        ArrayList arrayList = new ArrayList();
        d(interfaceC0776D, cVar, arrayList);
        return arrayList;
    }

    public static void p(Button button, boolean z4, int i5) {
        Method methodJ = x.J(TextView.class, "hidden_semSetButtonShapeEnabled", Boolean.TYPE, Integer.TYPE);
        if (methodJ != null) {
            x.j0(button, methodJ, Boolean.valueOf(z4), Integer.valueOf(i5));
        }
    }

    public static void q(TextView textView, boolean z4) {
        Method methodJ = x.J(TextView.class, "hidden_semSetButtonShapeEnabled", Boolean.TYPE);
        if (methodJ != null) {
            x.j0(textView, methodJ, Boolean.valueOf(z4));
        }
    }

    public abstract boolean a(h hVar, C0738d c0738d);

    public abstract boolean b(h hVar, Object obj, Object obj2);

    public abstract boolean c(h hVar, g gVar, g gVar2);

    public abstract void n(g gVar, g gVar2);

    public abstract void o(g gVar, Thread thread);
}

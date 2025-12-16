package e;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import o.C0714c;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: c, reason: collision with root package name */
    public static final I f6780c = new I(new J(0));

    /* renamed from: d, reason: collision with root package name */
    public static final int f6781d = -100;

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f6782e = null;
    public static boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public static final C0714c f6783g = new C0714c(0);

    /* renamed from: h, reason: collision with root package name */
    public static final Object f6784h = new Object();

    /* renamed from: i, reason: collision with root package name */
    public static final Object f6785i = null;

    public static boolean e(Context context) {
        if (f6782e == null) {
            try {
                int i5 = H.f6657c;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) H.class), G.a() | 128).metaData;
                if (bundle != null) {
                    f6782e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f6782e = Boolean.FALSE;
            }
        }
        return f6782e.booleanValue();
    }

    public static void i(r rVar) {
        synchronized (f6784h) {
            try {
                Iterator it = f6783g.iterator();
                while (it.hasNext()) {
                    r rVar2 = (r) ((WeakReference) it.next()).get();
                    if (rVar2 == rVar || rVar2 == null) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void b();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract boolean j(int i5);

    public abstract void k(int i5);

    public abstract void l(View view);

    public abstract void m(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void n(CharSequence charSequence);

    public abstract AbstractC0474b o(InterfaceC0473a interfaceC0473a);
}

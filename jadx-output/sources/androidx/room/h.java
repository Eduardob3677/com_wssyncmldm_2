package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.util.Log;
import com.idm.providers.mo.IDMMoInterface;
import com.samsung.android.knox.ex.KnoxContract;
import h0.ExecutorC0433d;
import java.util.HashSet;
import l.C0640a;
import o.C0723l;
import v0.AbstractC0892a;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final Class f4959a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4960b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4961c;

    /* renamed from: d, reason: collision with root package name */
    public ExecutorC0433d f4962d;

    /* renamed from: e, reason: collision with root package name */
    public P1.e f4963e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final i f4964g;

    /* renamed from: h, reason: collision with root package name */
    public HashSet f4965h;

    public h(Context context, Class cls, String str) {
        this.f4961c = context;
        this.f4959a = cls;
        this.f4960b = str;
        i iVar = new i();
        iVar.f4966a = new C0723l();
        this.f4964g = iVar;
    }

    public final void a(AbstractC0892a... abstractC0892aArr) {
        if (this.f4965h == null) {
            this.f4965h = new HashSet();
        }
        for (AbstractC0892a abstractC0892a : abstractC0892aArr) {
            this.f4965h.add(Integer.valueOf(abstractC0892a.startVersion));
            this.f4965h.add(Integer.valueOf(abstractC0892a.endVersion));
        }
        i iVar = this.f4964g;
        iVar.getClass();
        for (AbstractC0892a abstractC0892a2 : abstractC0892aArr) {
            int i5 = abstractC0892a2.startVersion;
            int i6 = abstractC0892a2.endVersion;
            C0723l c0723l = iVar.f4966a;
            C0723l c0723l2 = (C0723l) c0723l.c(null, i5);
            if (c0723l2 == null) {
                c0723l2 = new C0723l();
                c0723l.e(i5, c0723l2);
            }
            AbstractC0892a abstractC0892a3 = (AbstractC0892a) c0723l2.c(null, i6);
            if (abstractC0892a3 != null) {
                Log.w("ROOM", "Overriding migration " + abstractC0892a3 + " with " + abstractC0892a2);
            }
            c0723l2.a(i6, abstractC0892a2);
        }
    }

    public final j b() {
        String str;
        Context context = this.f4961c;
        if (context == null) {
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }
        Class cls = this.f4959a;
        if (cls == null) {
            throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
        }
        if (this.f4962d == null) {
            this.f4962d = C0640a.f8069h;
        }
        if (this.f4963e == null) {
            this.f4963e = new P1.e(18);
        }
        P1.e eVar = this.f4963e;
        boolean z4 = this.f;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY);
        a aVar = new a(context, this.f4960b, eVar, this.f4964g, z4, (activityManager == null || activityManager.isLowRamDevice()) ? 2 : 3, this.f4962d);
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        if (!name.isEmpty()) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String str2 = canonicalName.replace('.', '_') + "_Impl";
        try {
            if (name.isEmpty()) {
                str = str2;
            } else {
                str = name + IDMMoInterface.IDM_MO_ROOT_PATH + str2;
            }
            j jVar = (j) Class.forName(str).newInstance();
            jVar.init(aVar);
            return jVar;
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("cannot find implementation for " + cls.getCanonicalName() + ". " + str2 + " does not exist");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("Cannot access the constructor" + cls.getCanonicalName());
        } catch (InstantiationException unused3) {
            throw new RuntimeException("Failed to create an instance of " + cls.getCanonicalName());
        }
    }
}

package t1;

import Z0.h;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import c1.AbstractC0213D;
import f1.AbstractC0420a;
import h1.b;
import h1.c;
import j1.C0554a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: t1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0856a {

    /* renamed from: k, reason: collision with root package name */
    public static ScheduledExecutorService f9127k;

    /* renamed from: a, reason: collision with root package name */
    public final C0856a f9128a;

    /* renamed from: b, reason: collision with root package name */
    public final PowerManager.WakeLock f9129b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkSource f9130c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9131d;

    /* renamed from: e, reason: collision with root package name */
    public final String f9132e;
    public final Context f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9133g;

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f9134h;

    /* renamed from: i, reason: collision with root package name */
    public int f9135i;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicInteger f9136j;

    public C0856a(Context context) throws IllegalAccessException, PackageManager.NameNotFoundException, IllegalArgumentException, InvocationTargetException {
        h hVar;
        Context context2;
        String packageName = context.getPackageName();
        this.f9128a = this;
        this.f9133g = true;
        this.f9134h = new HashMap();
        Collections.synchronizedSet(new HashSet());
        this.f9136j = new AtomicInteger(0);
        AbstractC0213D.d("wake:com.google.firebase.iid.WakeLockHolder", "WakeLock: wakeLockName must not be empty");
        this.f9131d = 1;
        this.f = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f9132e = "wake:com.google.firebase.iid.WakeLockHolder";
        } else {
            this.f9132e = "wake:com.google.firebase.iid.WakeLockHolder".length() != 0 ? "*gcore*:".concat("wake:com.google.firebase.iid.WakeLockHolder") : new String("*gcore*:");
        }
        this.f9129b = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.iid.WakeLockHolder");
        Method method = c.f6995a;
        if (context.getPackageManager() != null) {
            if (C0554a.a(context).f1317a.getPackageManager().checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) == 0) {
                int i5 = b.f6994a;
                packageName = (packageName == null || packageName.trim().isEmpty()) ? context.getPackageName() : packageName;
                WorkSource workSource = null;
                if (context.getPackageManager() != null && packageName != null) {
                    try {
                        ApplicationInfo applicationInfo = C0554a.a(context).f1317a.getPackageManager().getApplicationInfo(packageName, 0);
                        if (applicationInfo == null) {
                            Log.e("WorkSourceUtil", packageName.length() != 0 ? "Could not get applicationInfo from package: ".concat(packageName) : new String("Could not get applicationInfo from package: "));
                        } else {
                            int i6 = applicationInfo.uid;
                            workSource = new WorkSource();
                            Method method2 = c.f6996b;
                            if (method2 != null) {
                                try {
                                    method2.invoke(workSource, Integer.valueOf(i6), packageName);
                                } catch (Exception e5) {
                                    Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e5);
                                }
                            } else {
                                Method method3 = c.f6995a;
                                if (method3 != null) {
                                    try {
                                        method3.invoke(workSource, Integer.valueOf(i6));
                                    } catch (Exception e6) {
                                        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e6);
                                    }
                                }
                            }
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        Log.e("WorkSourceUtil", packageName.length() != 0 ? "Could not find package: ".concat(packageName) : new String("Could not find package: "));
                    }
                }
                this.f9130c = workSource;
                if (workSource != null && (context2 = this.f) != null && context2.getPackageManager() != null) {
                    if (C0554a.a(context2).f1317a.getPackageManager().checkPermission("android.permission.UPDATE_DEVICE_STATS", context2.getPackageName()) == 0) {
                        workSource.add(workSource);
                        try {
                            this.f9129b.setWorkSource(workSource);
                        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e7) {
                            Log.wtf("WakeLock", e7.toString());
                        }
                    }
                }
            }
        }
        if (f9127k == null) {
            synchronized (AbstractC0420a.class) {
                try {
                    if (AbstractC0420a.f6824a == null) {
                        AbstractC0420a.f6824a = new h(13);
                    }
                    hVar = AbstractC0420a.f6824a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            hVar.getClass();
            f9127k = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
        }
    }

    public final void a(long j3) {
        this.f9136j.incrementAndGet();
        if (this.f9133g) {
            TextUtils.isEmpty(null);
        }
        synchronized (this.f9128a) {
            try {
                if (!this.f9134h.isEmpty() || this.f9135i > 0) {
                    if (!this.f9129b.isHeld()) {
                        this.f9134h.clear();
                        this.f9135i = 0;
                    }
                }
                if (this.f9133g) {
                    Integer[] numArr = (Integer[]) this.f9134h.get(null);
                    if (numArr == null) {
                        this.f9134h.put(null, new Integer[]{1});
                        W1.a.c0(this.f, L2.b.o(this.f9129b, null), 7, this.f9132e, null, this.f9131d, c(), j3);
                        this.f9135i++;
                    } else {
                        numArr[0] = Integer.valueOf(numArr[0].intValue() + 1);
                        if (!this.f9133g) {
                            W1.a.c0(this.f, L2.b.o(this.f9129b, null), 7, this.f9132e, null, this.f9131d, c(), j3);
                            this.f9135i++;
                        }
                    }
                } else if (!this.f9133g && this.f9135i == 0) {
                    W1.a.c0(this.f, L2.b.o(this.f9129b, null), 7, this.f9132e, null, this.f9131d, c(), j3);
                    this.f9135i++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f9129b.acquire();
        if (j3 > 0) {
            f9127k.schedule(new B1.h(17, this), j3, TimeUnit.MILLISECONDS);
        }
    }

    public final void b() {
        Integer[] numArr;
        if (this.f9136j.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f9132e).concat(" release without a matched acquire!"));
        }
        if (this.f9133g) {
            TextUtils.isEmpty(null);
        }
        synchronized (this.f9128a) {
            try {
                if (!this.f9133g || (numArr = (Integer[]) this.f9134h.get(null)) == null) {
                    if (!this.f9133g && this.f9135i == 1) {
                        W1.a.c0(this.f, L2.b.o(this.f9129b, null), 8, this.f9132e, null, this.f9131d, c(), 0L);
                        this.f9135i--;
                    }
                } else if (numArr[0].intValue() == 1) {
                    this.f9134h.remove(null);
                    W1.a.c0(this.f, L2.b.o(this.f9129b, null), 8, this.f9132e, null, this.f9131d, c(), 0L);
                    this.f9135i--;
                } else {
                    numArr[0] = Integer.valueOf(numArr[0].intValue() - 1);
                    if (!this.f9133g) {
                        W1.a.c0(this.f, L2.b.o(this.f9129b, null), 8, this.f9132e, null, this.f9131d, c(), 0L);
                        this.f9135i--;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        d();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List c() {
        int iIntValue;
        String str;
        WorkSource workSource = this.f9130c;
        if (workSource != null) {
            Method method = c.f6997c;
            if (method != null) {
                try {
                    iIntValue = ((Integer) method.invoke(workSource, null)).intValue();
                } catch (Exception e5) {
                    Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e5);
                }
            }
            if (iIntValue != 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (int i5 = 0; i5 < iIntValue; i5++) {
                Method method2 = c.f6998d;
                if (method2 != null) {
                    try {
                        str = (String) method2.invoke(workSource, Integer.valueOf(i5));
                    } catch (Exception e6) {
                        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e6);
                    }
                } else {
                    str = null;
                }
                int i6 = b.f6994a;
                if (str != null && !str.trim().isEmpty()) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        }
        Method method3 = c.f6995a;
        iIntValue = 0;
        if (iIntValue != 0) {
        }
    }

    public final void d() {
        PowerManager.WakeLock wakeLock = this.f9129b;
        if (wakeLock.isHeld()) {
            try {
                wakeLock.release();
            } catch (RuntimeException e5) {
                if (!e5.getClass().equals(RuntimeException.class)) {
                    throw e5;
                }
                Log.e("WakeLock", String.valueOf(this.f9132e).concat(" was already released!"), e5);
            }
            wakeLock.isHeld();
        }
    }
}

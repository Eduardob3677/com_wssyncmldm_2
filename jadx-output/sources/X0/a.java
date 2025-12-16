package X0;

import android.content.Context;
import android.content.SharedPreferences;
import c1.AbstractC0213D;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f2861c = new ReentrantLock();

    /* renamed from: d, reason: collision with root package name */
    public static a f2862d;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantLock f2863a = new ReentrantLock();

    /* renamed from: b, reason: collision with root package name */
    public final SharedPreferences f2864b;

    public a(Context context) {
        this.f2864b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static a a(Context context) {
        AbstractC0213D.e(context);
        ReentrantLock reentrantLock = f2861c;
        reentrantLock.lock();
        try {
            if (f2862d == null) {
                f2862d = new a(context.getApplicationContext());
            }
            a aVar = f2862d;
            reentrantLock.unlock();
            return aVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final String b(String str) {
        ReentrantLock reentrantLock = this.f2863a;
        reentrantLock.lock();
        try {
            return this.f2864b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}

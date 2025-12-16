package h0;

import android.content.Context;
import android.content.pm.PackageManager;
import java.io.File;
import java.io.IOException;

/* renamed from: h0.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0441l {

    /* renamed from: a, reason: collision with root package name */
    public static final p.i f6983a = new p.i();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f6984b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static e4.d f6985c = null;

    public static e4.d a() {
        e4.d dVar = new e4.d(14);
        f6985c = dVar;
        p.i iVar = f6983a;
        iVar.getClass();
        if (p.h.f.b(iVar, null, dVar)) {
            p.h.b(iVar);
        }
        return f6985c;
    }

    public static void b(Context context, boolean z4) {
        C0440k c0440kA;
        int i5;
        if (z4 || f6985c == null) {
            synchronized (f6984b) {
                if (!z4) {
                    try {
                        if (f6985c != null) {
                            return;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                long length = file.length();
                int i6 = 0;
                boolean z5 = file.exists() && length > 0;
                File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                long length2 = file2.length();
                boolean z6 = file2.exists() && length2 > 0;
                try {
                    long j3 = AbstractC0439j.a(context.getApplicationContext().getPackageManager(), context).lastUpdateTime;
                    File file3 = new File(context.getFilesDir(), "profileInstalled");
                    if (file3.exists()) {
                        try {
                            c0440kA = C0440k.a(file3);
                        } catch (IOException unused) {
                            a();
                            return;
                        }
                    } else {
                        c0440kA = null;
                    }
                    if (c0440kA != null && c0440kA.f6981c == j3 && (i5 = c0440kA.f6980b) != 2) {
                        i6 = i5;
                    } else if (z5) {
                        i6 = 1;
                    } else if (z6) {
                        i6 = 2;
                    }
                    if (z4 && z6 && i6 != 1) {
                        i6 = 2;
                    }
                    C0440k c0440k = new C0440k(1, (c0440kA == null || c0440kA.f6980b != 2 || i6 != 1 || length >= c0440kA.f6982d) ? i6 : 3, j3, length2);
                    if (c0440kA == null || !c0440kA.equals(c0440k)) {
                        try {
                            c0440k.b(file3);
                        } catch (IOException unused2) {
                        }
                    }
                    a();
                } catch (PackageManager.NameNotFoundException unused3) {
                    a();
                }
            }
        }
    }
}

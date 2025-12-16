package G;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o.C0717f;
import o.C0722k;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final C0717f f790a = new C0717f(16);

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f791b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f792c;

    /* renamed from: d, reason: collision with root package name */
    public static final C0722k f793d;

    static {
        k kVar = new k();
        kVar.f800a = "fonts-androidx";
        kVar.f801b = 10;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, IDMCallbackStatusInterface.IDM_RESULTS, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), kVar);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f791b = threadPoolExecutor;
        f792c = new Object();
        f793d = new C0722k();
    }

    public static g a(String str, Context context, D3.e eVar, int i5) {
        C0717f c0717f = f790a;
        Typeface typeface = (Typeface) c0717f.a(str);
        if (typeface != null) {
            return new g(typeface);
        }
        try {
            B1.e eVarA = d.a(context, eVar);
            int i6 = 1;
            i[] iVarArr = (i[]) eVarA.f202d;
            int i7 = eVarA.f201c;
            if (i7 != 0) {
                i6 = i7 != 1 ? -3 : -2;
            } else if (iVarArr != null && iVarArr.length != 0) {
                int length = iVarArr.length;
                i6 = 0;
                int i8 = 0;
                while (true) {
                    if (i8 >= length) {
                        break;
                    }
                    int i9 = iVarArr[i8].f798e;
                    if (i9 == 0) {
                        i8++;
                    } else if (i9 >= 0) {
                        i6 = i9;
                    }
                }
            }
            if (i6 != 0) {
                return new g(i6);
            }
            Typeface typefaceA = B.h.a(context, iVarArr, i5);
            if (typefaceA == null) {
                return new g(-3);
            }
            c0717f.b(str, typefaceA);
            return new g(typefaceA);
        } catch (PackageManager.NameNotFoundException unused) {
            return new g(-1);
        }
    }
}

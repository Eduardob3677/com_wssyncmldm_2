package d0;

import B.f;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.picker.widget.HandlerC0161c;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: d0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0386a {

    /* renamed from: e, reason: collision with root package name */
    public static final Object f6494e = new Object();
    public static C0386a f;

    /* renamed from: a, reason: collision with root package name */
    public final Context f6495a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f6496b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f6497c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f6498d = new ArrayList();

    public C0386a(Context context) {
        this.f6495a = context;
        new HandlerC0161c(this, context.getMainLooper(), 2);
    }

    public static C0386a a(Context context) {
        C0386a c0386a;
        synchronized (f6494e) {
            try {
                if (f == null) {
                    f = new C0386a(context.getApplicationContext());
                }
                c0386a = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0386a;
    }

    public final void b(Intent intent) {
        synchronized (this.f6496b) {
            try {
                intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f6495a.getContentResolver());
                intent.getData();
                String scheme = intent.getScheme();
                intent.getCategories();
                boolean z4 = (intent.getFlags() & 8) != 0;
                if (z4) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList = (ArrayList) this.f6497c.get(intent.getAction());
                if (arrayList != null) {
                    if (z4) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList);
                    }
                    if (arrayList.size() > 0) {
                        f.F(arrayList.get(0));
                        if (!z4) {
                            throw null;
                        }
                        throw null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

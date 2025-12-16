package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class k0 {

    /* renamed from: a, reason: collision with root package name */
    public static final p0 f3910a = new p0();

    /* renamed from: b, reason: collision with root package name */
    public static final r0 f3911b;

    static {
        r0 r0Var = null;
        try {
            r0Var = (r0) C0.o.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f3911b = r0Var;
    }

    public static final void a(ArrayList arrayList, int i5) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(i5);
        }
    }
}

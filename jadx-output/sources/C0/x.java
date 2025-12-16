package C0;

import J.Q;
import android.view.ViewGroup;
import com.wssyncmldm.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import o.C0713b;

/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    public static final C0011a f328a;

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f329b;

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f330c;

    static {
        C0011a c0011a = new C0011a();
        c0011a.f331A = false;
        c0011a.I(new j(2));
        c0011a.I(new C0017g());
        c0011a.I(new j(1));
        f328a = c0011a;
        f329b = new ThreadLocal();
        f330c = new ArrayList();
    }

    public static void a(ViewGroup viewGroup, t tVar) {
        ArrayList arrayList = f330c;
        if (arrayList.contains(viewGroup)) {
            return;
        }
        WeakHashMap weakHashMap = Q.f940a;
        if (viewGroup.isLaidOut()) {
            arrayList.add(viewGroup);
            if (tVar == null) {
                tVar = f328a;
            }
            t tVarClone = tVar.clone();
            ArrayList arrayList2 = (ArrayList) b().getOrDefault(viewGroup, null);
            if (arrayList2 != null && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((t) it.next()).v(viewGroup);
                }
            }
            if (tVarClone != null) {
                tVarClone.i(viewGroup, true);
            }
            B.f.F(viewGroup.getTag(R.id.transition_current_scene));
            viewGroup.setTag(R.id.transition_current_scene, null);
            if (tVarClone != null) {
                w wVar = new w();
                wVar.f326c = tVarClone;
                wVar.f327d = viewGroup;
                viewGroup.addOnAttachStateChangeListener(wVar);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(wVar);
            }
        }
    }

    public static C0713b b() {
        C0713b c0713b;
        ThreadLocal threadLocal = f329b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (c0713b = (C0713b) weakReference.get()) != null) {
            return c0713b;
        }
        C0713b c0713b2 = new C0713b();
        threadLocal.set(new WeakReference(c0713b2));
        return c0713b2;
    }
}

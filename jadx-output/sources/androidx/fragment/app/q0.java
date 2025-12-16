package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class q0 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3935c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3936d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3937e;
    public final /* synthetic */ ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3938g;

    public q0(int i5, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f3935c = i5;
        this.f3936d = arrayList;
        this.f3937e = arrayList2;
        this.f = arrayList3;
        this.f3938g = arrayList4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (int i5 = 0; i5 < this.f3935c; i5++) {
            View view = (View) this.f3936d.get(i5);
            String str = (String) this.f3937e.get(i5);
            WeakHashMap weakHashMap = J.Q.f940a;
            J.I.v(view, str);
            J.I.v((View) this.f.get(i5), (String) this.f3938g.get(i5));
        }
    }
}

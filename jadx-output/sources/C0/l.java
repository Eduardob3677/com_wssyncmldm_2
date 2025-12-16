package C0;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f285a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f286b;

    public l(View view, ArrayList arrayList) {
        this.f285a = view;
        this.f286b = arrayList;
    }

    @Override // C0.s
    public final void a() {
    }

    @Override // C0.s
    public final void b() {
    }

    @Override // C0.s
    public final void c(t tVar) {
        tVar.w(this);
        this.f285a.setVisibility(8);
        ArrayList arrayList = this.f286b;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((View) arrayList.get(i5)).setVisibility(0);
        }
    }

    @Override // C0.s
    public final void d(t tVar) {
        tVar.w(this);
        tVar.a(this);
    }

    @Override // C0.s
    public final void e() {
    }
}

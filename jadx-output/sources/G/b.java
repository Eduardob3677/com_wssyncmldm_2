package G;

import H0.n;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import s2.C0837c;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f776c;

    /* renamed from: d, reason: collision with root package name */
    public final int f777d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f778e;

    public /* synthetic */ b(int i5, Object obj, int i6) {
        this.f776c = i6;
        this.f778e = obj;
        this.f777d = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f776c) {
            case 0:
                A.b bVar = (A.b) ((C0837c) this.f778e).f9022c;
                if (bVar != null) {
                    bVar.h(this.f777d);
                    break;
                }
                break;
            case 1:
                ((RecyclerView) this.f778e).B0(this.f777d);
                break;
            case 2:
                ArrayList arrayList = (ArrayList) this.f778e;
                int size = arrayList.size();
                int i5 = 0;
                if (this.f777d == 1) {
                    while (i5 < size) {
                        ((androidx.emoji2.text.h) arrayList.get(i5)).b();
                        i5++;
                    }
                    break;
                } else {
                    while (i5 < size) {
                        ((androidx.emoji2.text.h) arrayList.get(i5)).a();
                        i5++;
                    }
                    break;
                }
            default:
                ((com.google.android.material.datepicker.l) this.f778e).f5984j.B0(this.f777d);
                break;
        }
    }

    public b(int i5, n nVar) {
        this.f776c = 1;
        this.f777d = i5;
        this.f778e = nVar;
    }

    public b(List list, int i5, Throwable th) {
        this.f776c = 2;
        Z0.j.m("initCallbacks cannot be null", list);
        this.f778e = new ArrayList(list);
        this.f777d = i5;
    }
}

package androidx.preference;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4732c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4733d;

    public /* synthetic */ t(int i5, Object obj) {
        this.f4732c = i5;
        this.f4733d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4732c) {
            case 0:
                RecyclerView recyclerView = ((z) this.f4733d).mList;
                recyclerView.focusableViewAvailable(recyclerView);
                break;
            case 1:
                ((C0184d) this.f4733d).k();
                break;
            default:
                ((D) this.f4733d).p();
                break;
        }
    }
}

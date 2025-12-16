package j0;

import android.util.Log;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class V {

    /* renamed from: a, reason: collision with root package name */
    public int f7372a;

    /* renamed from: b, reason: collision with root package name */
    public int f7373b;

    /* renamed from: c, reason: collision with root package name */
    public int f7374c;

    /* renamed from: d, reason: collision with root package name */
    public int f7375d;

    /* renamed from: e, reason: collision with root package name */
    public Interpolator f7376e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f7377g;

    public final void a(RecyclerView recyclerView) {
        int i5 = this.f7375d;
        if (i5 >= 0) {
            this.f7375d = -1;
            recyclerView.c0(i5);
            this.f = false;
            return;
        }
        if (!this.f) {
            this.f7377g = 0;
            return;
        }
        Interpolator interpolator = this.f7376e;
        if (interpolator != null && this.f7374c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i6 = this.f7374c;
        if (i6 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.f4868i0.c(this.f7372a, this.f7373b, i6, interpolator);
        int i7 = this.f7377g + 1;
        this.f7377g = i7;
        if (i7 > 10) {
            Log.e("SeslRecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f = false;
    }
}

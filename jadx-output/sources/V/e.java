package V;

import J.r0;
import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.Choreographer;
import androidx.picker.widget.M;
import androidx.picker.widget.z;
import java.util.ArrayList;
import s2.C0837c;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: d, reason: collision with root package name */
    public final C0837c f2767d;

    /* renamed from: a, reason: collision with root package name */
    public float f2764a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public float f2765b = Float.MAX_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2766c = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2768e = false;
    public long f = 0;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f2770h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f2771i = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public float f2769g = 1.0f;

    /* renamed from: j, reason: collision with root package name */
    public f f2772j = null;

    /* renamed from: k, reason: collision with root package name */
    public float f2773k = Float.MAX_VALUE;

    public e(d dVar) {
        this.f2767d = new C0837c(dVar);
    }

    public final void a(float f) {
        if (this.f2768e) {
            this.f2773k = f;
            return;
        }
        if (this.f2772j == null) {
            this.f2772j = new f(f);
        }
        f fVar = this.f2772j;
        double d2 = f;
        fVar.f2781i = d2;
        double d5 = (float) d2;
        if (d5 > Float.MAX_VALUE) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (d5 < -3.4028235E38f) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
        double dAbs = Math.abs(this.f2769g * 0.75f);
        fVar.f2777d = dAbs;
        fVar.f2778e = dAbs * 62.5d;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        boolean z4 = this.f2768e;
        if (z4 || z4) {
            return;
        }
        this.f2768e = true;
        if (!this.f2766c) {
            this.f2765b = ((d) this.f2767d.f9022c).f2763a;
        }
        float f5 = this.f2765b;
        if (f5 > Float.MAX_VALUE || f5 < -3.4028235E38f) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        ThreadLocal threadLocal = b.f;
        if (threadLocal.get() == null) {
            threadLocal.set(new b());
        }
        b bVar = (b) threadLocal.get();
        ArrayList arrayList = bVar.f2757b;
        if (arrayList.size() == 0) {
            if (bVar.f2759d == null) {
                bVar.f2759d = new r0(bVar.f2758c);
            }
            r0 r0Var = bVar.f2759d;
            ((Choreographer) r0Var.f1007d).postFrameCallback((a) r0Var.f1008e);
        }
        if (arrayList.contains(this)) {
            return;
        }
        arrayList.add(this);
    }

    public final void b() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.f2768e) {
            c(true);
        }
    }

    public final void c(boolean z4) {
        ArrayList arrayList;
        int i5 = 0;
        this.f2768e = false;
        ThreadLocal threadLocal = b.f;
        if (threadLocal.get() == null) {
            threadLocal.set(new b());
        }
        b bVar = (b) threadLocal.get();
        bVar.f2756a.remove(this);
        ArrayList arrayList2 = bVar.f2757b;
        int iIndexOf = arrayList2.indexOf(this);
        if (iIndexOf >= 0) {
            arrayList2.set(iIndexOf, null);
            bVar.f2760e = true;
        }
        this.f = 0L;
        this.f2766c = false;
        while (true) {
            arrayList = this.f2770h;
            if (i5 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i5) != null) {
                ((z) arrayList.get(i5)).a();
            }
            i5++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    public final void d(float f) {
        ArrayList arrayList;
        ((d) this.f2767d.f9022c).f2763a = f;
        int i5 = 0;
        while (true) {
            arrayList = this.f2771i;
            if (i5 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i5) != null) {
                ((M) arrayList.get(i5)).a(this, this.f2765b, this.f2764a);
            }
            i5++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }
}

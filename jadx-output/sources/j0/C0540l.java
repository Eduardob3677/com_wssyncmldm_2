package j0;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: j0.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0540l extends M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0541m f7500a;

    public C0540l(C0541m c0541m) {
        this.f7500a = c0541m;
    }

    @Override // j0.M
    public final void b(RecyclerView recyclerView, int i5, int i6) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        C0541m c0541m = this.f7500a;
        int iComputeVerticalScrollRange = c0541m.f7526s.computeVerticalScrollRange();
        int i7 = c0541m.f7525r;
        int i8 = iComputeVerticalScrollRange - i7;
        int i9 = c0541m.f7510a;
        c0541m.f7527t = i8 > 0 && i7 >= i9;
        int iComputeHorizontalScrollRange = c0541m.f7526s.computeHorizontalScrollRange();
        int i10 = c0541m.f7524q;
        boolean z4 = iComputeHorizontalScrollRange - i10 > 0 && i10 >= i9;
        c0541m.f7528u = z4;
        boolean z5 = c0541m.f7527t;
        if (!z5 && !z4) {
            if (c0541m.f7529v != 0) {
                c0541m.g(0);
                return;
            }
            return;
        }
        if (z5) {
            float f = i7;
            c0541m.f7520l = (int) ((((f / 2.0f) + iComputeVerticalScrollOffset) * f) / iComputeVerticalScrollRange);
            c0541m.f7519k = Math.min(i7, (i7 * i7) / iComputeVerticalScrollRange);
        }
        if (c0541m.f7528u) {
            float f5 = iComputeHorizontalScrollOffset;
            float f6 = i10;
            c0541m.f7522o = (int) ((((f6 / 2.0f) + f5) * f6) / iComputeHorizontalScrollRange);
            c0541m.n = Math.min(i10, (i10 * i10) / iComputeHorizontalScrollRange);
        }
        int i11 = c0541m.f7529v;
        if (i11 == 0 || i11 == 1) {
            c0541m.g(1);
        }
    }
}

package z1;

import J.Q;
import Z0.j;
import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;

/* renamed from: z1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0946a extends j {

    /* renamed from: b, reason: collision with root package name */
    public int f9719b;

    /* renamed from: c, reason: collision with root package name */
    public int f9720c = -1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f9721d;

    public C0946a(SwipeDismissBehavior swipeDismissBehavior) {
        this.f9721d = swipeDismissBehavior;
    }

    @Override // Z0.j
    public final int O(View view) {
        return view.getWidth();
    }

    @Override // Z0.j
    public final void Y(int i5, View view) {
        this.f9720c = i5;
        this.f9719b = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.f9721d;
            swipeDismissBehavior.f5832c = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.f5832c = false;
        }
    }

    @Override // Z0.j
    public final void Z(int i5) {
        this.f9721d.getClass();
    }

    @Override // Z0.j
    public final void a0(View view, int i5, int i6) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f9721d;
        float f = width * swipeDismissBehavior.f;
        float width2 = view.getWidth() * swipeDismissBehavior.f5835g;
        float fAbs = Math.abs(i5 - this.f9719b);
        if (fAbs <= f) {
            view.setAlpha(1.0f);
        } else if (fAbs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((fAbs - f) / (width2 - f))), 1.0f));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    @Override // Z0.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b0(View view, float f, float f5) {
        int i5;
        this.f9720c = -1;
        int width = view.getWidth();
        boolean z4 = true;
        SwipeDismissBehavior swipeDismissBehavior = this.f9721d;
        if (f != 0.0f) {
            WeakHashMap weakHashMap = Q.f940a;
            boolean z5 = view.getLayoutDirection() == 1;
            int i6 = swipeDismissBehavior.f5833d;
            if (i6 != 2 && (i6 != 0 ? i6 != 1 || (!z5 ? f < 0.0f : f > 0.0f) : !z5 ? f > 0.0f : f < 0.0f)) {
                i5 = this.f9719b;
                z4 = false;
            } else if (f >= 0.0f) {
                int left = view.getLeft();
                int i7 = this.f9719b;
                i5 = left < i7 ? this.f9719b - width : i7 + width;
            }
        } else {
            if (Math.abs(view.getLeft() - this.f9719b) >= Math.round(view.getWidth() * swipeDismissBehavior.f5834e)) {
            }
        }
        if (swipeDismissBehavior.f5830a.o(i5, view.getTop())) {
            G.a aVar = new G.a(swipeDismissBehavior, view, z4);
            WeakHashMap weakHashMap2 = Q.f940a;
            view.postOnAnimation(aVar);
        }
    }

    @Override // Z0.j
    public final boolean d0(int i5, View view) {
        int i6 = this.f9720c;
        return (i6 == -1 || i6 == i5) && this.f9721d.s(view);
    }

    @Override // Z0.j
    public final int o(int i5, View view) {
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = Q.f940a;
        boolean z4 = view.getLayoutDirection() == 1;
        int i6 = this.f9721d.f5833d;
        if (i6 == 0) {
            if (z4) {
                width = this.f9719b - view.getWidth();
                width2 = this.f9719b;
            } else {
                width = this.f9719b;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i6 != 1) {
            width = this.f9719b - view.getWidth();
            width2 = this.f9719b + view.getWidth();
        } else if (z4) {
            width = this.f9719b;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f9719b - view.getWidth();
            width2 = this.f9719b;
        }
        return Math.min(Math.max(width, i5), width2);
    }

    @Override // Z0.j
    public final int p(int i5, View view) {
        return view.getTop();
    }
}

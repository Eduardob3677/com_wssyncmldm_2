package S;

import K.h;
import android.graphics.Rect;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class c implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f2438a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2439b = new Rect();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2440c;

    /* renamed from: d, reason: collision with root package name */
    public final e4.d f2441d;

    public c(boolean z4, e4.d dVar) {
        this.f2440c = z4;
        this.f2441d = dVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.f2441d.getClass();
        Rect rect = this.f2438a;
        ((h) obj).e(rect);
        Rect rect2 = this.f2439b;
        ((h) obj2).e(rect2);
        int i5 = rect.top;
        int i6 = rect2.top;
        if (i5 < i6) {
            return -1;
        }
        if (i5 > i6) {
            return 1;
        }
        int i7 = rect.left;
        int i8 = rect2.left;
        boolean z4 = this.f2440c;
        if (i7 < i8) {
            return z4 ? 1 : -1;
        }
        if (i7 > i8) {
            return z4 ? -1 : 1;
        }
        int i9 = rect.bottom;
        int i10 = rect2.bottom;
        if (i9 < i10) {
            return -1;
        }
        if (i9 > i10) {
            return 1;
        }
        int i11 = rect.right;
        int i12 = rect2.right;
        if (i11 < i12) {
            return z4 ? 1 : -1;
        }
        if (i11 > i12) {
            return z4 ? -1 : 1;
        }
        return 0;
    }
}

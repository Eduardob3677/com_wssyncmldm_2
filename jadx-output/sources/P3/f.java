package P3;

import d3.i;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class f extends N3.a {

    /* renamed from: g, reason: collision with root package name */
    public static final f f2161g;

    /* renamed from: h, reason: collision with root package name */
    public static final f f2162h;
    public final boolean f;

    static {
        f fVar = new f(1, 8, 0);
        f2161g = fVar;
        int i5 = fVar.f1867c;
        int i6 = fVar.f1866b;
        f2162h = (i6 == 1 && i5 == 9) ? new f(2, 0, 0) : new f(i6, i5 + 1, 0);
        new f(new int[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(int[] iArr, boolean z4) {
        super(Arrays.copyOf(iArr, iArr.length));
        i.e("versionArray", iArr);
        this.f = z4;
    }

    public final boolean b(f fVar) {
        i.e("metadataVersionFromLanguageVersion", fVar);
        f fVar2 = f2161g;
        int i5 = this.f1866b;
        int i6 = this.f1867c;
        if (i5 == 2 && i6 == 0 && fVar2.f1866b == 1 && fVar2.f1867c == 8) {
            return true;
        }
        if (!this.f) {
            fVar2 = f2162h;
        }
        fVar2.getClass();
        int i7 = fVar.f1866b;
        int i8 = fVar2.f1866b;
        if (i8 > i7 || (i8 >= i7 && fVar2.f1867c > fVar.f1867c)) {
            fVar = fVar2;
        }
        boolean z4 = false;
        if ((i5 == 1 && i6 == 0) || i5 == 0) {
            return false;
        }
        int i9 = fVar.f1866b;
        if (i5 > i9 || (i5 >= i9 && i6 > fVar.f1867c)) {
            z4 = true;
        }
        return !z4;
    }

    public f(int... iArr) {
        this(iArr, false);
    }
}

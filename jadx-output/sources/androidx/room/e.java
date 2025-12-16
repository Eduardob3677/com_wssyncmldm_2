package androidx.room;

import java.util.Collections;
import java.util.Set;
import o.C0714c;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4940a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f4941b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f4942c;

    /* renamed from: d, reason: collision with root package name */
    public final d f4943d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f4944e;

    public e(f fVar, int[] iArr, String[] strArr, long[] jArr) {
        this.f4943d = fVar;
        this.f4940a = iArr;
        this.f4941b = strArr;
        this.f4942c = jArr;
        if (iArr.length != 1) {
            this.f4944e = null;
            return;
        }
        C0714c c0714c = new C0714c(0);
        c0714c.add(strArr[0]);
        this.f4944e = Collections.unmodifiableSet(c0714c);
    }

    public final void a(long[] jArr) {
        int[] iArr = this.f4940a;
        int length = iArr.length;
        Set c0714c = null;
        for (int i5 = 0; i5 < length; i5++) {
            long j3 = jArr[iArr[i5]];
            long[] jArr2 = this.f4942c;
            if (jArr2[i5] < j3) {
                jArr2[i5] = j3;
                if (length == 1) {
                    c0714c = this.f4944e;
                } else {
                    if (c0714c == null) {
                        c0714c = new C0714c(length);
                    }
                    c0714c.add(this.f4941b[i5]);
                }
            }
        }
        if (c0714c != null) {
            this.f4943d.onInvalidated(c0714c);
        }
    }
}

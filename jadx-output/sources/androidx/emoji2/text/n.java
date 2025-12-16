package androidx.emoji2.text;

import android.util.SparseArray;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public int f3708a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final q f3709b;

    /* renamed from: c, reason: collision with root package name */
    public q f3710c;

    /* renamed from: d, reason: collision with root package name */
    public q f3711d;

    /* renamed from: e, reason: collision with root package name */
    public int f3712e;
    public int f;

    public n(q qVar) {
        this.f3709b = qVar;
        this.f3710c = qVar;
    }

    public final int a(int i5) {
        SparseArray sparseArray = this.f3710c.f3721a;
        q qVar = sparseArray == null ? null : (q) sparseArray.get(i5);
        int i6 = 1;
        int i7 = 2;
        if (this.f3708a == 2) {
            if (qVar != null) {
                this.f3710c = qVar;
                this.f++;
            } else if (i5 == 65038) {
                b();
            } else if (i5 != 65039) {
                q qVar2 = this.f3710c;
                if (qVar2.f3722b != null) {
                    i7 = 3;
                    if (this.f != 1) {
                        this.f3711d = qVar2;
                        b();
                    } else if (c()) {
                        this.f3711d = this.f3710c;
                        b();
                    } else {
                        b();
                    }
                } else {
                    b();
                }
            }
            i6 = i7;
        } else if (qVar == null) {
            b();
        } else {
            this.f3708a = 2;
            this.f3710c = qVar;
            this.f = 1;
            i6 = i7;
        }
        this.f3712e = i5;
        return i6;
    }

    public final void b() {
        this.f3708a = 1;
        this.f3710c = this.f3709b;
        this.f = 0;
    }

    public final boolean c() {
        W.a aVarC = this.f3710c.f3722b.c();
        int iA = aVarC.a(6);
        return !(iA == 0 || ((ByteBuffer) aVarC.f938d).get(iA + aVarC.f935a) == 0) || this.f3712e == 65039;
    }
}

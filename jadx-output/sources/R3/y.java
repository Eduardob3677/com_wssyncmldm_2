package R3;

import com.google.android.gms.internal.p000firebaseauthapi.Z4;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class y implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2421c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2422d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f2423e;
    public final /* synthetic */ Iterable f;

    public y(Z4 z4) {
        this.f = z4;
        this.f2423e = z4.n();
    }

    public byte a() {
        try {
            byte[] bArr = ((z) this.f).f2424d;
            int i5 = this.f2422d;
            this.f2422d = i5 + 1;
            return bArr[i5];
        } catch (ArrayIndexOutOfBoundsException e5) {
            throw new NoSuchElementException(e5.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f2421c) {
            case 0:
                if (this.f2422d < this.f2423e) {
                }
                break;
            default:
                if (this.f2422d < this.f2423e) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f2421c) {
            case 0:
                return Byte.valueOf(a());
            default:
                int i5 = this.f2422d;
                if (i5 >= this.f2423e) {
                    throw new NoSuchElementException();
                }
                this.f2422d = i5 + 1;
                return Byte.valueOf(((Z4) this.f).m(i5));
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f2421c) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public y(z zVar) {
        this.f = zVar;
        this.f2423e = zVar.f2424d.length;
    }
}

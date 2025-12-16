package Z0;

import A3.D;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class c extends AbstractC0387a {
    public static final Parcelable.Creator<c> CREATOR = new E0.a(5);

    /* renamed from: c, reason: collision with root package name */
    public final String f2999c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3000d;

    /* renamed from: e, reason: collision with root package name */
    public final long f3001e;

    public c(long j3, int i5, String str) {
        this.f2999c = str;
        this.f3000d = i5;
        this.f3001e = j3;
    }

    public final long d() {
        long j3 = this.f3001e;
        return j3 == -1 ? this.f3000d : j3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            String str = this.f2999c;
            if (((str != null && str.equals(cVar.f2999c)) || (str == null && cVar.f2999c == null)) && d() == cVar.d()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2999c, Long.valueOf(d())});
    }

    public final String toString() {
        D d2 = new D(this);
        d2.C0("name", this.f2999c);
        d2.C0("version", Long.valueOf(d()));
        return d2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2999c);
        x.w1(parcel, 2, 4);
        parcel.writeInt(this.f3000d);
        long jD = d();
        x.w1(parcel, 3, 8);
        parcel.writeLong(jD);
        x.v1(parcel, iT1);
    }

    public c(String str, long j3) {
        this.f2999c = str;
        this.f3001e = j3;
        this.f3000d = -1;
    }
}

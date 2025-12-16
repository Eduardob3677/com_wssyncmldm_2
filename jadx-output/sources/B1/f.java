package B1;

import H0.o;
import S1.A;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.B;
import j0.T;
import k.G1;
import k.P0;

/* loaded from: classes.dex */
public final class f implements Parcelable.ClassLoaderCreator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f203a;

    public /* synthetic */ f(int i5) {
        this.f203a = i5;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f203a) {
            case 0:
                return new g(parcel, classLoader);
            case 1:
                return new C1.b(parcel, classLoader);
            case 2:
                return new F0.i(parcel, classLoader);
            case 3:
                o oVar = new o(parcel, classLoader);
                oVar.f854c = parcel.readInt();
                oVar.f855d = parcel.readInt();
                oVar.f856e = parcel.readParcelable(classLoader);
                return oVar;
            case 4:
                return new J1.a(parcel, classLoader);
            case 5:
                return new Q1.c(parcel, classLoader);
            case 6:
                if (parcel.readParcelable(classLoader) == null) {
                    return R.b.f2269d;
                }
                throw new IllegalStateException("superState must be null");
            case 7:
                return new A(parcel, classLoader);
            case 8:
                return new B(parcel, classLoader);
            case 9:
                return new T(parcel, classLoader);
            case 10:
                return new P0(parcel, classLoader);
            case 11:
                return new G1(parcel, classLoader);
            default:
                return new w.f(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i5) {
        switch (this.f203a) {
            case 0:
                return new g[i5];
            case 1:
                return new C1.b[i5];
            case 2:
                return new F0.i[i5];
            case 3:
                return new o[i5];
            case 4:
                return new J1.a[i5];
            case 5:
                return new Q1.c[i5];
            case 6:
                return new R.b[i5];
            case 7:
                return new A[i5];
            case 8:
                return new B[i5];
            case 9:
                return new T[i5];
            case 10:
                return new P0[i5];
            case 11:
                return new G1[i5];
            default:
                return new w.f[i5];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f203a) {
            case 0:
                return new g(parcel, (ClassLoader) null);
            case 1:
                return new C1.b(parcel, null);
            case 2:
                return new F0.i(parcel, null);
            case 3:
                o oVar = new o(parcel, null);
                oVar.f854c = parcel.readInt();
                oVar.f855d = parcel.readInt();
                oVar.f856e = parcel.readParcelable(null);
                return oVar;
            case 4:
                return new J1.a(parcel, null);
            case 5:
                return new Q1.c(parcel, (ClassLoader) null);
            case 6:
                if (parcel.readParcelable(null) == null) {
                    return R.b.f2269d;
                }
                throw new IllegalStateException("superState must be null");
            case 7:
                return new A(parcel, null);
            case 8:
                return new B(parcel, null);
            case 9:
                return new T(parcel, null);
            case 10:
                return new P0(parcel, null);
            case 11:
                return new G1(parcel, null);
            default:
                return new w.f(parcel, null);
        }
    }
}

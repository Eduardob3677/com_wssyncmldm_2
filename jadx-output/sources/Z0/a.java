package Z0;

import A3.D;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import d1.AbstractC0387a;
import i3.x;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a extends AbstractC0387a {

    /* renamed from: c, reason: collision with root package name */
    public final int f2994c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2995d;

    /* renamed from: e, reason: collision with root package name */
    public final PendingIntent f2996e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public static final a f2993g = new a(0);
    public static final Parcelable.Creator<a> CREATOR = new E0.a(4);

    public a(int i5, int i6, PendingIntent pendingIntent, String str) {
        this.f2994c = i5;
        this.f2995d = i6;
        this.f2996e = pendingIntent;
        this.f = str;
    }

    public static String d(int i5) {
        if (i5 == 99) {
            return "UNFINISHED";
        }
        if (i5 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i5) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i5) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i5);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2995d == aVar.f2995d && AbstractC0213D.h(this.f2996e, aVar.f2996e) && AbstractC0213D.h(this.f, aVar.f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2995d), this.f2996e, this.f});
    }

    public final String toString() {
        D d2 = new D(this);
        d2.C0("statusCode", d(this.f2995d));
        d2.C0("resolution", this.f2996e);
        d2.C0("message", this.f);
        return d2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f2994c);
        x.w1(parcel, 2, 4);
        parcel.writeInt(this.f2995d);
        x.o1(parcel, 3, this.f2996e, i5);
        x.p1(parcel, 4, this.f);
        x.v1(parcel, iT1);
    }

    public a(int i5) {
        this(1, i5, null, null);
    }

    public a(int i5, PendingIntent pendingIntent) {
        this(1, i5, pendingIntent, null);
    }
}

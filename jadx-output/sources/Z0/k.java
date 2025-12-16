package Z0;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import c1.InterfaceC0211B;
import com.google.android.gms.internal.p000firebaseauthapi.Z;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import p1.AbstractC0741a;

/* loaded from: classes.dex */
public abstract class k extends Z implements InterfaceC0211B {

    /* renamed from: b, reason: collision with root package name */
    public final int f3017b;

    public k(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData", 1);
        if (bArr.length != 25) {
            throw new IllegalArgumentException();
        }
        this.f3017b = Arrays.hashCode(bArr);
    }

    public static byte[] s(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e5) {
            throw new AssertionError(e5);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof InterfaceC0211B)) {
            try {
                InterfaceC0211B interfaceC0211B = (InterfaceC0211B) obj;
                if (((k) interfaceC0211B).f3017b != this.f3017b) {
                    return false;
                }
                return Arrays.equals(q(), (byte[]) new k1.a(((k) interfaceC0211B).q()).f8066b);
            } catch (RemoteException e5) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e5);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Z
    public final boolean f(int i5, Parcel parcel, Parcel parcel2) {
        if (i5 == 1) {
            k1.a aVar = new k1.a(q());
            parcel2.writeNoException();
            int i6 = AbstractC0741a.f8576a;
            parcel2.writeStrongBinder(aVar);
        } else {
            if (i5 != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(this.f3017b);
        }
        return true;
    }

    public final int hashCode() {
        return this.f3017b;
    }

    public abstract byte[] q();
}

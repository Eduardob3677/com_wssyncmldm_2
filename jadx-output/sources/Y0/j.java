package Y0;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.p000firebaseauthapi.A2;
import com.google.android.gms.internal.p000firebaseauthapi.J0;
import i1.ThreadFactoryC0478a;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import u1.n;

/* loaded from: classes.dex */
public final class j implements J0 {

    /* renamed from: g, reason: collision with root package name */
    public static j f2904g;

    /* renamed from: c, reason: collision with root package name */
    public int f2905c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f2906d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f2907e;
    public Object f;

    public j(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f = new h(this);
        this.f2905c = 1;
        this.f2907e = scheduledExecutorService;
        this.f2906d = context.getApplicationContext();
    }

    public static synchronized j b(Context context) {
        try {
            if (f2904g == null) {
                f2904g = new j(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new ThreadFactoryC0478a("MessengerIpcClient"))));
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2904g;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.J0
    public byte[] a(int i5, byte[] bArr) throws IllegalStateException, InvalidAlgorithmParameterException {
        if (i5 > this.f2905c) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        A2 a22 = (A2) this.f2906d;
        ((Mac) a22.get()).update(bArr);
        return Arrays.copyOf(((Mac) a22.get()).doFinal(), i5);
    }

    public synchronized n c(i iVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String strValueOf = String.valueOf(iVar);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 9);
                sb.append("Queueing ");
                sb.append(strValueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!((h) this.f).d(iVar)) {
                h hVar = new h(this);
                this.f = hVar;
                hVar.d(iVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return iVar.f2900b.f9320a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j(String str, SecretKeySpec secretKeySpec) throws NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        char c2;
        int i5;
        A2 a22 = new A2(this);
        this.f2906d = a22;
        this.f2907e = str;
        this.f = secretKeySpec;
        if (secretKeySpec.getEncoded().length >= 16) {
            switch (str.hashCode()) {
                case -1823053428:
                    if (!str.equals("HMACSHA1")) {
                        c2 = 65535;
                        break;
                    } else {
                        c2 = 0;
                        break;
                    }
                case 392315023:
                    if (str.equals("HMACSHA224")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 392315118:
                    if (str.equals("HMACSHA256")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 392316170:
                    if (str.equals("HMACSHA384")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 392317873:
                    if (str.equals("HMACSHA512")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                i5 = 20;
            } else if (c2 == 1) {
                i5 = 28;
            } else if (c2 == 2) {
                i5 = 32;
            } else {
                if (c2 != 3) {
                    if (c2 != 4) {
                        throw new NoSuchAlgorithmException(str.length() != 0 ? "unknown Hmac algorithm: ".concat(str) : new String("unknown Hmac algorithm: "));
                    }
                    this.f2905c = 64;
                    a22.get();
                    return;
                }
                i5 = 48;
            }
            this.f2905c = i5;
            a22.get();
            return;
        }
        throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
    }
}

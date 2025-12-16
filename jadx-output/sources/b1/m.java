package b1;

import A3.D;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class m {
    public static Status e(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (remoteException instanceof TransactionTooLargeException) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void a(D d2, boolean z4);

    public abstract void b(Status status);

    public abstract void c(RuntimeException runtimeException);

    public abstract Z0.c[] d(C0198d c0198d);

    public abstract boolean f(C0198d c0198d);

    public abstract void g(C0198d c0198d);
}

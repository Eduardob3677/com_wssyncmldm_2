package R1;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final class a implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i5 = message.what;
        if (i5 == 0) {
            B.f.F(message.obj);
            throw null;
        }
        if (i5 != 1) {
            return false;
        }
        B.f.F(message.obj);
        throw null;
    }
}

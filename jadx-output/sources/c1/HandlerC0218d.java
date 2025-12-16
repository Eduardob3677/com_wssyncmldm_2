package c1;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;

/* renamed from: c1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0218d extends Q1 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f5204b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0218d(k kVar, Looper looper) {
        super(looper, 3);
        this.f5204b = kVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void handleMessage(Message message) throws ClassNotFoundException {
        k kVar;
        boolean z4;
        Object obj;
        if (this.f5204b.f5241t.get() != message.arg1) {
            int i5 = message.what;
            if (i5 == 2 || i5 == 1 || i5 == 7) {
                AbstractC0217c abstractC0217c = (AbstractC0217c) message.obj;
                abstractC0217c.getClass();
                abstractC0217c.a();
                return;
            }
            return;
        }
        int i6 = message.what;
        if (i6 == 1 || i6 == 7) {
            kVar = this.f5204b;
            synchronized (kVar.f5228e) {
                int i7 = kVar.f5234l;
                z4 = i7 == 2 || i7 == 3;
            }
            if (!z4) {
                AbstractC0217c abstractC0217c2 = (AbstractC0217c) message.obj;
                abstractC0217c2.getClass();
                abstractC0217c2.a();
                return;
            }
        } else {
            if (i6 == 4) {
                this.f5204b.getClass();
            } else if (i6 == 5) {
            }
            kVar = this.f5204b;
            synchronized (kVar.f5228e) {
            }
        }
        int i8 = message.what;
        if (i8 == 4) {
            k kVar2 = this.f5204b;
            kVar2.f5238q = new Z0.a(message.arg2);
            if (!kVar2.f5239r && !TextUtils.isEmpty(kVar2.i()) && !TextUtils.isEmpty(null)) {
                try {
                    Class.forName(kVar2.i());
                    k kVar3 = this.f5204b;
                    if (!kVar3.f5239r) {
                        kVar3.m(3, null);
                        return;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            k kVar4 = this.f5204b;
            Z0.a aVar = kVar4.f5238q;
            if (aVar == null) {
                aVar = new Z0.a(8);
            }
            kVar4.f5230h.d(aVar);
            this.f5204b.getClass();
            System.currentTimeMillis();
            return;
        }
        if (i8 == 5) {
            k kVar5 = this.f5204b;
            Z0.a aVar2 = kVar5.f5238q;
            if (aVar2 == null) {
                aVar2 = new Z0.a(8);
            }
            kVar5.f5230h.d(aVar2);
            this.f5204b.getClass();
            System.currentTimeMillis();
            return;
        }
        if (i8 == 3) {
            Object obj2 = message.obj;
            this.f5204b.f5230h.d(new Z0.a(message.arg2, obj2 instanceof PendingIntent ? (PendingIntent) obj2 : null));
            this.f5204b.getClass();
            System.currentTimeMillis();
            return;
        }
        if (i8 == 6) {
            this.f5204b.m(5, null);
            w wVar = this.f5204b.f5235m;
            if (wVar != null) {
                ((a1.e) wVar.f5265c).f();
            }
            this.f5204b.getClass();
            System.currentTimeMillis();
            k.n(this.f5204b, 5, 1, null);
            return;
        }
        if (i8 == 2 && !this.f5204b.l()) {
            AbstractC0217c abstractC0217c3 = (AbstractC0217c) message.obj;
            abstractC0217c3.getClass();
            abstractC0217c3.a();
            return;
        }
        int i9 = message.what;
        if (i9 != 2 && i9 != 1 && i9 != 7) {
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i9);
            Log.wtf("GmsClient", sb.toString(), new Exception());
            return;
        }
        AbstractC0217c abstractC0217c4 = (AbstractC0217c) message.obj;
        synchronized (abstractC0217c4) {
            try {
                obj = abstractC0217c4.f5199a;
                if (abstractC0217c4.f5200b) {
                    String strValueOf = String.valueOf(abstractC0217c4);
                    StringBuilder sb2 = new StringBuilder(strValueOf.length() + 47);
                    sb2.append("Callback proxy ");
                    sb2.append(strValueOf);
                    sb2.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb2.toString());
                }
            } finally {
            }
        }
        if (obj != null) {
            abstractC0217c4.c(obj);
        }
        synchronized (abstractC0217c4) {
            abstractC0217c4.f5200b = true;
        }
        abstractC0217c4.a();
    }
}

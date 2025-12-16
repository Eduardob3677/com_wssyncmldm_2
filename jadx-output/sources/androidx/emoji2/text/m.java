package androidx.emoji2.text;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f3704d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final int f3705a;

    /* renamed from: b, reason: collision with root package name */
    public final com.google.firebase.messaging.p f3706b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f3707c = 0;

    public m(com.google.firebase.messaging.p pVar, int i5) {
        this.f3706b = pVar;
        this.f3705a = i5;
    }

    public final int a(int i5) {
        W.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) aVarC.f938d;
        int i6 = iA + aVarC.f935a;
        return byteBuffer.getInt((i5 * 4) + byteBuffer.getInt(i6) + i6 + 4);
    }

    public final int b() {
        W.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        int i5 = iA + aVarC.f935a;
        return ((ByteBuffer) aVarC.f938d).getInt(((ByteBuffer) aVarC.f938d).getInt(i5) + i5);
    }

    public final W.a c() {
        ThreadLocal threadLocal = f3704d;
        W.a aVar = (W.a) threadLocal.get();
        if (aVar == null) {
            aVar = new W.a();
            threadLocal.set(aVar);
        }
        W.b bVar = (W.b) this.f3706b.f6258d;
        int iA = bVar.a(6);
        if (iA != 0) {
            int i5 = iA + bVar.f935a;
            int i6 = (this.f3705a * 4) + ((ByteBuffer) bVar.f938d).getInt(i5) + i5 + 4;
            int i7 = ((ByteBuffer) bVar.f938d).getInt(i6) + i6;
            ByteBuffer byteBuffer = (ByteBuffer) bVar.f938d;
            aVar.f938d = byteBuffer;
            if (byteBuffer != null) {
                aVar.f935a = i7;
                int i8 = i7 - byteBuffer.getInt(i7);
                aVar.f936b = i8;
                aVar.f937c = ((ByteBuffer) aVar.f938d).getShort(i8);
            } else {
                aVar.f935a = 0;
                aVar.f936b = 0;
                aVar.f937c = 0;
            }
        }
        return aVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        W.a aVarC = c();
        int iA = aVarC.a(4);
        sb.append(Integer.toHexString(iA != 0 ? ((ByteBuffer) aVarC.f938d).getInt(iA + aVarC.f935a) : 0));
        sb.append(", codepoints:");
        int iB = b();
        for (int i5 = 0; i5 < iB; i5++) {
            sb.append(Integer.toHexString(a(i5)));
            sb.append(" ");
        }
        return sb.toString();
    }
}

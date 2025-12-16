package R3;

import java.io.ByteArrayInputStream;
import java.io.IOException;

/* renamed from: R3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0081c implements B {
    static {
        int i5 = C0087i.f2394b;
    }

    public final AbstractC0080b b(ByteArrayInputStream byteArrayInputStream, C0087i c0087i) throws IOException {
        AbstractC0080b abstractC0080b;
        try {
            int i5 = byteArrayInputStream.read();
            if (i5 == -1) {
                abstractC0080b = null;
            } else {
                if ((i5 & 128) != 0) {
                    i5 &= 127;
                    int i6 = 7;
                    while (true) {
                        if (i6 >= 32) {
                            while (i6 < 64) {
                                int i7 = byteArrayInputStream.read();
                                if (i7 == -1) {
                                    throw C0098u.a();
                                }
                                if ((i7 & 128) != 0) {
                                    i6 += 7;
                                }
                            }
                            throw new C0098u("CodedInputStream encountered a malformed varint.");
                        }
                        int i8 = byteArrayInputStream.read();
                        if (i8 == -1) {
                            throw C0098u.a();
                        }
                        i5 |= (i8 & 127) << i6;
                        if ((i8 & 128) == 0) {
                            break;
                        }
                        i6 += 7;
                    }
                }
                C0084f c0084f = new C0084f(new C0079a(byteArrayInputStream, i5));
                abstractC0080b = (AbstractC0080b) a(c0084f, c0087i);
                try {
                    c0084f.a(0);
                } catch (C0098u e5) {
                    e5.f2416c = abstractC0080b;
                    throw e5;
                }
            }
            if (abstractC0080b == null || abstractC0080b.b()) {
                return abstractC0080b;
            }
            C0098u c0098u = new C0098u(new A0.c().getMessage());
            c0098u.f2416c = abstractC0080b;
            throw c0098u;
        } catch (IOException e6) {
            throw new C0098u(e6.getMessage());
        }
    }
}

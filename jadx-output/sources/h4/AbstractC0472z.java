package h4;

import java.io.IOException;
import java.util.Iterator;
import s3.InterfaceC0839b;

/* renamed from: h4.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0472z extends Z implements k4.d, k4.e {
    @Override // h4.Z
    /* renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public abstract AbstractC0472z N0(boolean z4);

    @Override // h4.Z
    /* renamed from: R0, reason: merged with bridge method [inline-methods] */
    public abstract AbstractC0472z P0(G g5);

    public String toString() throws IOException {
        StringBuilder sb = new StringBuilder();
        Iterator it = t().iterator();
        while (it.hasNext()) {
            String[] strArr = {"[", S3.g.f2624e.x((InterfaceC0839b) it.next(), null), "] "};
            for (int i5 = 0; i5 < 3; i5++) {
                sb.append(strArr[i5]);
            }
        }
        sb.append(J0());
        if (!u0().isEmpty()) {
            R2.m.R0(u0(), sb, "<", ">", null, 112);
        }
        if (K0()) {
            sb.append("?");
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }
}

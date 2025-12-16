package l3;

import com.idm.providers.mo.IDMMoInterface;
import h4.AbstractC0468v;
import java.io.IOException;
import java.util.List;
import r3.InterfaceC0783K;
import r3.InterfaceC0799b;
import r3.InterfaceC0816s;
import u3.AbstractC0883o;
import u3.C0890w;

/* loaded from: classes.dex */
public abstract class t0 {

    /* renamed from: a, reason: collision with root package name */
    public static final S3.g f8223a = S3.g.f2622c;

    public static void a(StringBuilder sb, InterfaceC0799b interfaceC0799b) {
        C0890w c0890wG = w0.g(interfaceC0799b);
        C0890w c0890wD0 = interfaceC0799b.d0();
        if (c0890wG != null) {
            AbstractC0468v abstractC0468vE = c0890wG.e();
            d3.i.d("receiver.type", abstractC0468vE);
            sb.append(d(abstractC0468vE));
            sb.append(IDMMoInterface.IDM_MO_ROOT_PATH);
        }
        boolean z4 = (c0890wG == null || c0890wD0 == null) ? false : true;
        if (z4) {
            sb.append("(");
        }
        if (c0890wD0 != null) {
            AbstractC0468v abstractC0468vE2 = c0890wD0.e();
            d3.i.d("receiver.type", abstractC0468vE2);
            sb.append(d(abstractC0468vE2));
            sb.append(IDMMoInterface.IDM_MO_ROOT_PATH);
        }
        if (z4) {
            sb.append(")");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String b(InterfaceC0816s interfaceC0816s) throws IOException {
        d3.i.e("descriptor", interfaceC0816s);
        StringBuilder sb = new StringBuilder();
        sb.append("fun ");
        a(sb, interfaceC0816s);
        Q3.f name = ((AbstractC0883o) interfaceC0816s).getName();
        d3.i.d("descriptor.name", name);
        sb.append(f8223a.O(name, true));
        List listW0 = interfaceC0816s.w0();
        d3.i.d("descriptor.valueParameters", listW0);
        R2.m.R0(listW0, sb, "(", ")", C0672b.f8153k, 48);
        sb.append(": ");
        AbstractC0468v abstractC0468vN = interfaceC0816s.n();
        d3.i.b(abstractC0468vN);
        sb.append(d(abstractC0468vN));
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public static String c(InterfaceC0783K interfaceC0783K) {
        d3.i.e("descriptor", interfaceC0783K);
        StringBuilder sb = new StringBuilder();
        sb.append(interfaceC0783K.T() ? "var " : "val ");
        a(sb, interfaceC0783K);
        Q3.f name = interfaceC0783K.getName();
        d3.i.d("descriptor.name", name);
        sb.append(f8223a.O(name, true));
        sb.append(": ");
        AbstractC0468v abstractC0468vE = interfaceC0783K.e();
        d3.i.d("descriptor.type", abstractC0468vE);
        sb.append(d(abstractC0468vE));
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public static String d(AbstractC0468v abstractC0468v) {
        d3.i.e("type", abstractC0468v);
        return f8223a.Y(abstractC0468v);
    }
}

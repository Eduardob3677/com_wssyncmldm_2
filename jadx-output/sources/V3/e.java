package V3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import java.util.Arrays;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class e extends n {
    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        d3.i.e("module", interfaceC0821x);
        AbstractC0732i abstractC0732iG = interfaceC0821x.g();
        abstractC0732iG.getClass();
        AbstractC0472z abstractC0472zS = abstractC0732iG.s(EnumC0734k.CHAR);
        if (abstractC0472zS != null) {
            return abstractC0472zS;
        }
        AbstractC0732i.a(62);
        throw null;
    }

    @Override // V3.g
    public final String toString() {
        String strValueOf;
        Object obj = this.f2797a;
        Integer numValueOf = Integer.valueOf(((Character) obj).charValue());
        char cCharValue = ((Character) obj).charValue();
        if (cCharValue == '\b') {
            strValueOf = "\\b";
        } else if (cCharValue == '\t') {
            strValueOf = "\\t";
        } else if (cCharValue == '\n') {
            strValueOf = "\\n";
        } else if (cCharValue == '\f') {
            strValueOf = "\\f";
        } else if (cCharValue == '\r') {
            strValueOf = "\\r";
        } else {
            byte type = (byte) Character.getType(cCharValue);
            strValueOf = (type == 0 || type == 13 || type == 14 || type == 15 || type == 16 || type == 18 || type == 19) ? "?" : String.valueOf(cCharValue);
        }
        return String.format("\\u%04X ('%s')", Arrays.copyOf(new Object[]{numValueOf, strValueOf}, 2));
    }
}

package m3;

import c3.InterfaceC0222b;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public final class c extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public static final c f8286d = new c(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        String string;
        Map.Entry entry = (Map.Entry) obj;
        d3.i.e("entry", entry);
        String str = (String) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof boolean[]) {
            string = Arrays.toString((boolean[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof char[]) {
            string = Arrays.toString((char[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof byte[]) {
            string = Arrays.toString((byte[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof short[]) {
            string = Arrays.toString((short[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof int[]) {
            string = Arrays.toString((int[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof float[]) {
            string = Arrays.toString((float[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof long[]) {
            string = Arrays.toString((long[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof double[]) {
            string = Arrays.toString((double[]) value);
            d3.i.d("toString(this)", string);
        } else if (value instanceof Object[]) {
            string = Arrays.toString((Object[]) value);
            d3.i.d("toString(this)", string);
        } else {
            string = value.toString();
        }
        return str + '=' + string;
    }
}

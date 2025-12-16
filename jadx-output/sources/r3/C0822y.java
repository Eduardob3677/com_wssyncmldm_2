package r3;

import java.util.ArrayList;
import java.util.List;

/* renamed from: r3.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0822y extends AbstractC0790S {

    /* renamed from: a, reason: collision with root package name */
    public final List f8832a;

    public C0822y(ArrayList arrayList) {
        this.f8832a = arrayList;
        if (R2.z.C1(arrayList).size() != arrayList.size()) {
            throw new IllegalArgumentException("Some properties have the same names".toString());
        }
    }

    public final String toString() {
        return "MultiFieldValueClassRepresentation(underlyingPropertyNamesToTypes=" + this.f8832a + ')';
    }
}

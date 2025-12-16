package K3;

import R2.z;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public enum a {
    UNKNOWN(0),
    CLASS(1),
    FILE_FACADE(2),
    SYNTHETIC_CLASS(3),
    MULTIFILE_CLASS(4),
    MULTIFILE_CLASS_PART(5);


    /* renamed from: d, reason: collision with root package name */
    public static final LinkedHashMap f1278d;

    /* renamed from: c, reason: collision with root package name */
    public final int f1285c;

    static {
        a[] aVarArrValues = values();
        int iY1 = z.y1(aVarArrValues.length);
        LinkedHashMap linkedHashMap = new LinkedHashMap(iY1 < 16 ? 16 : iY1);
        for (a aVar : aVarArrValues) {
            linkedHashMap.put(Integer.valueOf(aVar.f1285c), aVar);
        }
        f1278d = linkedHashMap;
    }

    a(int i5) {
        this.f1285c = i5;
    }
}

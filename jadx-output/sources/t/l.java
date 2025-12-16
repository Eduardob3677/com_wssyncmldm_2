package t;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public o f9109a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f9110b;

    public static long a(f fVar, long j3) {
        o oVar = fVar.f9098d;
        if (oVar instanceof j) {
            return j3;
        }
        ArrayList arrayList = fVar.f9104k;
        int size = arrayList.size();
        long jMin = j3;
        for (int i5 = 0; i5 < size; i5++) {
            InterfaceC0855d interfaceC0855d = (InterfaceC0855d) arrayList.get(i5);
            if (interfaceC0855d instanceof f) {
                f fVar2 = (f) interfaceC0855d;
                if (fVar2.f9098d != oVar) {
                    jMin = Math.min(jMin, a(fVar2, fVar2.f + j3));
                }
            }
        }
        if (fVar != oVar.f9125i) {
            return jMin;
        }
        long j5 = oVar.j();
        long j6 = j3 - j5;
        return Math.min(Math.min(jMin, a(oVar.f9124h, j6)), j6 - r9.f);
    }

    public static long b(f fVar, long j3) {
        o oVar = fVar.f9098d;
        if (oVar instanceof j) {
            return j3;
        }
        ArrayList arrayList = fVar.f9104k;
        int size = arrayList.size();
        long jMax = j3;
        for (int i5 = 0; i5 < size; i5++) {
            InterfaceC0855d interfaceC0855d = (InterfaceC0855d) arrayList.get(i5);
            if (interfaceC0855d instanceof f) {
                f fVar2 = (f) interfaceC0855d;
                if (fVar2.f9098d != oVar) {
                    jMax = Math.max(jMax, b(fVar2, fVar2.f + j3));
                }
            }
        }
        if (fVar != oVar.f9124h) {
            return jMax;
        }
        long j5 = oVar.j();
        long j6 = j3 + j5;
        return Math.max(Math.max(jMax, b(oVar.f9125i, j6)), j6 - r9.f);
    }
}

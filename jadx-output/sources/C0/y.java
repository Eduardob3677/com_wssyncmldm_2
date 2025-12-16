package C0;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class y extends t {

    /* renamed from: B, reason: collision with root package name */
    public int f332B;

    /* renamed from: z, reason: collision with root package name */
    public ArrayList f335z = new ArrayList();

    /* renamed from: A, reason: collision with root package name */
    public boolean f331A = true;

    /* renamed from: C, reason: collision with root package name */
    public boolean f333C = false;

    /* renamed from: D, reason: collision with root package name */
    public int f334D = 0;

    @Override // C0.t
    public final void A(long j3) {
        ArrayList arrayList;
        this.f308e = j3;
        if (j3 < 0 || (arrayList = this.f335z) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((t) this.f335z.get(i5)).A(j3);
        }
    }

    @Override // C0.t
    public final void B(Z0.j jVar) {
        this.f322u = jVar;
        this.f334D |= 8;
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((t) this.f335z.get(i5)).B(jVar);
        }
    }

    @Override // C0.t
    public final void C(TimeInterpolator timeInterpolator) {
        this.f334D |= 1;
        ArrayList arrayList = this.f335z;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                ((t) this.f335z.get(i5)).C(timeInterpolator);
            }
        }
        this.f = timeInterpolator;
    }

    @Override // C0.t
    public final void D(Z0.h hVar) {
        super.D(hVar);
        this.f334D |= 4;
        if (this.f335z != null) {
            for (int i5 = 0; i5 < this.f335z.size(); i5++) {
                ((t) this.f335z.get(i5)).D(hVar);
            }
        }
    }

    @Override // C0.t
    public final void E() {
        this.f334D |= 2;
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((t) this.f335z.get(i5)).E();
        }
    }

    @Override // C0.t
    public final void F(long j3) {
        this.f307d = j3;
    }

    @Override // C0.t
    public final String H(String str) {
        String strH = super.H(str);
        for (int i5 = 0; i5 < this.f335z.size(); i5++) {
            StringBuilder sb = new StringBuilder();
            sb.append(strH);
            sb.append("\n");
            sb.append(((t) this.f335z.get(i5)).H(str + "  "));
            strH = sb.toString();
        }
        return strH;
    }

    public final void I(t tVar) {
        this.f335z.add(tVar);
        tVar.f313k = this;
        long j3 = this.f308e;
        if (j3 >= 0) {
            tVar.A(j3);
        }
        if ((this.f334D & 1) != 0) {
            tVar.C(this.f);
        }
        if ((this.f334D & 2) != 0) {
            tVar.E();
        }
        if ((this.f334D & 4) != 0) {
            tVar.D(this.f323v);
        }
        if ((this.f334D & 8) != 0) {
            tVar.B(this.f322u);
        }
    }

    @Override // C0.t
    public final void a(s sVar) {
        super.a(sVar);
    }

    @Override // C0.t
    public final void b(View view) {
        for (int i5 = 0; i5 < this.f335z.size(); i5++) {
            ((t) this.f335z.get(i5)).b(view);
        }
        this.f310h.add(view);
    }

    @Override // C0.t
    public final void d() {
        super.d();
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((t) this.f335z.get(i5)).d();
        }
    }

    @Override // C0.t
    public final void e(z zVar) {
        if (t(zVar.f337b)) {
            Iterator it = this.f335z.iterator();
            while (it.hasNext()) {
                t tVar = (t) it.next();
                if (tVar.t(zVar.f337b)) {
                    tVar.e(zVar);
                    zVar.f338c.add(tVar);
                }
            }
        }
    }

    @Override // C0.t
    public final void g(z zVar) {
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((t) this.f335z.get(i5)).g(zVar);
        }
    }

    @Override // C0.t
    public final void h(z zVar) {
        if (t(zVar.f337b)) {
            Iterator it = this.f335z.iterator();
            while (it.hasNext()) {
                t tVar = (t) it.next();
                if (tVar.t(zVar.f337b)) {
                    tVar.h(zVar);
                    zVar.f338c.add(tVar);
                }
            }
        }
    }

    @Override // C0.t
    /* renamed from: k */
    public final t clone() {
        y yVar = (y) super.clone();
        yVar.f335z = new ArrayList();
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            t tVarClone = ((t) this.f335z.get(i5)).clone();
            yVar.f335z.add(tVarClone);
            tVarClone.f313k = yVar;
        }
        return yVar;
    }

    @Override // C0.t
    public final void m(ViewGroup viewGroup, com.google.firebase.messaging.p pVar, com.google.firebase.messaging.p pVar2, ArrayList arrayList, ArrayList arrayList2) {
        long j3 = this.f307d;
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            t tVar = (t) this.f335z.get(i5);
            if (j3 > 0 && (this.f331A || i5 == 0)) {
                long j5 = tVar.f307d;
                if (j5 > 0) {
                    tVar.F(j5 + j3);
                } else {
                    tVar.F(j3);
                }
            }
            tVar.m(viewGroup, pVar, pVar2, arrayList, arrayList2);
        }
    }

    @Override // C0.t
    public final void v(View view) {
        super.v(view);
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((t) this.f335z.get(i5)).v(view);
        }
    }

    @Override // C0.t
    public final void w(s sVar) {
        super.w(sVar);
    }

    @Override // C0.t
    public final void x(View view) {
        for (int i5 = 0; i5 < this.f335z.size(); i5++) {
            ((t) this.f335z.get(i5)).x(view);
        }
        this.f310h.remove(view);
    }

    @Override // C0.t
    public final void y(ViewGroup viewGroup) {
        super.y(viewGroup);
        int size = this.f335z.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((t) this.f335z.get(i5)).y(viewGroup);
        }
    }

    @Override // C0.t
    public final void z() {
        if (this.f335z.isEmpty()) {
            G();
            n();
            return;
        }
        h hVar = new h();
        hVar.f279b = this;
        Iterator it = this.f335z.iterator();
        while (it.hasNext()) {
            ((t) it.next()).a(hVar);
        }
        this.f332B = this.f335z.size();
        if (this.f331A) {
            Iterator it2 = this.f335z.iterator();
            while (it2.hasNext()) {
                ((t) it2.next()).z();
            }
            return;
        }
        for (int i5 = 1; i5 < this.f335z.size(); i5++) {
            ((t) this.f335z.get(i5 - 1)).a(new h(1, (t) this.f335z.get(i5)));
        }
        t tVar = (t) this.f335z.get(0);
        if (tVar != null) {
            tVar.z();
        }
    }
}

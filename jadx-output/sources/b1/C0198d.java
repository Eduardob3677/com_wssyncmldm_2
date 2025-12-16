package b1;

import A3.D;
import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.SparseIntArray;
import c1.AbstractC0213D;
import c1.x;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import o.AbstractC0715d;
import o.C0713b;
import o.C0714c;
import r1.C0766a;
import s1.C0828a;
import s2.C0837c;

/* renamed from: b1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0198d implements a1.e, a1.f {

    /* renamed from: b, reason: collision with root package name */
    public final a1.b f5063b;

    /* renamed from: c, reason: collision with root package name */
    public final C0195a f5064c;

    /* renamed from: d, reason: collision with root package name */
    public final D f5065d;

    /* renamed from: g, reason: collision with root package name */
    public final int f5067g;

    /* renamed from: h, reason: collision with root package name */
    public final q f5068h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f5069i;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ C0201g f5072l;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedList f5062a = new LinkedList();

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f5066e = new HashSet();
    public final HashMap f = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f5070j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public Z0.a f5071k = null;

    public C0198d(C0201g c0201g, a1.d dVar) {
        this.f5072l = c0201g;
        Looper looper = c0201g.f5091i.getLooper();
        com.google.firebase.messaging.p pVarA = dVar.a();
        J3.c cVar = new J3.c((Account) pVarA.f6259e, (C0714c) pVarA.f, (String) pVarA.f6258d, (String) pVarA.f6260g);
        W1.a aVar = (W1.a) dVar.f3035b.f80d;
        AbstractC0213D.g("This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder", aVar != null);
        a1.b bVarE = aVar.e(dVar.f3034a, looper, cVar, dVar.f3036c, this, this);
        this.f5063b = bVarE;
        this.f5064c = dVar.f3037d;
        this.f5065d = new D(19);
        this.f5067g = dVar.f3038e;
        if (!bVarE.a()) {
            this.f5068h = null;
            return;
        }
        Q1 q12 = c0201g.f5091i;
        com.google.firebase.messaging.p pVarA2 = dVar.a();
        this.f5068h = new q(c0201g.f5085b, q12, new J3.c((Account) pVarA2.f6259e, (C0714c) pVarA2.f, (String) pVarA2.f6258d, (String) pVarA2.f6260g));
    }

    public final void a() {
        int iB;
        boolean z4;
        C0201g c0201g = this.f5072l;
        AbstractC0213D.b(c0201g.f5091i);
        a1.b bVar = this.f5063b;
        c1.k kVar = (c1.k) bVar;
        if (kVar.l()) {
            return;
        }
        synchronized (kVar.f5228e) {
            int i5 = kVar.f5234l;
            iB = 0;
            z4 = i5 == 2 || i5 == 3;
        }
        if (z4) {
            return;
        }
        D d2 = c0201g.f5087d;
        Context context = c0201g.f5085b;
        d2.getClass();
        AbstractC0213D.e(context);
        AbstractC0213D.e(bVar);
        if (bVar.b()) {
            SparseIntArray sparseIntArray = (SparseIntArray) d2.f80d;
            int i6 = sparseIntArray.get(12451000, -1);
            if (i6 != -1) {
                iB = i6;
            } else {
                int i7 = 0;
                while (true) {
                    if (i7 >= sparseIntArray.size()) {
                        iB = i6;
                        break;
                    }
                    int iKeyAt = sparseIntArray.keyAt(i7);
                    if (iKeyAt > 12451000 && sparseIntArray.get(iKeyAt) == 0) {
                        break;
                    } else {
                        i7++;
                    }
                }
                if (iB == -1) {
                    iB = ((Z0.f) d2.f81e).b(context, 12451000);
                }
                sparseIntArray.put(12451000, iB);
            }
        }
        if (iB != 0) {
            s(new Z0.a(iB, null));
            return;
        }
        C0195a c0195a = this.f5064c;
        C0199e c0199e = new C0199e();
        c0199e.f5077h = c0201g;
        c0199e.f = null;
        c0199e.f5076g = null;
        c0199e.f5073c = false;
        c0199e.f5074d = bVar;
        c0199e.f5075e = c0195a;
        if (bVar.a()) {
            q qVar = this.f5068h;
            C0828a c0828a = qVar.f;
            if (c0828a != null) {
                c0828a.d();
            }
            Integer numValueOf = Integer.valueOf(System.identityHashCode(qVar));
            J3.c cVar = qVar.f5102e;
            cVar.f1143j = numValueOf;
            Handler handler = qVar.f5099b;
            qVar.f = (C0828a) qVar.f5100c.e(qVar.f5098a, handler.getLooper(), cVar, (C0766a) cVar.f1142i, qVar, qVar);
            qVar.f5103g = c0199e;
            Set set = qVar.f5101d;
            if (set == null || set.isEmpty()) {
                handler.post(new B1.h(12, qVar));
            } else {
                C0828a c0828a2 = qVar.f;
                c0828a2.getClass();
                c0828a2.f5230h = new C0837c(c0828a2);
                c0828a2.m(2, null);
            }
        }
        c1.k kVar2 = (c1.k) bVar;
        kVar2.f5230h = c0199e;
        kVar2.m(2, null);
    }

    public final void b(m mVar) {
        AbstractC0213D.b(this.f5072l.f5091i);
        boolean zL = ((c1.k) this.f5063b).l();
        LinkedList linkedList = this.f5062a;
        if (zL) {
            if (c(mVar)) {
                i();
                return;
            } else {
                linkedList.add(mVar);
                return;
            }
        }
        linkedList.add(mVar);
        Z0.a aVar = this.f5071k;
        if (aVar == null || aVar.f2995d == 0 || aVar.f2996e == null) {
            a();
        } else {
            s(aVar);
        }
    }

    public final boolean c(m mVar) {
        Z0.c cVar;
        if (!(mVar instanceof m)) {
            a1.b bVar = this.f5063b;
            mVar.a(this.f5065d, bVar.a());
            try {
                mVar.g(this);
            } catch (DeadObjectException unused) {
                f();
                ((c1.k) bVar).d();
            }
            return true;
        }
        Z0.c[] cVarArrD = mVar.d(this);
        if (cVarArrD == null || cVarArrD.length == 0) {
            cVar = null;
        } else {
            x xVar = ((c1.k) this.f5063b).f5240s;
            Z0.c[] cVarArr = xVar == null ? null : xVar.f5267d;
            if (cVarArr == null) {
                cVarArr = new Z0.c[0];
            }
            int length = cVarArr.length;
            C0713b c0713b = new C0713b();
            if (length == 0) {
                c0713b.f8438c = AbstractC0715d.f8414a;
                c0713b.f8439d = AbstractC0715d.f8415b;
            } else {
                c0713b.a(length);
            }
            c0713b.f8440e = 0;
            for (Z0.c cVar2 : cVarArr) {
                c0713b.put(cVar2.f2999c, Long.valueOf(cVar2.d()));
            }
            int length2 = cVarArrD.length;
            for (int i5 = 0; i5 < length2; i5++) {
                cVar = cVarArrD[i5];
                if (!c0713b.containsKey(cVar.f2999c) || ((Long) c0713b.getOrDefault(cVar.f2999c, null)).longValue() < cVar.d()) {
                    break;
                }
            }
            cVar = null;
        }
        if (cVar == null) {
            a1.b bVar2 = this.f5063b;
            mVar.a(this.f5065d, bVar2.a());
            try {
                mVar.g(this);
            } catch (DeadObjectException unused2) {
                f();
                ((c1.k) bVar2).d();
            }
            return true;
        }
        if (mVar.f(this)) {
            C0200f c0200f = new C0200f(this.f5064c, cVar);
            ArrayList arrayList = this.f5070j;
            int iIndexOf = arrayList.indexOf(c0200f);
            C0201g c0201g = this.f5072l;
            if (iIndexOf >= 0) {
                C0200f c0200f2 = (C0200f) arrayList.get(iIndexOf);
                c0201g.f5091i.removeMessages(15, c0200f2);
                Q1 q12 = c0201g.f5091i;
                q12.sendMessageDelayed(Message.obtain(q12, 15, c0200f2), 5000L);
            } else {
                arrayList.add(c0200f);
                Q1 q13 = c0201g.f5091i;
                q13.sendMessageDelayed(Message.obtain(q13, 15, c0200f), 5000L);
                Q1 q14 = c0201g.f5091i;
                q14.sendMessageDelayed(Message.obtain(q14, 16, c0200f), 120000L);
                synchronized (C0201g.f5082l) {
                    this.f5072l.getClass();
                }
                int i6 = this.f5067g;
                Z0.e eVar = c0201g.f5086c;
                eVar.getClass();
                Context context = c0201g.f5085b;
                Intent intentA = eVar.a(context, 2, null);
                PendingIntent activity = intentA != null ? PendingIntent.getActivity(context, 0, intentA, UcmAgentService.ERROR_APPLET_UNKNOWN) : null;
                if (activity != null) {
                    int i7 = GoogleApiActivity.f5304d;
                    Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
                    intent.putExtra("pending_intent", activity);
                    intent.putExtra("failing_client_id", i6);
                    intent.putExtra("notify_manager", true);
                    eVar.d(context, 2, PendingIntent.getActivity(context, 0, intent, UcmAgentService.ERROR_APPLET_UNKNOWN));
                }
            }
        } else {
            mVar.c(new a1.i(cVar));
        }
        return false;
    }

    public final void d() {
        C0201g c0201g = this.f5072l;
        AbstractC0213D.b(c0201g.f5091i);
        this.f5071k = null;
        k(Z0.a.f2993g);
        if (this.f5069i) {
            Q1 q12 = c0201g.f5091i;
            C0195a c0195a = this.f5064c;
            q12.removeMessages(11, c0195a);
            c0201g.f5091i.removeMessages(9, c0195a);
            this.f5069i = false;
        }
        Iterator it = this.f.values().iterator();
        if (it.hasNext()) {
            B.f.F(it.next());
            throw null;
        }
        g();
        i();
    }

    public final void e() {
        C0201g c0201g = this.f5072l;
        AbstractC0213D.b(c0201g.f5091i);
        this.f5071k = null;
        this.f5069i = true;
        this.f5065d.O0(true, r.f5104a);
        Q1 q12 = c0201g.f5091i;
        C0195a c0195a = this.f5064c;
        q12.sendMessageDelayed(Message.obtain(q12, 9, c0195a), 5000L);
        Q1 q13 = c0201g.f5091i;
        q13.sendMessageDelayed(Message.obtain(q13, 11, c0195a), 120000L);
        ((SparseIntArray) c0201g.f5087d.f80d).clear();
    }

    @Override // a1.e
    public final void f() {
        Looper looperMyLooper = Looper.myLooper();
        C0201g c0201g = this.f5072l;
        if (looperMyLooper == c0201g.f5091i.getLooper()) {
            e();
        } else {
            c0201g.f5091i.post(new n(this, 1));
        }
    }

    public final void g() {
        LinkedList linkedList = this.f5062a;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            m mVar = (m) obj;
            if (!((c1.k) this.f5063b).l()) {
                return;
            }
            if (c(mVar)) {
                linkedList.remove(mVar);
            }
        }
    }

    public final void h() {
        C0201g c0201g = this.f5072l;
        AbstractC0213D.b(c0201g.f5091i);
        Status status = C0201g.f5080j;
        j(status);
        this.f5065d.O0(false, status);
        HashMap map = this.f;
        for (AbstractC0204j abstractC0204j : (AbstractC0204j[]) map.keySet().toArray(new AbstractC0204j[map.size()])) {
            b(new t(new u1.i()));
        }
        k(new Z0.a(4));
        c1.k kVar = (c1.k) this.f5063b;
        if (kVar.l()) {
            C0837c c0837c = new C0837c(this);
            kVar.getClass();
            c0201g.f5091i.post(new B1.h(11, c0837c));
        }
    }

    public final void i() {
        C0201g c0201g = this.f5072l;
        Q1 q12 = c0201g.f5091i;
        C0195a c0195a = this.f5064c;
        q12.removeMessages(12, c0195a);
        Q1 q13 = c0201g.f5091i;
        q13.sendMessageDelayed(q13.obtainMessage(12, c0195a), c0201g.f5084a);
    }

    public final void j(Status status) {
        AbstractC0213D.b(this.f5072l.f5091i);
        LinkedList linkedList = this.f5062a;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((m) it.next()).b(status);
        }
        linkedList.clear();
    }

    public final void k(Z0.a aVar) {
        HashSet hashSet = this.f5066e;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
            return;
        }
        B.f.F(it.next());
        if (AbstractC0213D.h(aVar, Z0.a.f2993g)) {
            c1.k kVar = (c1.k) this.f5063b;
            if (!kVar.l() || kVar.f5224a == null) {
                throw new RuntimeException("Failed to connect when checking package");
            }
        }
        throw null;
    }

    @Override // a1.e
    public final void q() {
        Looper looperMyLooper = Looper.myLooper();
        C0201g c0201g = this.f5072l;
        if (looperMyLooper == c0201g.f5091i.getLooper()) {
            d();
        } else {
            c0201g.f5091i.post(new n(this, 0));
        }
    }

    @Override // a1.f
    public final void s(Z0.a aVar) {
        C0828a c0828a;
        C0201g c0201g = this.f5072l;
        AbstractC0213D.b(c0201g.f5091i);
        q qVar = this.f5068h;
        if (qVar != null && (c0828a = qVar.f) != null) {
            c0828a.d();
        }
        AbstractC0213D.b(this.f5072l.f5091i);
        this.f5071k = null;
        ((SparseIntArray) c0201g.f5087d.f80d).clear();
        k(aVar);
        if (aVar.f2995d == 4) {
            j(C0201g.f5081k);
            return;
        }
        if (this.f5062a.isEmpty()) {
            this.f5071k = aVar;
            return;
        }
        synchronized (C0201g.f5082l) {
            this.f5072l.getClass();
        }
        if (c0201g.c(aVar, this.f5067g)) {
            return;
        }
        if (aVar.f2995d == 18) {
            this.f5069i = true;
        }
        boolean z4 = this.f5069i;
        C0195a c0195a = this.f5064c;
        if (z4) {
            Q1 q12 = c0201g.f5091i;
            q12.sendMessageDelayed(Message.obtain(q12, 9, c0195a), 5000L);
            return;
        }
        String str = (String) c0195a.f5056b.f81e;
        String strValueOf = String.valueOf(aVar);
        StringBuilder sb = new StringBuilder(strValueOf.length() + String.valueOf(str).length() + 63);
        sb.append("API: ");
        sb.append(str);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(strValueOf);
        j(new Status(17, sb.toString()));
    }
}

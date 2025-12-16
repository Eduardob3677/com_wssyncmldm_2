package a2;

import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import d1.AbstractC0387a;
import i3.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class s extends AbstractC0387a implements Y1.n {
    public static final Parcelable.Creator<s> CREATOR = new C0106b(5);

    /* renamed from: c, reason: collision with root package name */
    public C0373y4 f3078c;

    /* renamed from: d, reason: collision with root package name */
    public q f3079d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3080e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public List f3081g;

    /* renamed from: h, reason: collision with root package name */
    public List f3082h;

    /* renamed from: i, reason: collision with root package name */
    public String f3083i;

    /* renamed from: j, reason: collision with root package name */
    public Boolean f3084j;

    /* renamed from: k, reason: collision with root package name */
    public t f3085k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f3086l;

    /* renamed from: m, reason: collision with root package name */
    public Y1.r f3087m;
    public f n;

    public s(W1.g gVar, ArrayList arrayList) {
        AbstractC0213D.e(gVar);
        gVar.a();
        this.f3080e = gVar.f2824b;
        this.f = "com.google.firebase.auth.internal.DefaultFirebaseUser";
        this.f3083i = "2";
        f(arrayList);
    }

    @Override // Y1.n
    public final String c() {
        return this.f3079d.f3072d;
    }

    public final String d() {
        String str;
        Map map;
        C0373y4 c0373y4 = this.f3078c;
        if (c0373y4 == null || (str = c0373y4.f5788d) == null || (map = (Map) ((Map) AbstractC0108d.a(str).f9022c).get("firebase")) == null) {
            return null;
        }
        return (String) map.get("tenant");
    }

    public final boolean e() {
        String str;
        Boolean bool = this.f3084j;
        if (bool == null || bool.booleanValue()) {
            C0373y4 c0373y4 = this.f3078c;
            if (c0373y4 != null) {
                Map map = (Map) ((Map) AbstractC0108d.a(c0373y4.f5788d).f9022c).get("firebase");
                str = map != null ? (String) map.get("sign_in_provider") : null;
            } else {
                str = "";
            }
            boolean z4 = false;
            if (this.f3081g.size() <= 1 && (str == null || !str.equals("custom"))) {
                z4 = true;
            }
            this.f3084j = Boolean.valueOf(z4);
        }
        return this.f3084j.booleanValue();
    }

    public final s f(List list) {
        AbstractC0213D.e(list);
        this.f3081g = new ArrayList(list.size());
        this.f3082h = new ArrayList(list.size());
        for (int i5 = 0; i5 < list.size(); i5++) {
            Y1.n nVar = (Y1.n) list.get(i5);
            if (nVar.c().equals("firebase")) {
                this.f3079d = (q) nVar;
            } else {
                this.f3082h.add(nVar.c());
            }
            this.f3081g.add((q) nVar);
        }
        if (this.f3079d == null) {
            this.f3079d = (q) this.f3081g.get(0);
        }
        return this;
    }

    public final void g(ArrayList arrayList) {
        f fVar;
        if (arrayList.isEmpty()) {
            fVar = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Y1.k kVar = (Y1.k) it.next();
                if (kVar instanceof Y1.k) {
                    arrayList2.add(kVar);
                }
            }
            fVar = new f(arrayList2);
        }
        this.n = fVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f3078c, i5);
        x.o1(parcel, 2, this.f3079d, i5);
        x.p1(parcel, 3, this.f3080e);
        x.p1(parcel, 4, this.f);
        x.s1(parcel, 5, this.f3081g);
        x.q1(parcel, 6, this.f3082h);
        x.p1(parcel, 7, this.f3083i);
        boolean zE = e();
        x.w1(parcel, 8, 4);
        parcel.writeInt(zE ? 1 : 0);
        x.o1(parcel, 9, this.f3085k, i5);
        boolean z4 = this.f3086l;
        x.w1(parcel, 10, 4);
        parcel.writeInt(z4 ? 1 : 0);
        x.o1(parcel, 11, this.f3087m, i5);
        x.o1(parcel, 12, this.n, i5);
        x.v1(parcel, iT1);
    }

    public s(C0373y4 c0373y4, q qVar, String str, String str2, ArrayList arrayList, ArrayList arrayList2, String str3, Boolean bool, t tVar, boolean z4, Y1.r rVar, f fVar) {
        this.f3078c = c0373y4;
        this.f3079d = qVar;
        this.f3080e = str;
        this.f = str2;
        this.f3081g = arrayList;
        this.f3082h = arrayList2;
        this.f3083i = str3;
        this.f3084j = bool;
        this.f3085k = tVar;
        this.f3086l = z4;
        this.f3087m = rVar;
        this.n = fVar;
    }
}

package o;

import com.google.android.gms.internal.p000firebaseauthapi.X;
import java.util.Map;

/* renamed from: o.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0712a extends X {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8403e;
    public final /* synthetic */ Object f;

    public /* synthetic */ C0712a(int i5, Object obj) {
        this.f8403e = i5;
        this.f = obj;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final void a() {
        switch (this.f8403e) {
            case 0:
                ((C0713b) this.f).clear();
                break;
            default:
                ((C0714c) this.f).clear();
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final Object b(int i5, int i6) {
        switch (this.f8403e) {
            case 0:
                return ((C0713b) this.f).f8439d[(i5 << 1) + i6];
            default:
                return ((C0714c) this.f).f8412d[i5];
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final Map c() {
        switch (this.f8403e) {
            case 0:
                return (C0713b) this.f;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final int d() {
        switch (this.f8403e) {
            case 0:
                return ((C0713b) this.f).f8440e;
            default:
                return ((C0714c) this.f).f8413e;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final int e(Object obj) {
        switch (this.f8403e) {
            case 0:
                return ((C0713b) this.f).e(obj);
            default:
                return ((C0714c) this.f).indexOf(obj);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final int f(Object obj) {
        switch (this.f8403e) {
            case 0:
                return ((C0713b) this.f).g(obj);
            default:
                return ((C0714c) this.f).indexOf(obj);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final void g(Object obj, Object obj2) {
        switch (this.f8403e) {
            case 0:
                ((C0713b) this.f).put(obj, obj2);
                break;
            default:
                ((C0714c) this.f).add(obj);
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final void h(int i5) {
        switch (this.f8403e) {
            case 0:
                ((C0713b) this.f).i(i5);
                break;
            default:
                ((C0714c) this.f).p(i5);
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final Object i(int i5, Object obj) {
        switch (this.f8403e) {
            case 0:
                int i6 = (i5 << 1) + 1;
                Object[] objArr = ((C0713b) this.f).f8439d;
                Object obj2 = objArr[i6];
                objArr[i6] = obj;
                return obj2;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }
}

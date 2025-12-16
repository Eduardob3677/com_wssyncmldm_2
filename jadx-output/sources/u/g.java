package u;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public int f9221a;

    /* renamed from: b, reason: collision with root package name */
    public final j f9222b;

    /* renamed from: c, reason: collision with root package name */
    public final i f9223c;

    /* renamed from: d, reason: collision with root package name */
    public final h f9224d;

    /* renamed from: e, reason: collision with root package name */
    public final k f9225e;
    public HashMap f;

    public g() {
        j jVar = new j();
        jVar.f9289a = 0;
        jVar.f9290b = 0;
        jVar.f9291c = 1.0f;
        jVar.f9292d = Float.NaN;
        this.f9222b = jVar;
        i iVar = new i();
        iVar.f9285a = -1;
        iVar.f9286b = -1;
        iVar.f9287c = Float.NaN;
        iVar.f9288d = Float.NaN;
        this.f9223c = iVar;
        h hVar = new h();
        hVar.f9252a = false;
        hVar.f9258d = -1;
        hVar.f9260e = -1;
        hVar.f = -1.0f;
        hVar.f9263g = -1;
        hVar.f9264h = -1;
        hVar.f9266i = -1;
        hVar.f9268j = -1;
        hVar.f9269k = -1;
        hVar.f9270l = -1;
        hVar.f9271m = -1;
        hVar.n = -1;
        hVar.f9272o = -1;
        hVar.f9273p = -1;
        hVar.f9274q = -1;
        hVar.f9275r = -1;
        hVar.f9276s = -1;
        hVar.f9277t = 0.5f;
        hVar.f9278u = 0.5f;
        hVar.f9279v = null;
        hVar.f9280w = -1;
        hVar.f9281x = 0;
        hVar.f9282y = 0.0f;
        hVar.f9283z = -1;
        hVar.f9227A = -1;
        hVar.f9228B = -1;
        hVar.f9229C = -1;
        hVar.f9230D = -1;
        hVar.E = -1;
        hVar.f9231F = -1;
        hVar.f9232G = -1;
        hVar.f9233H = -1;
        hVar.f9234I = -1;
        hVar.f9235J = -1;
        hVar.f9236K = -1;
        hVar.f9237L = -1;
        hVar.f9238M = -1;
        hVar.f9239N = -1;
        hVar.f9240O = -1.0f;
        hVar.f9241P = -1.0f;
        hVar.f9242Q = 0;
        hVar.f9243R = 0;
        hVar.f9244S = 0;
        hVar.f9245T = 0;
        hVar.f9246U = -1;
        hVar.f9247V = -1;
        hVar.f9248W = -1;
        hVar.f9249X = -1;
        hVar.f9250Y = 1.0f;
        hVar.f9251Z = 1.0f;
        hVar.f9253a0 = -1;
        hVar.f9255b0 = 0;
        hVar.f9257c0 = -1;
        hVar.g0 = false;
        hVar.f9265h0 = false;
        hVar.f9267i0 = true;
        this.f9224d = hVar;
        k kVar = new k();
        kVar.f9294a = 0.0f;
        kVar.f9295b = 0.0f;
        kVar.f9296c = 0.0f;
        kVar.f9297d = 1.0f;
        kVar.f9298e = 1.0f;
        kVar.f = Float.NaN;
        kVar.f9299g = Float.NaN;
        kVar.f9300h = 0.0f;
        kVar.f9301i = 0.0f;
        kVar.f9302j = 0.0f;
        kVar.f9303k = false;
        kVar.f9304l = 0.0f;
        this.f9225e = kVar;
        this.f = new HashMap();
    }

    public final void a(e eVar) {
        h hVar = this.f9224d;
        eVar.f9189d = hVar.f9263g;
        eVar.f9191e = hVar.f9264h;
        eVar.f = hVar.f9266i;
        eVar.f9194g = hVar.f9268j;
        eVar.f9195h = hVar.f9269k;
        eVar.f9197i = hVar.f9270l;
        eVar.f9199j = hVar.f9271m;
        eVar.f9201k = hVar.n;
        eVar.f9202l = hVar.f9272o;
        eVar.f9205p = hVar.f9273p;
        eVar.f9206q = hVar.f9274q;
        eVar.f9207r = hVar.f9275r;
        eVar.f9208s = hVar.f9276s;
        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = hVar.f9229C;
        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = hVar.f9230D;
        ((ViewGroup.MarginLayoutParams) eVar).topMargin = hVar.E;
        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = hVar.f9231F;
        eVar.f9213x = hVar.f9239N;
        eVar.f9214y = hVar.f9238M;
        eVar.f9210u = hVar.f9235J;
        eVar.f9212w = hVar.f9237L;
        eVar.f9215z = hVar.f9277t;
        eVar.f9158A = hVar.f9278u;
        eVar.f9203m = hVar.f9280w;
        eVar.n = hVar.f9281x;
        eVar.f9204o = hVar.f9282y;
        eVar.f9159B = hVar.f9279v;
        eVar.f9172P = hVar.f9283z;
        eVar.f9173Q = hVar.f9227A;
        eVar.E = hVar.f9240O;
        eVar.f9161D = hVar.f9241P;
        eVar.f9163G = hVar.f9243R;
        eVar.f9162F = hVar.f9242Q;
        eVar.f9175S = hVar.g0;
        eVar.f9176T = hVar.f9265h0;
        eVar.f9164H = hVar.f9244S;
        eVar.f9165I = hVar.f9245T;
        eVar.f9168L = hVar.f9246U;
        eVar.f9169M = hVar.f9247V;
        eVar.f9166J = hVar.f9248W;
        eVar.f9167K = hVar.f9249X;
        eVar.f9170N = hVar.f9250Y;
        eVar.f9171O = hVar.f9251Z;
        eVar.f9174R = hVar.f9228B;
        eVar.f9187c = hVar.f;
        eVar.f9183a = hVar.f9258d;
        eVar.f9185b = hVar.f9260e;
        ((ViewGroup.MarginLayoutParams) eVar).width = hVar.f9254b;
        ((ViewGroup.MarginLayoutParams) eVar).height = hVar.f9256c;
        String str = hVar.f9262f0;
        if (str != null) {
            eVar.f9177U = str;
        }
        eVar.setMarginStart(hVar.f9233H);
        eVar.setMarginEnd(hVar.f9232G);
        eVar.a();
    }

    public final Object clone() {
        g gVar = new g();
        h hVar = gVar.f9224d;
        hVar.getClass();
        h hVar2 = this.f9224d;
        hVar.f9252a = hVar2.f9252a;
        hVar.f9254b = hVar2.f9254b;
        hVar.f9256c = hVar2.f9256c;
        hVar.f9258d = hVar2.f9258d;
        hVar.f9260e = hVar2.f9260e;
        hVar.f = hVar2.f;
        hVar.f9263g = hVar2.f9263g;
        hVar.f9264h = hVar2.f9264h;
        hVar.f9266i = hVar2.f9266i;
        hVar.f9268j = hVar2.f9268j;
        hVar.f9269k = hVar2.f9269k;
        hVar.f9270l = hVar2.f9270l;
        hVar.f9271m = hVar2.f9271m;
        hVar.n = hVar2.n;
        hVar.f9272o = hVar2.f9272o;
        hVar.f9273p = hVar2.f9273p;
        hVar.f9274q = hVar2.f9274q;
        hVar.f9275r = hVar2.f9275r;
        hVar.f9276s = hVar2.f9276s;
        hVar.f9277t = hVar2.f9277t;
        hVar.f9278u = hVar2.f9278u;
        hVar.f9279v = hVar2.f9279v;
        hVar.f9280w = hVar2.f9280w;
        hVar.f9281x = hVar2.f9281x;
        hVar.f9282y = hVar2.f9282y;
        hVar.f9283z = hVar2.f9283z;
        hVar.f9227A = hVar2.f9227A;
        hVar.f9228B = hVar2.f9228B;
        hVar.f9229C = hVar2.f9229C;
        hVar.f9230D = hVar2.f9230D;
        hVar.E = hVar2.E;
        hVar.f9231F = hVar2.f9231F;
        hVar.f9232G = hVar2.f9232G;
        hVar.f9233H = hVar2.f9233H;
        hVar.f9234I = hVar2.f9234I;
        hVar.f9235J = hVar2.f9235J;
        hVar.f9236K = hVar2.f9236K;
        hVar.f9237L = hVar2.f9237L;
        hVar.f9238M = hVar2.f9238M;
        hVar.f9239N = hVar2.f9239N;
        hVar.f9240O = hVar2.f9240O;
        hVar.f9241P = hVar2.f9241P;
        hVar.f9242Q = hVar2.f9242Q;
        hVar.f9243R = hVar2.f9243R;
        hVar.f9244S = hVar2.f9244S;
        hVar.f9245T = hVar2.f9245T;
        hVar.f9246U = hVar2.f9246U;
        hVar.f9247V = hVar2.f9247V;
        hVar.f9248W = hVar2.f9248W;
        hVar.f9249X = hVar2.f9249X;
        hVar.f9250Y = hVar2.f9250Y;
        hVar.f9251Z = hVar2.f9251Z;
        hVar.f9253a0 = hVar2.f9253a0;
        hVar.f9255b0 = hVar2.f9255b0;
        hVar.f9257c0 = hVar2.f9257c0;
        hVar.f9262f0 = hVar2.f9262f0;
        int[] iArr = hVar2.f9259d0;
        if (iArr != null) {
            hVar.f9259d0 = Arrays.copyOf(iArr, iArr.length);
        } else {
            hVar.f9259d0 = null;
        }
        hVar.f9261e0 = hVar2.f9261e0;
        hVar.g0 = hVar2.g0;
        hVar.f9265h0 = hVar2.f9265h0;
        hVar.f9267i0 = hVar2.f9267i0;
        i iVar = gVar.f9223c;
        iVar.getClass();
        i iVar2 = this.f9223c;
        iVar2.getClass();
        iVar.f9285a = iVar2.f9285a;
        iVar.f9286b = iVar2.f9286b;
        iVar.f9288d = iVar2.f9288d;
        iVar.f9287c = iVar2.f9287c;
        j jVar = gVar.f9222b;
        jVar.getClass();
        j jVar2 = this.f9222b;
        jVar2.getClass();
        jVar.f9289a = jVar2.f9289a;
        jVar.f9291c = jVar2.f9291c;
        jVar.f9292d = jVar2.f9292d;
        jVar.f9290b = jVar2.f9290b;
        k kVar = gVar.f9225e;
        kVar.getClass();
        k kVar2 = this.f9225e;
        kVar2.getClass();
        kVar.f9294a = kVar2.f9294a;
        kVar.f9295b = kVar2.f9295b;
        kVar.f9296c = kVar2.f9296c;
        kVar.f9297d = kVar2.f9297d;
        kVar.f9298e = kVar2.f9298e;
        kVar.f = kVar2.f;
        kVar.f9299g = kVar2.f9299g;
        kVar.f9300h = kVar2.f9300h;
        kVar.f9301i = kVar2.f9301i;
        kVar.f9302j = kVar2.f9302j;
        kVar.f9303k = kVar2.f9303k;
        kVar.f9304l = kVar2.f9304l;
        gVar.f9221a = this.f9221a;
        return gVar;
    }
}

package O3;

import R3.A;
import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class g extends AbstractC0089k implements A {

    /* renamed from: d, reason: collision with root package name */
    public int f1987d;

    /* renamed from: e, reason: collision with root package name */
    public int f1988e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public Object f1989g;

    /* renamed from: h, reason: collision with root package name */
    public h f1990h;

    /* renamed from: i, reason: collision with root package name */
    public List f1991i;

    /* renamed from: j, reason: collision with root package name */
    public List f1992j;

    public static g g() {
        g gVar = new g();
        gVar.f1988e = 1;
        gVar.f1989g = "";
        gVar.f1990h = h.NONE;
        gVar.f1991i = Collections.emptyList();
        gVar.f1992j = Collections.emptyList();
        return gVar;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        i iVarF = f();
        if (iVarF.b()) {
            return iVarF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        g gVarG = g();
        gVarG.h(f());
        return gVarG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        i iVar = null;
        try {
            try {
                i.f1998p.getClass();
                h(new i(c0084f));
                return this;
            } catch (C0098u e5) {
                i iVar2 = (i) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    iVar = iVar2;
                    if (iVar != null) {
                        h(iVar);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (iVar != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((i) abstractC0095q);
        return this;
    }

    public final i f() {
        i iVar = new i(this);
        int i5 = this.f1987d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        iVar.f2001e = this.f1988e;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        iVar.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        iVar.f2002g = this.f1989g;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        iVar.f2003h = this.f1990h;
        if ((i5 & 16) == 16) {
            this.f1991i = Collections.unmodifiableList(this.f1991i);
            this.f1987d &= -17;
        }
        iVar.f2004i = this.f1991i;
        if ((this.f1987d & 32) == 32) {
            this.f1992j = Collections.unmodifiableList(this.f1992j);
            this.f1987d &= -33;
        }
        iVar.f2006k = this.f1992j;
        iVar.f2000d = i6;
        return iVar;
    }

    public final void h(i iVar) {
        if (iVar == i.f1997o) {
            return;
        }
        int i5 = iVar.f2000d;
        if ((i5 & 1) == 1) {
            int i6 = iVar.f2001e;
            this.f1987d = 1 | this.f1987d;
            this.f1988e = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = iVar.f;
            this.f1987d = 2 | this.f1987d;
            this.f = i7;
        }
        if ((i5 & 4) == 4) {
            this.f1987d |= 4;
            this.f1989g = iVar.f2002g;
        }
        if ((i5 & 8) == 8) {
            h hVar = iVar.f2003h;
            hVar.getClass();
            this.f1987d = 8 | this.f1987d;
            this.f1990h = hVar;
        }
        if (!iVar.f2004i.isEmpty()) {
            if (this.f1991i.isEmpty()) {
                this.f1991i = iVar.f2004i;
                this.f1987d &= -17;
            } else {
                if ((this.f1987d & 16) != 16) {
                    this.f1991i = new ArrayList(this.f1991i);
                    this.f1987d |= 16;
                }
                this.f1991i.addAll(iVar.f2004i);
            }
        }
        if (!iVar.f2006k.isEmpty()) {
            if (this.f1992j.isEmpty()) {
                this.f1992j = iVar.f2006k;
                this.f1987d &= -33;
            } else {
                if ((this.f1987d & 32) != 32) {
                    this.f1992j = new ArrayList(this.f1992j);
                    this.f1987d |= 32;
                }
                this.f1992j.addAll(iVar.f2006k);
            }
        }
        this.f2400c = this.f2400c.m(iVar.f1999c);
    }
}

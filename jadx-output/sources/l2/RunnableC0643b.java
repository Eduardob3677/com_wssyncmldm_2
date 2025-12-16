package l2;

import J.C0051z;
import J.O;
import J.Q;
import J.r0;
import J.s0;
import android.view.View;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import e.v;
import java.io.IOException;
import java.util.Iterator;
import java.util.WeakHashMap;
import m2.C0707a;
import s2.C0837c;
import z.AbstractC0934b;

/* renamed from: l2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0643b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8078c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f8079d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f8080e;

    public /* synthetic */ RunnableC0643b(int i5, Object obj) {
        this.f8078c = i5;
        this.f8079d = obj;
        this.f8080e = false;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public final void run() {
        C0707a c0707aB;
        C0707a c0707aB2;
        switch (this.f8078c) {
            case 0:
                ((C0644c) this.f8079d).a(this.f8080e);
                return;
            case 1:
                C0644c c0644c = (C0644c) this.f8079d;
                boolean z4 = this.f8080e;
                c0644c.getClass();
                Object obj = C0644c.f8081m;
                synchronized (obj) {
                    try {
                        W1.g gVar = c0644c.f8082a;
                        gVar.a();
                        v vVarD = v.d(gVar.f2823a);
                        try {
                            c0707aB = c0644c.f8084c.b();
                            if (vVarD != null) {
                                vVarD.B();
                            }
                        } catch (Throwable th) {
                            if (vVarD != null) {
                                vVarD.B();
                            }
                            throw th;
                        }
                    } finally {
                    }
                }
                try {
                    int i5 = c0707aB.f8267b;
                    if (i5 == 5 || i5 == 3) {
                        c0707aB2 = c0644c.g(c0707aB);
                    } else if (!z4 && !c0644c.f8085d.a(c0707aB)) {
                        return;
                    } else {
                        c0707aB2 = c0644c.b(c0707aB);
                    }
                    synchronized (obj) {
                        try {
                            W1.g gVar2 = c0644c.f8082a;
                            gVar2.a();
                            v vVarD2 = v.d(gVar2.f2823a);
                            try {
                                c0644c.f8084c.a(c0707aB2);
                                if (vVarD2 != null) {
                                    vVarD2.B();
                                }
                            } catch (Throwable th2) {
                                if (vVarD2 != null) {
                                    vVarD2.B();
                                }
                                throw th2;
                            }
                        } finally {
                        }
                    }
                    synchronized (c0644c) {
                        if (c0644c.f8091k.size() != 0 && !c0707aB.f8266a.equals(c0707aB2.f8266a)) {
                            Iterator it = c0644c.f8091k.iterator();
                            if (it.hasNext()) {
                                B.f.F(it.next());
                                throw null;
                            }
                        }
                    }
                    if (c0707aB2.f8267b == 4) {
                        String str = c0707aB2.f8266a;
                        synchronized (c0644c) {
                            c0644c.f8090j = str;
                        }
                    }
                    int i6 = c0707aB2.f8267b;
                    if (i6 == 5) {
                        c0644c.h(new e());
                        return;
                    } else if (i6 == 2 || i6 == 1) {
                        c0644c.h(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                        return;
                    } else {
                        c0644c.i(c0707aB2);
                        return;
                    }
                } catch (e e5) {
                    c0644c.h(e5);
                    return;
                }
            default:
                boolean z5 = this.f8080e;
                View view = (View) this.f8079d;
                if (z5) {
                    WeakHashMap weakHashMap = Q.f940a;
                    s0 s0VarC = O.c(view);
                    if (s0VarC != null) {
                        r0 r0Var = s0VarC.f1011a;
                        ((C0051z) ((C0837c) r0Var.f1007d).f9022c).o0();
                        ((WindowInsetsController) r0Var.f1006c).show(0);
                        return;
                    }
                }
                ((InputMethodManager) AbstractC0934b.b(view.getContext(), InputMethodManager.class)).showSoftInput(view, 1);
                return;
        }
    }

    public /* synthetic */ RunnableC0643b(C0644c c0644c, boolean z4) {
        this.f8078c = 1;
        this.f8079d = c0644c;
        this.f8080e = z4;
    }
}

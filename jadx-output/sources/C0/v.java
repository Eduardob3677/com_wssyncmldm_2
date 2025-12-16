package C0;

import java.util.ArrayList;
import o.C0713b;

/* loaded from: classes.dex */
public final class v extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0713b f324a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f325b;

    public v(w wVar, C0713b c0713b) {
        this.f325b = wVar;
        this.f324a = c0713b;
    }

    @Override // C0.s
    public final void c(t tVar) {
        ((ArrayList) this.f324a.getOrDefault(this.f325b.f327d, null)).remove(tVar);
        tVar.w(this);
    }
}

package androidx.preference;

import j0.AbstractC0526A;

/* loaded from: classes.dex */
public final class w implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Preference f4736c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4737d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ z f4738e;

    public w(z zVar, Preference preference, String str) {
        this.f4738e = zVar;
        this.f4736c = preference;
        this.f4737d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        z zVar = this.f4738e;
        AbstractC0526A adapter = zVar.mList.getAdapter();
        if (!(adapter instanceof D)) {
            if (adapter != null) {
                throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
            }
            return;
        }
        String str = this.f4737d;
        Preference preference = this.f4736c;
        int iL = preference != null ? ((D) adapter).l(preference) : ((D) adapter).m(str);
        if (iL != -1) {
            zVar.mList.v0(iL);
        } else {
            adapter.f7327a.registerObserver(new y((D) adapter, zVar.mList, preference, str));
        }
    }
}

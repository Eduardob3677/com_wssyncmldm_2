package com.google.android.material.datepicker;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import j0.G;

/* loaded from: classes.dex */
public final class i extends G {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f5973a;

    public i(l lVar) {
        this.f5973a = lVar;
        w.d(null);
        w.d(null);
    }

    @Override // j0.G
    public final void a(RecyclerView recyclerView) {
        if ((recyclerView.getAdapter() instanceof y) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            this.f5973a.getClass();
            throw null;
        }
    }
}

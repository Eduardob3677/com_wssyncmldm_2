package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import j0.X;

/* loaded from: classes.dex */
public final class h extends LinearLayoutManager {
    public final /* synthetic */ int E;

    /* renamed from: F, reason: collision with root package name */
    public final /* synthetic */ l f5972F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(l lVar, int i5, int i6) {
        super(i5);
        this.f5972F = lVar;
        this.E = i6;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void C0(X x4, int[] iArr) {
        int i5 = this.E;
        l lVar = this.f5972F;
        if (i5 == 0) {
            iArr[0] = lVar.f5984j.getWidth();
            iArr[1] = lVar.f5984j.getWidth();
        } else {
            iArr[0] = lVar.f5984j.getHeight();
            iArr[1] = lVar.f5984j.getHeight();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final void z0(RecyclerView recyclerView, int i5) {
        u uVar = new u(recyclerView.getContext());
        uVar.f7580a = i5;
        A0(uVar);
    }
}

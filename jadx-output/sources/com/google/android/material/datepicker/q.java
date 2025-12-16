package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class q implements AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f6022c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f6023d;

    public q(s sVar, MaterialCalendarGridView materialCalendarGridView) {
        this.f6023d = sVar;
        this.f6022c = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        MaterialCalendarGridView materialCalendarGridView = this.f6022c;
        p pVarA = materialCalendarGridView.a();
        if (i5 < pVarA.a() || i5 > pVarA.c()) {
            return;
        }
        if (materialCalendarGridView.a().getItem(i5).longValue() >= ((l) this.f6023d.f6027e.f5265c).f5980e.f5958e.f5965c) {
            throw null;
        }
    }
}

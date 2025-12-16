package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import j0.M;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public final class j extends M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f5974a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialButton f5975b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f5976c;

    public j(l lVar, s sVar, MaterialButton materialButton) {
        this.f5976c = lVar;
        this.f5974a = sVar;
        this.f5975b = materialButton;
    }

    @Override // j0.M
    public final void a(RecyclerView recyclerView, int i5) {
        if (i5 == 0) {
            recyclerView.announceForAccessibility(this.f5975b.getText());
        }
    }

    @Override // j0.M
    public final void b(RecyclerView recyclerView, int i5, int i6) {
        l lVar = this.f5976c;
        int iM0 = i5 < 0 ? ((LinearLayoutManager) lVar.f5984j.getLayoutManager()).M0() : ((LinearLayoutManager) lVar.f5984j.getLayoutManager()).N0();
        s sVar = this.f5974a;
        Calendar calendarB = w.b(sVar.f6026d.f5956c.f6012c);
        calendarB.add(2, iM0);
        lVar.f = new o(calendarB);
        Calendar calendarB2 = w.b(sVar.f6026d.f5956c.f6012c);
        calendarB2.add(2, iM0);
        calendarB2.set(5, 1);
        Calendar calendarB3 = w.b(calendarB2);
        calendarB3.get(2);
        calendarB3.get(1);
        calendarB3.getMaximum(7);
        calendarB3.getActualMaximum(5);
        calendarB3.getTimeInMillis();
        this.f5975b.setText(w.a("yMMMM", Locale.getDefault()).format(new Date(calendarB3.getTimeInMillis())));
    }
}

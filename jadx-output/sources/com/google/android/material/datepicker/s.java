package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.wssyncmldm.R;
import j0.AbstractC0526A;
import j0.K;
import j0.b0;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class s extends AbstractC0526A {

    /* renamed from: d, reason: collision with root package name */
    public final b f6026d;

    /* renamed from: e, reason: collision with root package name */
    public final c1.w f6027e;
    public final int f;

    public s(ContextThemeWrapper contextThemeWrapper, b bVar, c1.w wVar) {
        o oVar = bVar.f5956c;
        o oVar2 = bVar.f;
        if (oVar.f6012c.compareTo(oVar2.f6012c) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (oVar2.f6012c.compareTo(bVar.f5957d.f6012c) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * p.f) + (m.i(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f6026d = bVar;
        this.f6027e = wVar;
        h(true);
    }

    @Override // j0.AbstractC0526A
    public final int a() {
        return this.f6026d.f5961i;
    }

    @Override // j0.AbstractC0526A
    public final long b(int i5) {
        Calendar calendarB = w.b(this.f6026d.f5956c.f6012c);
        calendarB.add(2, i5);
        return new o(calendarB).f6012c.getTimeInMillis();
    }

    @Override // j0.AbstractC0526A
    public final void d(b0 b0Var, int i5) {
        r rVar = (r) b0Var;
        b bVar = this.f6026d;
        Calendar calendarB = w.b(bVar.f5956c.f6012c);
        calendarB.add(2, i5);
        o oVar = new o(calendarB);
        rVar.f6024v.setText(oVar.c());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) rVar.f6025w.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !oVar.equals(materialCalendarGridView.a().f6019c)) {
            new p(oVar, bVar);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.a().getClass();
        throw null;
    }

    @Override // j0.AbstractC0526A
    public final b0 e(RecyclerView recyclerView, int i5) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, (ViewGroup) recyclerView, false);
        if (!m.i(recyclerView.getContext(), android.R.attr.windowFullscreen)) {
            return new r(linearLayout, false);
        }
        linearLayout.setLayoutParams(new K(-1, this.f));
        return new r(linearLayout, true);
    }
}

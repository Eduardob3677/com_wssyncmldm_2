package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class g implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5969c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f5970d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ l f5971e;

    public /* synthetic */ g(l lVar, s sVar, int i5) {
        this.f5969c = i5;
        this.f5971e = lVar;
        this.f5970d = sVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f5969c) {
            case 0:
                l lVar = this.f5971e;
                int iN0 = ((LinearLayoutManager) lVar.f5984j.getLayoutManager()).N0() - 1;
                if (iN0 >= 0) {
                    Calendar calendarB = w.b(this.f5970d.f6026d.f5956c.f6012c);
                    calendarB.add(2, iN0);
                    lVar.f(new o(calendarB));
                    break;
                }
                break;
            default:
                l lVar2 = this.f5971e;
                int iM0 = ((LinearLayoutManager) lVar2.f5984j.getLayoutManager()).M0() + 1;
                if (iM0 < lVar2.f5984j.getAdapter().a()) {
                    Calendar calendarB2 = w.b(this.f5970d.f6026d.f5956c.f6012c);
                    calendarB2.add(2, iM0);
                    lVar2.f(new o(calendarB2));
                    break;
                }
                break;
        }
    }
}

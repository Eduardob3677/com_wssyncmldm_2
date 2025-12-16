package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.wssyncmldm.R;
import j0.AbstractC0526A;
import j0.b0;
import java.util.Locale;

/* loaded from: classes.dex */
public final class y extends AbstractC0526A {

    /* renamed from: d, reason: collision with root package name */
    public final l f6031d;

    public y(l lVar) {
        this.f6031d = lVar;
    }

    @Override // j0.AbstractC0526A
    public final int a() {
        return this.f6031d.f5980e.f5960h;
    }

    @Override // j0.AbstractC0526A
    public final void d(b0 b0Var, int i5) {
        l lVar = this.f6031d;
        int i6 = lVar.f5980e.f5956c.f6014e + i5;
        String str = String.format(Locale.getDefault(), "%d", Integer.valueOf(i6));
        TextView textView = ((x) b0Var).f6030v;
        textView.setText(str);
        Context context = textView.getContext();
        textView.setContentDescription(w.c().get(1) == i6 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i6)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i6)));
        c cVar = lVar.f5982h;
        if (w.c().get(1) == i6) {
            e4.d dVar = cVar.f5963b;
        } else {
            e4.d dVar2 = cVar.f5962a;
        }
        throw null;
    }

    @Override // j0.AbstractC0526A
    public final b0 e(RecyclerView recyclerView, int i5) {
        return new x((TextView) LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.mtrl_calendar_year, (ViewGroup) recyclerView, false));
    }
}

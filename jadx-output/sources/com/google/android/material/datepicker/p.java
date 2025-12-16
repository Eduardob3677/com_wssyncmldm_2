package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.wssyncmldm.R;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class p extends BaseAdapter {
    public static final int f = w.d(null).getMaximum(4);

    /* renamed from: g, reason: collision with root package name */
    public static final int f6018g = (w.d(null).getMaximum(7) + w.d(null).getMaximum(5)) - 1;

    /* renamed from: c, reason: collision with root package name */
    public final o f6019c;

    /* renamed from: d, reason: collision with root package name */
    public c f6020d;

    /* renamed from: e, reason: collision with root package name */
    public final b f6021e;

    public p(o oVar, b bVar) {
        this.f6019c = oVar;
        this.f6021e = bVar;
        throw null;
    }

    public final int a() {
        int firstDayOfWeek = this.f6021e.f5959g;
        o oVar = this.f6019c;
        Calendar calendar = oVar.f6012c;
        int i5 = calendar.get(7);
        if (firstDayOfWeek <= 0) {
            firstDayOfWeek = calendar.getFirstDayOfWeek();
        }
        int i6 = i5 - firstDayOfWeek;
        return i6 < 0 ? i6 + oVar.f : i6;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i5) {
        if (i5 < a() || i5 > c()) {
            return null;
        }
        int iA = (i5 - a()) + 1;
        Calendar calendarB = w.b(this.f6019c.f6012c);
        calendarB.set(5, iA);
        return Long.valueOf(calendarB.getTimeInMillis());
    }

    public final int c() {
        return (a() + this.f6019c.f6015g) - 1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f6018g;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i5) {
        return i5 / this.f6019c.f;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005d  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View getView(int i5, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f6020d == null) {
            this.f6020d = new c(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iA = i5 - a();
        if (iA >= 0) {
            o oVar = this.f6019c;
            if (iA >= oVar.f6015g) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                textView.setTag(oVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(iA + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        }
        if (getItem(i5) == null || textView == null) {
            return textView;
        }
        textView.getContext();
        w.c().getTimeInMillis();
        throw null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}

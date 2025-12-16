package com.google.android.material.datepicker;

import J.D;
import J.Q;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wssyncmldm.R;
import j0.b0;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class r extends b0 {

    /* renamed from: v, reason: collision with root package name */
    public final TextView f6024v;

    /* renamed from: w, reason: collision with root package name */
    public final MaterialCalendarGridView f6025w;

    public r(LinearLayout linearLayout, boolean z4) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f6024v = textView;
        WeakHashMap weakHashMap = Q.f940a;
        new D(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 2).e(textView, Boolean.TRUE);
        this.f6025w = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z4) {
            return;
        }
        textView.setVisibility(8);
    }
}

package com.google.android.material.datepicker;

import J.Q;
import android.R;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import j0.C0551x;

/* loaded from: classes.dex */
public final class l<S> extends t {

    /* renamed from: d, reason: collision with root package name */
    public int f5979d;

    /* renamed from: e, reason: collision with root package name */
    public b f5980e;
    public o f;

    /* renamed from: g, reason: collision with root package name */
    public int f5981g;

    /* renamed from: h, reason: collision with root package name */
    public c f5982h;

    /* renamed from: i, reason: collision with root package name */
    public RecyclerView f5983i;

    /* renamed from: j, reason: collision with root package name */
    public RecyclerView f5984j;

    /* renamed from: k, reason: collision with root package name */
    public View f5985k;

    /* renamed from: l, reason: collision with root package name */
    public View f5986l;

    /* renamed from: m, reason: collision with root package name */
    public View f5987m;
    public View n;

    public final void f(o oVar) {
        s sVar = (s) this.f5984j.getAdapter();
        int iD = sVar.f6026d.f5956c.d(oVar);
        int iD2 = iD - sVar.f6026d.f5956c.d(this.f);
        boolean z4 = Math.abs(iD2) > 3;
        boolean z5 = iD2 > 0;
        this.f = oVar;
        if (z4 && z5) {
            this.f5984j.v0(iD - 3);
            this.f5984j.post(new G.b(iD, this, 3));
        } else if (!z4) {
            this.f5984j.post(new G.b(iD, this, 3));
        } else {
            this.f5984j.v0(iD + 3);
            this.f5984j.post(new G.b(iD, this, 3));
        }
    }

    public final void g(int i5) {
        this.f5981g = i5;
        if (i5 == 2) {
            this.f5983i.getLayoutManager().p0(this.f.f6014e - ((y) this.f5983i.getAdapter()).f6031d.f5980e.f5956c.f6014e);
            this.f5987m.setVisibility(0);
            this.n.setVisibility(8);
            this.f5985k.setVisibility(8);
            this.f5986l.setVisibility(8);
            return;
        }
        if (i5 == 1) {
            this.f5987m.setVisibility(8);
            this.n.setVisibility(0);
            this.f5985k.setVisibility(0);
            this.f5986l.setVisibility(0);
            f(this.f);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f5979d = bundle.getInt("THEME_RES_ID_KEY");
        B.f.z(bundle.getParcelable("GRID_SELECTOR_KEY"));
        this.f5980e = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        B.f.z(bundle.getParcelable("DAY_VIEW_DECORATOR_KEY"));
        this.f = (o) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Resources.NotFoundException {
        int i5;
        int i6;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f5979d);
        this.f5982h = new c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        o oVar = this.f5980e.f5956c;
        if (m.i(contextThemeWrapper, R.attr.windowFullscreen)) {
            i5 = com.wssyncmldm.R.layout.mtrl_calendar_vertical;
            i6 = 1;
        } else {
            i5 = com.wssyncmldm.R.layout.mtrl_calendar_horizontal;
            i6 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i5, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.mtrl_calendar_days_of_week_height);
        int i7 = p.f;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_calendar_month_vertical_padding) * (i7 - 1)) + (resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.mtrl_calendar_day_height) * i7) + resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(com.wssyncmldm.R.id.mtrl_calendar_days_of_week);
        Q.h(gridView, new O.i(1));
        int i8 = this.f5980e.f5959g;
        gridView.setAdapter((ListAdapter) (i8 > 0 ? new f(i8) : new f()));
        gridView.setNumColumns(oVar.f);
        gridView.setEnabled(false);
        this.f5984j = (RecyclerView) viewInflate.findViewById(com.wssyncmldm.R.id.mtrl_calendar_months);
        getContext();
        this.f5984j.setLayoutManager(new h(this, i6, i6));
        this.f5984j.setTag("MONTHS_VIEW_GROUP_TAG");
        s sVar = new s(contextThemeWrapper, this.f5980e, new c1.w(this));
        this.f5984j.setAdapter(sVar);
        int integer = contextThemeWrapper.getResources().getInteger(com.wssyncmldm.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.wssyncmldm.R.id.mtrl_calendar_year_selector_frame);
        this.f5983i = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f5983i.setLayoutManager(new GridLayoutManager(integer));
            this.f5983i.setAdapter(new y(this));
            this.f5983i.j(new i(this));
        }
        if (viewInflate.findViewById(com.wssyncmldm.R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(com.wssyncmldm.R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            Q.h(materialButton, new C1.e(5, this));
            View viewFindViewById = viewInflate.findViewById(com.wssyncmldm.R.id.month_navigation_previous);
            this.f5985k = viewFindViewById;
            viewFindViewById.setTag("NAVIGATION_PREV_TAG");
            View viewFindViewById2 = viewInflate.findViewById(com.wssyncmldm.R.id.month_navigation_next);
            this.f5986l = viewFindViewById2;
            viewFindViewById2.setTag("NAVIGATION_NEXT_TAG");
            this.f5987m = viewInflate.findViewById(com.wssyncmldm.R.id.mtrl_calendar_year_selector_frame);
            this.n = viewInflate.findViewById(com.wssyncmldm.R.id.mtrl_calendar_day_selector_frame);
            g(1);
            materialButton.setText(this.f.c());
            this.f5984j.k(new j(this, sVar, materialButton));
            materialButton.setOnClickListener(new k(0, this));
            this.f5986l.setOnClickListener(new g(this, sVar, 1));
            this.f5985k.setOnClickListener(new g(this, sVar, 0));
        }
        if (!m.i(contextThemeWrapper, R.attr.windowFullscreen)) {
            new C0551x().a(this.f5984j);
        }
        this.f5984j.v0(sVar.f6026d.f5956c.d(this.f));
        Q.h(this.f5984j, new O.i(2));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.f5979d);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f5980e);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f);
    }
}

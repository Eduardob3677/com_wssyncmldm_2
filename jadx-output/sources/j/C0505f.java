package j;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import com.wssyncmldm.R;
import java.util.ArrayList;

/* renamed from: j.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0505f extends BaseAdapter {

    /* renamed from: c, reason: collision with root package name */
    public final MenuC0508i f7221c;

    /* renamed from: d, reason: collision with root package name */
    public int f7222d = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f7223e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7224g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7225h;

    /* renamed from: i, reason: collision with root package name */
    public final LayoutInflater f7226i;

    /* renamed from: j, reason: collision with root package name */
    public final int f7227j;

    public C0505f(MenuC0508i menuC0508i, LayoutInflater layoutInflater, boolean z4, int i5) {
        this.f7225h = z4;
        this.f7226i = layoutInflater;
        this.f7221c = menuC0508i;
        this.f7227j = i5;
        a();
    }

    public final void a() {
        MenuC0508i menuC0508i = this.f7221c;
        C0510k c0510k = menuC0508i.f7248v;
        if (c0510k != null) {
            menuC0508i.i();
            ArrayList arrayList = menuC0508i.f7237j;
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                if (((C0510k) arrayList.get(i5)) == c0510k) {
                    this.f7222d = i5;
                    return;
                }
            }
        }
        this.f7222d = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0510k getItem(int i5) {
        ArrayList arrayListL;
        boolean z4 = this.f7225h;
        MenuC0508i menuC0508i = this.f7221c;
        if (z4) {
            menuC0508i.i();
            arrayListL = menuC0508i.f7237j;
        } else {
            arrayListL = menuC0508i.l();
        }
        int i6 = this.f7222d;
        if (i6 >= 0 && i5 >= i6) {
            i5++;
        }
        return (C0510k) arrayListL.get(i5);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        boolean z4 = this.f7225h;
        MenuC0508i menuC0508i = this.f7221c;
        if (z4) {
            menuC0508i.i();
            arrayListL = menuC0508i.f7237j;
        } else {
            arrayListL = menuC0508i.l();
        }
        return this.f7222d < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i5) {
        return i5;
    }

    @Override // android.widget.Adapter
    public final View getView(int i5, View view, ViewGroup viewGroup) {
        boolean z4 = false;
        if (view == null) {
            view = this.f7226i.inflate(this.f7227j, viewGroup, false);
            this.f7223e = view.getPaddingTop();
            this.f = view.getPaddingBottom();
        }
        int i6 = getItem(i5).f7258b;
        int i7 = i5 - 1;
        int i8 = i7 >= 0 ? getItem(i7).f7258b : i6;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f7221c.m() && i6 != i8) {
            z4 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z4);
        InterfaceC0521v interfaceC0521v = (InterfaceC0521v) view;
        if (this.f7224g) {
            listMenuItemView.setForceShowIcon(true);
        }
        interfaceC0521v.d(getItem(i5));
        int dimensionPixelSize = view.getResources().getDimensionPixelSize(R.dimen.sesl_popup_menu_first_last_item_vertical_edge_padding);
        int i9 = this.f7223e + dimensionPixelSize;
        int i10 = this.f + dimensionPixelSize;
        int paddingLeft = view.getPaddingLeft();
        if (i5 != 0) {
            i9 = this.f7223e;
        }
        int paddingRight = view.getPaddingRight();
        if (i5 != getCount() - 1) {
            i10 = this.f;
        }
        view.setPadding(paddingLeft, i9, paddingRight, i10);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i5) {
        ArrayList arrayListL;
        boolean z4 = this.f7225h;
        MenuC0508i menuC0508i = this.f7221c;
        if (z4) {
            menuC0508i.i();
            arrayListL = menuC0508i.f7237j;
        } else {
            arrayListL = menuC0508i.l();
        }
        return ((C0510k) arrayListL.get(i5)).isEnabled();
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}

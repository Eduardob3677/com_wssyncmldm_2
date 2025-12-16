package j;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.wssyncmldm.R;
import java.util.ArrayList;

/* renamed from: j.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0503d extends BaseAdapter {

    /* renamed from: c, reason: collision with root package name */
    public int f7214c = -1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0504e f7215d;

    public C0503d(C0504e c0504e) {
        this.f7215d = c0504e;
        a();
    }

    public final void a() {
        MenuC0508i menuC0508i = this.f7215d.f7218e;
        C0510k c0510k = menuC0508i.f7248v;
        if (c0510k != null) {
            menuC0508i.i();
            ArrayList arrayList = menuC0508i.f7237j;
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                if (((C0510k) arrayList.get(i5)) == c0510k) {
                    this.f7214c = i5;
                    return;
                }
            }
        }
        this.f7214c = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0510k getItem(int i5) {
        C0504e c0504e = this.f7215d;
        MenuC0508i menuC0508i = c0504e.f7218e;
        menuC0508i.i();
        ArrayList arrayList = menuC0508i.f7237j;
        c0504e.getClass();
        int i6 = this.f7214c;
        if (i6 >= 0 && i5 >= i6) {
            i5++;
        }
        return (C0510k) arrayList.get(i5);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        C0504e c0504e = this.f7215d;
        MenuC0508i menuC0508i = c0504e.f7218e;
        menuC0508i.i();
        int size = menuC0508i.f7237j.size();
        c0504e.getClass();
        return this.f7214c < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i5) {
        return i5;
    }

    @Override // android.widget.Adapter
    public final View getView(int i5, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f7215d.f7217d.inflate(R.layout.sesl_list_menu_item_layout, viewGroup, false);
        }
        ((InterfaceC0521v) view).d(getItem(i5));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}

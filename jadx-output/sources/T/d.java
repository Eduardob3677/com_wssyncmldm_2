package T;

import android.R;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends BaseAdapter {

    /* renamed from: c, reason: collision with root package name */
    public List f2708c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f2709d;

    /* renamed from: h, reason: collision with root package name */
    public final LayoutInflater f2712h;
    public final int f = R.layout.simple_spinner_item;

    /* renamed from: e, reason: collision with root package name */
    public final int f2710e = R.layout.simple_spinner_dropdown_item;

    /* renamed from: g, reason: collision with root package name */
    public final int f2711g = 0;

    public d(Context context, List list) {
        this.f2709d = context;
        this.f2712h = (LayoutInflater) context.getSystemService("layout_inflater");
        if (this.f2708c == list) {
            return;
        }
        this.f2708c = list;
        notifyDataSetChanged();
    }

    public final View a(int i5, int i6, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = i5 == 0 ? new TextView(this.f2709d) : this.f2712h.inflate(i5, viewGroup, false);
        }
        int i7 = this.f2711g;
        TextView textView = (TextView) (i7 == 0 ? view : view.findViewById(i7));
        Object obj = this.f2708c.get(i6);
        textView.setText(obj instanceof CharSequence ? (CharSequence) obj : String.valueOf(obj));
        return view;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f2708c.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i5, View view, ViewGroup viewGroup) {
        return a(this.f2710e, i5, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i5) {
        return this.f2708c.get(i5);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i5) {
        return i5;
    }

    @Override // android.widget.Adapter
    public final View getView(int i5, View view, ViewGroup viewGroup) {
        return a(this.f, i5, view, viewGroup);
    }
}

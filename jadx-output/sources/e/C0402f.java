package e;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: e.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0402f implements AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f6712c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0405i f6713d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0403g f6714e;

    public C0402f(C0403g c0403g, AlertController$RecycleListView alertController$RecycleListView, C0405i c0405i) {
        this.f6714e = c0403g;
        this.f6712c = alertController$RecycleListView;
        this.f6713d = c0405i;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        C0403g c0403g = this.f6714e;
        boolean[] zArr = c0403g.f6730r;
        AlertController$RecycleListView alertController$RecycleListView = this.f6712c;
        if (zArr != null) {
            zArr[i5] = alertController$RecycleListView.isItemChecked(i5);
        }
        c0403g.f6734v.onClick(this.f6713d.f6750b, i5, alertController$RecycleListView.isItemChecked(i5));
    }
}

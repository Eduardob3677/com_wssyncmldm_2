package e;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: e.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0400d extends ArrayAdapter {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f6708c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0403g f6709d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0400d(C0403g c0403g, Context context, int i5, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(context, i5, R.id.text1, charSequenceArr);
        this.f6709d = c0403g;
        this.f6708c = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i5, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i5, view, viewGroup);
        boolean[] zArr = this.f6709d.f6730r;
        if (zArr != null && zArr[i5]) {
            this.f6708c.setItemChecked(i5, true);
        }
        return view2;
    }
}

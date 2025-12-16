package S1;

import android.view.View;
import android.widget.AdapterView;
import k.C0633x0;

/* loaded from: classes.dex */
public final class s implements AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f2556c;

    public s(u uVar) {
        this.f2556c = uVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        Object item;
        u uVar = this.f2556c;
        if (i5 < 0) {
            C0633x0 c0633x0 = uVar.f;
            item = !c0633x0.f8050z.isShowing() ? null : c0633x0.f8031e.getSelectedItem();
        } else {
            item = uVar.getAdapter().getItem(i5);
        }
        u.a(uVar, item);
        AdapterView.OnItemClickListener onItemClickListener = uVar.getOnItemClickListener();
        C0633x0 c0633x02 = uVar.f;
        if (onItemClickListener != null) {
            if (view == null || i5 < 0) {
                view = c0633x02.f8050z.isShowing() ? c0633x02.f8031e.getSelectedView() : null;
                i5 = !c0633x02.f8050z.isShowing() ? -1 : c0633x02.f8031e.getSelectedItemPosition();
                j3 = !c0633x02.f8050z.isShowing() ? Long.MIN_VALUE : c0633x02.f8031e.getSelectedItemId();
            }
            onItemClickListener.onItemClick(c0633x02.f8031e, view, i5, j3);
        }
        c0633x02.dismiss();
    }
}

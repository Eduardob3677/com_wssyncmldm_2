package e;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* renamed from: e.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0401e implements AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0405i f6710c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0403g f6711d;

    public C0401e(C0403g c0403g, C0405i c0405i) {
        this.f6711d = c0403g;
        this.f6710c = c0405i;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        C0403g c0403g = this.f6711d;
        DialogInterface.OnClickListener onClickListener = c0403g.f6728p;
        C0405i c0405i = this.f6710c;
        onClickListener.onClick(c0405i.f6750b, i5);
        if (c0403g.f6732t) {
            return;
        }
        c0405i.f6750b.dismiss();
    }
}

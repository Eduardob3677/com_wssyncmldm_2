package k;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* renamed from: k.K, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0565K implements AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7710c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7711d;

    public /* synthetic */ C0565K(int i5, Object obj) {
        this.f7710c = i5;
        this.f7711d = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        switch (this.f7710c) {
            case 0:
                C0567M c0567m = (C0567M) this.f7711d;
                c0567m.f7719G.setSelection(i5);
                if (c0567m.f7719G.getOnItemClickListener() != null) {
                    c0567m.f7719G.performItemClick(view, i5, c0567m.E.getItemId(i5));
                }
                c0567m.dismiss();
                break;
            default:
                ((SearchView) this.f7711d).o(i5);
                break;
        }
    }
}

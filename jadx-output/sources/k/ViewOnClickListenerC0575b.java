package k;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import i.AbstractC0474b;
import j.C0510k;

/* renamed from: k.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0575b implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7835c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7836d;

    public /* synthetic */ ViewOnClickListenerC0575b(int i5, Object obj) {
        this.f7835c = i5;
        this.f7836d = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7835c) {
            case 0:
                ((AbstractC0474b) this.f7836d).a();
                break;
            default:
                D1 d12 = ((Toolbar) this.f7836d).f3527O;
                C0510k c0510k = d12 == null ? null : d12.f7672d;
                if (c0510k != null) {
                    c0510k.collapseActionView();
                    break;
                }
                break;
        }
    }
}

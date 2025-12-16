package k;

import android.content.Context;
import android.view.View;
import com.wssyncmldm.R;
import j.C0518s;
import j.MenuC0508i;
import j.SubMenuC0499A;
import j.ViewOnKeyListenerC0525z;

/* renamed from: k.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0587f extends C0518s {
    public final /* synthetic */ int n = 0;

    /* renamed from: o, reason: collision with root package name */
    public final /* synthetic */ C0602k f7850o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0587f(C0602k c0602k, Context context, MenuC0508i menuC0508i, C0596i c0596i) {
        super(R.attr.actionOverflowMenuStyle, 0, context, c0596i, menuC0508i, true);
        this.f7850o = c0602k;
        this.f7297g = 8388613;
        C0555A c0555a = c0602k.f7899y;
        this.f7299i = c0555a;
        ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = this.f7300j;
        if (viewOnKeyListenerC0525z != null) {
            viewOnKeyListenerC0525z.f7320t = c0555a;
        }
    }

    @Override // j.C0518s
    public final void c() {
        switch (this.n) {
            case 0:
                this.f7850o.f7896v = null;
                super.c();
                break;
            default:
                C0602k c0602k = this.f7850o;
                MenuC0508i menuC0508i = c0602k.f7881e;
                if (menuC0508i != null) {
                    menuC0508i.c(true);
                }
                c0602k.f7895u = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0587f(C0602k c0602k, Context context, SubMenuC0499A subMenuC0499A, View view) {
        super(R.attr.actionOverflowMenuStyle, 0, context, view, subMenuC0499A, false);
        this.f7850o = c0602k;
        if (!subMenuC0499A.f7197A.g()) {
            View view2 = c0602k.f7886k;
            this.f = view2 == null ? (View) c0602k.f7885j : view2;
        }
        C0555A c0555a = c0602k.f7899y;
        this.f7299i = c0555a;
        ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = this.f7300j;
        if (viewOnKeyListenerC0525z != null) {
            viewOnKeyListenerC0525z.f7320t = c0555a;
        }
    }
}

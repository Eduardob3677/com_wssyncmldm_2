package e;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: e.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0406j {

    /* renamed from: a, reason: collision with root package name */
    public final C0403g f6773a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6774b;

    public C0406j(Context context) {
        int iG = DialogInterfaceC0407k.g(context, 0);
        this.f6773a = new C0403g(new ContextThemeWrapper(context, DialogInterfaceC0407k.g(context, iG)));
        this.f6774b = iG;
    }

    public final DialogInterfaceC0407k a() {
        ListAdapter c0404h;
        C0403g c0403g = this.f6773a;
        DialogInterfaceC0407k dialogInterfaceC0407k = new DialogInterfaceC0407k(c0403g.f6715a, this.f6774b);
        View view = c0403g.f6719e;
        C0405i c0405i = dialogInterfaceC0407k.f6776h;
        if (view != null) {
            c0405i.f6737C = view;
        } else {
            CharSequence charSequence = c0403g.f6718d;
            if (charSequence != null) {
                c0405i.f6753e = charSequence;
                TextView textView = c0405i.f6735A;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c0403g.f6717c;
            if (drawable != null) {
                c0405i.f6771y = drawable;
                c0405i.f6770x = 0;
                ImageView imageView = c0405i.f6772z;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    c0405i.f6772z.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c0403g.f;
        if (charSequence2 != null) {
            c0405i.f = charSequence2;
            TextView textView2 = c0405i.f6736B;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = c0403g.f6720g;
        if (charSequence3 != null) {
            c0405i.d(-1, charSequence3, c0403g.f6721h);
        }
        CharSequence charSequence4 = c0403g.f6722i;
        if (charSequence4 != null) {
            c0405i.d(-2, charSequence4, c0403g.f6723j);
        }
        CharSequence charSequence5 = c0403g.f6724k;
        if (charSequence5 != null) {
            c0405i.d(-3, charSequence5, c0403g.f6725l);
        }
        if (c0403g.n != null || c0403g.f6727o != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) c0403g.f6716b.inflate(c0405i.f6740G, (ViewGroup) null);
            if (c0403g.f6731s) {
                c0404h = new C0400d(c0403g, c0403g.f6715a, c0405i.f6741H, c0403g.n, alertController$RecycleListView);
            } else {
                int i5 = c0403g.f6732t ? c0405i.f6742I : c0405i.f6743J;
                c0404h = c0403g.f6727o;
                if (c0404h == null) {
                    c0404h = new C0404h(c0403g.f6715a, i5, R.id.text1, c0403g.n);
                }
            }
            c0405i.f6738D = c0404h;
            c0405i.E = c0403g.f6733u;
            if (c0403g.f6728p != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0401e(c0403g, c0405i));
            } else if (c0403g.f6734v != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0402f(c0403g, alertController$RecycleListView, c0405i));
            }
            if (c0403g.f6732t) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (c0403g.f6731s) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            c0405i.f6754g = alertController$RecycleListView;
        }
        View view2 = c0403g.f6729q;
        if (view2 != null) {
            c0405i.f6755h = view2;
            c0405i.f6756i = 0;
            c0405i.f6757j = false;
        }
        dialogInterfaceC0407k.setCancelable(true);
        dialogInterfaceC0407k.setCanceledOnTouchOutside(true);
        dialogInterfaceC0407k.setOnCancelListener(null);
        dialogInterfaceC0407k.setOnDismissListener(null);
        DialogInterface.OnKeyListener onKeyListener = c0403g.f6726m;
        if (onKeyListener != null) {
            dialogInterfaceC0407k.setOnKeyListener(onKeyListener);
        }
        return dialogInterfaceC0407k;
    }
}

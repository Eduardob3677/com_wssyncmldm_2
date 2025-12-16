package e;

import J.C0045t;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import java.lang.ref.WeakReference;

/* renamed from: e.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0405i {

    /* renamed from: A, reason: collision with root package name */
    public TextView f6735A;

    /* renamed from: B, reason: collision with root package name */
    public TextView f6736B;

    /* renamed from: C, reason: collision with root package name */
    public View f6737C;

    /* renamed from: D, reason: collision with root package name */
    public ListAdapter f6738D;

    /* renamed from: F, reason: collision with root package name */
    public final int f6739F;

    /* renamed from: G, reason: collision with root package name */
    public final int f6740G;

    /* renamed from: H, reason: collision with root package name */
    public final int f6741H;

    /* renamed from: I, reason: collision with root package name */
    public final int f6742I;

    /* renamed from: J, reason: collision with root package name */
    public final int f6743J;

    /* renamed from: K, reason: collision with root package name */
    public int f6744K;

    /* renamed from: L, reason: collision with root package name */
    public C0045t f6745L;

    /* renamed from: M, reason: collision with root package name */
    public final boolean f6746M;

    /* renamed from: N, reason: collision with root package name */
    public final O.k f6747N;

    /* renamed from: a, reason: collision with root package name */
    public final Context f6749a;

    /* renamed from: b, reason: collision with root package name */
    public final DialogInterfaceC0407k f6750b;

    /* renamed from: c, reason: collision with root package name */
    public final Window f6751c;

    /* renamed from: d, reason: collision with root package name */
    public final int f6752d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f6753e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public AlertController$RecycleListView f6754g;

    /* renamed from: h, reason: collision with root package name */
    public View f6755h;

    /* renamed from: i, reason: collision with root package name */
    public int f6756i;

    /* renamed from: k, reason: collision with root package name */
    public Button f6758k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f6759l;

    /* renamed from: m, reason: collision with root package name */
    public Message f6760m;
    public Drawable n;

    /* renamed from: o, reason: collision with root package name */
    public Button f6761o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f6762p;

    /* renamed from: q, reason: collision with root package name */
    public Message f6763q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f6764r;

    /* renamed from: s, reason: collision with root package name */
    public Button f6765s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f6766t;

    /* renamed from: u, reason: collision with root package name */
    public Message f6767u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f6768v;

    /* renamed from: w, reason: collision with root package name */
    public NestedScrollView f6769w;

    /* renamed from: y, reason: collision with root package name */
    public Drawable f6771y;

    /* renamed from: z, reason: collision with root package name */
    public ImageView f6772z;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6757j = false;

    /* renamed from: x, reason: collision with root package name */
    public int f6770x = 0;
    public int E = -1;

    /* renamed from: O, reason: collision with root package name */
    public final com.google.android.material.datepicker.k f6748O = new com.google.android.material.datepicker.k(1, this);

    public C0405i(Context context, DialogInterfaceC0407k dialogInterfaceC0407k, Window window) {
        this.f6749a = context;
        this.f6750b = dialogInterfaceC0407k;
        this.f6751c = window;
        O.k kVar = new O.k();
        kVar.f1938b = new WeakReference(dialogInterfaceC0407k);
        this.f6747N = kVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC0206a.f5165e, R.attr.alertDialogStyle, 0);
        this.f6739F = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.f6740G = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f6741H = typedArrayObtainStyledAttributes.getResourceId(6, 0);
        this.f6742I = typedArrayObtainStyledAttributes.getResourceId(9, 0);
        this.f6743J = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f6746M = typedArrayObtainStyledAttributes.getBoolean(8, true);
        this.f6752d = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        dialogInterfaceC0407k.e().j(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static ViewGroup c(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void b(TextView textView, int i5) {
        float f = this.f6749a.getResources().getConfiguration().fontScale;
        if (f > 1.3f) {
            textView.setTextSize(0, (i5 / f) * 1.3f);
        }
    }

    public final void d(int i5, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message messageObtainMessage = onClickListener != null ? this.f6747N.obtainMessage(i5, onClickListener) : null;
        if (i5 == -3) {
            this.f6766t = charSequence;
            this.f6767u = messageObtainMessage;
            this.f6768v = null;
        } else if (i5 == -2) {
            this.f6762p = charSequence;
            this.f6763q = messageObtainMessage;
            this.f6764r = null;
        } else {
            if (i5 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f6759l = charSequence;
            this.f6760m = messageObtainMessage;
            this.n = null;
        }
    }
}

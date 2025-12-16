package k;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import androidx.appcompat.widget.AppCompatSpinner;
import com.wssyncmldm.R;

/* renamed from: k.M, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0567M extends C0633x0 implements InterfaceC0569O {

    /* renamed from: D, reason: collision with root package name */
    public CharSequence f7717D;
    public ListAdapter E;

    /* renamed from: F, reason: collision with root package name */
    public int f7718F;

    /* renamed from: G, reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner f7719G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0567M(AppCompatSpinner appCompatSpinner, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.f7719G = appCompatSpinner;
        new Rect();
        appCompatSpinner.getClass();
        this.f8037l = 0;
        this.f8039o = appCompatSpinner;
        this.f8049y = true;
        this.f8050z.setFocusable(true);
        this.f8040p = new C0565K(0, this);
    }

    @Override // k.InterfaceC0569O
    public final void e(int i5, int i6) {
        C0636z c0636z = this.f8050z;
        boolean zIsShowing = c0636z.isShowing();
        s();
        this.f8050z.setInputMethodMode(2);
        r();
        C0606l0 c0606l0 = this.f8031e;
        AbstractC0561G.d(c0606l0, i5);
        AbstractC0561G.c(c0606l0, i6);
        if (zIsShowing) {
            return;
        }
        c0606l0.setChoiceMode(1);
        AppCompatSpinner appCompatSpinner = this.f7719G;
        int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
        C0606l0 c0606l02 = this.f8031e;
        if (c0636z.isShowing() && c0606l02 != null) {
            c0606l02.setListSelectionHidden(false);
            c0606l02.setSelection(selectedItemPosition);
            if (c0606l02.getChoiceMode() != 0) {
                c0606l02.setItemChecked(selectedItemPosition, true);
            }
        }
        ViewTreeObserver viewTreeObserver = appCompatSpinner.getViewTreeObserver();
        if (viewTreeObserver != null) {
            ViewTreeObserverOnGlobalLayoutListenerC0559E viewTreeObserverOnGlobalLayoutListenerC0559E = new ViewTreeObserverOnGlobalLayoutListenerC0559E(1, this);
            viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0559E);
            this.f8050z.setOnDismissListener(new C0566L(this, viewTreeObserverOnGlobalLayoutListenerC0559E));
        }
    }

    @Override // k.InterfaceC0569O
    public final CharSequence i() {
        return this.f7717D;
    }

    @Override // k.InterfaceC0569O
    public final void k(CharSequence charSequence) {
        this.f7717D = charSequence;
    }

    @Override // k.C0633x0, k.InterfaceC0569O
    public final void n(ListAdapter listAdapter) {
        super.n(listAdapter);
        this.E = listAdapter;
    }

    @Override // k.InterfaceC0569O
    public final void o(int i5) {
        this.f7718F = i5;
    }

    public final void s() {
        int i5;
        C0636z c0636z = this.f8050z;
        Drawable background = c0636z.getBackground();
        AppCompatSpinner appCompatSpinner = this.f7719G;
        if (background != null) {
            background.getPadding(appCompatSpinner.f3352k);
            i5 = N1.a(appCompatSpinner) ? appCompatSpinner.f3352k.right : -appCompatSpinner.f3352k.left;
        } else {
            Rect rect = appCompatSpinner.f3352k;
            rect.right = 0;
            rect.left = 0;
            i5 = 0;
        }
        int paddingLeft = appCompatSpinner.getPaddingLeft();
        int paddingRight = appCompatSpinner.getPaddingRight();
        int width = appCompatSpinner.getWidth();
        int i6 = appCompatSpinner.f3350i;
        if (i6 == -2) {
            int iA = appCompatSpinner.a((SpinnerAdapter) this.E, c0636z.getBackground());
            int i7 = appCompatSpinner.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = appCompatSpinner.f3352k;
            int i8 = (i7 - rect2.left) - rect2.right;
            if (iA > i8) {
                iA = i8;
            }
            q(Math.max(iA + 4, (width - paddingLeft) - paddingRight));
        } else if (i6 == -1) {
            q((width - paddingLeft) - paddingRight);
        } else {
            q(i6);
        }
        int i9 = appCompatSpinner.f3351j;
        if (i9 == 0) {
            i9 = this.f7718F;
        }
        this.f8033h = N1.a(appCompatSpinner) ? (((i5 + width) - paddingRight) - this.f8032g) - i9 : i5 + paddingLeft + i9;
    }
}

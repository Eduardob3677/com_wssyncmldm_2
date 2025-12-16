package S1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2523a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f2524b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2525c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f2526d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f2527e;

    public p(r rVar, int i5, TextView textView, int i6, TextView textView2) {
        this.f2527e = rVar;
        this.f2523a = i5;
        this.f2524b = textView;
        this.f2525c = i6;
        this.f2526d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        AppCompatTextView appCompatTextView;
        int i5 = this.f2523a;
        r rVar = this.f2527e;
        rVar.n = i5;
        rVar.f2542l = null;
        TextView textView = this.f2524b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f2525c == 1 && (appCompatTextView = rVar.f2547r) != null) {
                appCompatTextView.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f2526d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f2526d;
        if (textView != null) {
            textView.setVisibility(0);
            textView.setAlpha(0.0f);
        }
    }
}

package C0;

import J.b0;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.chip.SeslChipGroup;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class q extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f296a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f297b;

    public /* synthetic */ q(int i5, Object obj) {
        this.f296a = i5;
        this.f297b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f296a) {
            case 3:
                ((b0) this.f297b).d();
                break;
            case 4:
            default:
                super.onAnimationCancel(animator);
                break;
            case 5:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f297b;
                actionBarOverlayLayout.f3319y = null;
                actionBarOverlayLayout.f3308m = false;
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f296a) {
            case 0:
                ((t) this.f297b).n();
                animator.removeListener(this);
                break;
            case 1:
                D0.f fVar = (D0.f) this.f297b;
                ArrayList arrayList = new ArrayList(fVar.f393g);
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    ColorStateList colorStateList = ((E1.a) arrayList.get(i5)).f519b.f534q;
                    if (colorStateList != null) {
                        C.a.h(fVar, colorStateList);
                    }
                }
                break;
            case 2:
                super.onAnimationEnd(animator);
                SeslChipGroup seslChipGroup = (SeslChipGroup) this.f297b;
                ViewGroup.LayoutParams layoutParams = seslChipGroup.getLayoutParams();
                layoutParams.height = -2;
                seslChipGroup.f5942p = 0;
                seslChipGroup.setLayoutParams(layoutParams);
                break;
            case 3:
                ((b0) this.f297b).c();
                break;
            case 4:
                S1.j jVar = (S1.j) this.f297b;
                jVar.q();
                jVar.f2494r.start();
                break;
            case 5:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f297b;
                actionBarOverlayLayout.f3319y = null;
                actionBarOverlayLayout.f3308m = false;
                break;
            default:
                ((HideBottomViewOnScrollBehavior) this.f297b).f5829h = null;
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f296a) {
            case 1:
                D0.f fVar = (D0.f) this.f297b;
                ArrayList arrayList = new ArrayList(fVar.f393g);
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    E1.c cVar = ((E1.a) arrayList.get(i5)).f519b;
                    ColorStateList colorStateList = cVar.f534q;
                    if (colorStateList != null) {
                        C.a.g(fVar, colorStateList.getColorForState(cVar.f538u, colorStateList.getDefaultColor()));
                    }
                }
                break;
            case 2:
            default:
                super.onAnimationStart(animator);
                break;
            case 3:
                ((b0) this.f297b).g();
                break;
        }
    }

    public q(b0 b0Var, View view) {
        this.f296a = 3;
        this.f297b = b0Var;
    }
}

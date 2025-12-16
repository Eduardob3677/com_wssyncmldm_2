package F1;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class s extends ValueAnimator {

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f744c;

    /* renamed from: d, reason: collision with root package name */
    public float[] f745d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f746e;
    public ArrayList f;

    public static s b(float... fArr) {
        s sVar = new s();
        sVar.setFloatValues(fArr);
        sVar.f745d = fArr;
        sVar.f746e = new ArrayList();
        sVar.f = new ArrayList();
        return sVar;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final s clone() {
        s sVarB = b(this.f745d);
        ArrayList arrayList = this.f746e;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sVarB.addUpdateListener((ValueAnimator.AnimatorUpdateListener) it.next());
            }
        }
        ArrayList arrayList2 = this.f;
        if (arrayList2 != null) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                sVarB.addListener((Animator.AnimatorListener) it2.next());
            }
        }
        return sVarB;
    }

    @Override // android.animation.Animator
    public final void addListener(Animator.AnimatorListener animatorListener) {
        super.addListener(animatorListener);
        this.f.add(animatorListener);
    }

    @Override // android.animation.ValueAnimator
    public final void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        super.addUpdateListener(animatorUpdateListener);
        this.f746e.add(animatorUpdateListener);
    }

    @Override // android.animation.Animator
    public final void setTarget(Object obj) {
        this.f744c = new WeakReference((View) obj);
        super.setTarget(obj);
    }
}

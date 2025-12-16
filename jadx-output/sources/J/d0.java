package J;

import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import s2.C0837c;

/* loaded from: classes.dex */
public final class d0 extends WindowInsetsAnimation.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final B1.j f968a;

    /* renamed from: b, reason: collision with root package name */
    public List f969b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f970c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f971d;

    public d0(B1.j jVar) {
        super(0);
        this.f971d = new HashMap();
        this.f968a = jVar;
    }

    public final e0 a(WindowInsetsAnimation windowInsetsAnimation) {
        HashMap map = this.f971d;
        e0 e0Var = (e0) map.get(windowInsetsAnimation);
        if (e0Var != null) {
            return e0Var;
        }
        e0 e0Var2 = new e0();
        e0Var2.f972a = new C0837c(new WindowInsetsAnimation(0, null, 0L));
        e0Var2.f972a = new C0837c(windowInsetsAnimation);
        map.put(windowInsetsAnimation, e0Var2);
        return e0Var2;
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        e0 e0VarA = a(windowInsetsAnimation);
        B1.j jVar = this.f968a;
        jVar.getClass();
        if ((((WindowInsetsAnimation) e0VarA.f972a.f9022c).getTypeMask() & 8) != 0) {
            ((View) jVar.f217c).setTranslationY(0.0f);
        }
        this.f971d.remove(windowInsetsAnimation);
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        e0 e0VarA = a(windowInsetsAnimation);
        B1.j jVar = this.f968a;
        jVar.getClass();
        if ((((WindowInsetsAnimation) e0VarA.f972a.f9022c).getTypeMask() & 8) != 0) {
            View view = (View) jVar.f217c;
            int[] iArr = (int[]) jVar.f218d;
            view.getLocationOnScreen(iArr);
            jVar.f215a = iArr[1];
        }
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        ArrayList arrayList = this.f970c;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.f970c = arrayList2;
            this.f969b = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(size);
            e0 e0VarA = a(windowInsetsAnimation);
            e0VarA.f972a.o(windowInsetsAnimation.getFraction());
            this.f970c.add(e0VarA);
        }
        q0 q0VarF = q0.f(windowInsets, null);
        this.f968a.k(q0VarF, this.f969b);
        return q0VarF.e();
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        e0 e0VarA = a(windowInsetsAnimation);
        B.c cVarC = B.c.c(bounds.getLowerBound());
        B.c cVarC2 = B.c.c(bounds.getUpperBound());
        B1.j jVar = this.f968a;
        jVar.getClass();
        if ((((WindowInsetsAnimation) e0VarA.f972a.f9022c).getTypeMask() & 8) != 0) {
            View view = (View) jVar.f217c;
            int[] iArr = (int[]) jVar.f218d;
            view.getLocationOnScreen(iArr);
            int i5 = jVar.f215a - iArr[1];
            jVar.f216b = i5;
            view.setTranslationY(i5);
        }
        return new WindowInsetsAnimation.Bounds(cVarC.d(), cVarC2.d());
    }
}

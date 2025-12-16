package j0;

import J.C0042p;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class e0 extends F {

    /* renamed from: d, reason: collision with root package name */
    public boolean f7438d;

    @Override // j0.F
    public final boolean a(b0 b0Var, b0 b0Var2, C0042p c0042p, C0042p c0042p2) {
        int i5;
        int i6;
        int i7 = c0042p.f999a;
        int i8 = c0042p.f1000b;
        if (b0Var2.q()) {
            int i9 = c0042p.f999a;
            i6 = c0042p.f1000b;
            i5 = i9;
        } else {
            i5 = c0042p2.f999a;
            i6 = c0042p2.f1000b;
        }
        C0539k c0539k = (C0539k) this;
        if (b0Var == b0Var2) {
            return c0539k.g(b0Var, i7, i8, i5, i6);
        }
        View view = b0Var.f7406a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        c0539k.l(b0Var);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        c0539k.l(b0Var2);
        float f = -((int) ((i5 - i7) - translationX));
        View view2 = b0Var2.f7406a;
        view2.setTranslationX(f);
        view2.setTranslationY(-((int) ((i6 - i8) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = c0539k.f7486h;
        C0537i c0537i = new C0537i();
        c0537i.f7460a = b0Var;
        c0537i.f7461b = b0Var2;
        c0537i.f7462c = i7;
        c0537i.f7463d = i8;
        c0537i.f7464e = i5;
        c0537i.f = i6;
        arrayList.add(c0537i);
        int i10 = c0539k.f7493p;
        if ((i10 & 4) == 0) {
            c0539k.f7493p = i10 | 4;
        }
        return true;
    }

    public abstract boolean g(b0 b0Var, int i5, int i6, int i7, int i8);
}

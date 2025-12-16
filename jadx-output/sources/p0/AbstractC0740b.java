package p0;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.TextPaint;
import android.text.TextUtils;
import c3.InterfaceC0222b;
import d3.i;
import i3.x;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import x3.C0914a;

/* renamed from: p0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0740b {

    /* renamed from: a, reason: collision with root package name */
    public static C0914a f8575a;

    public static void a(Appendable appendable, Object obj, InterfaceC0222b interfaceC0222b) throws IOException {
        i.e("<this>", appendable);
        if (interfaceC0222b != null) {
            appendable.append((CharSequence) interfaceC0222b.e(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(String.valueOf(obj));
        }
    }

    public static String b(String str) {
        Method methodK = x.K("android.os.SemSystemProperties", "get", String.class);
        if (methodK != null) {
            Object objJ0 = x.j0(null, methodK, str);
            if (objJ0 instanceof String) {
                return (String) objJ0;
            }
        }
        return null;
    }

    public static boolean c() {
        Method methodQ = x.Q("com.samsung.android.rune.ViewRune", "hidden_isEdgeEffectStretchType", new Class[0]);
        Object objJ0 = methodQ != null ? x.j0("com.samsung.android.rune.ViewRune", methodQ, new Object[0]) : null;
        if (objJ0 instanceof Boolean) {
            return ((Boolean) objJ0).booleanValue();
        }
        return false;
    }

    public static void d(AnimatorSet animatorSet, ArrayList arrayList) {
        int size = arrayList.size();
        long jMax = 0;
        for (int i5 = 0; i5 < size; i5++) {
            Animator animator = (Animator) arrayList.get(i5);
            jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
        valueAnimatorOfInt.setDuration(jMax);
        arrayList.add(0, valueAnimatorOfInt);
        animatorSet.playTogether(arrayList);
    }

    public static char[] e(TextPaint textPaint, String str, char[] cArr) {
        Method methodJ = x.J(TextUtils.class, "hidden_semGetPrefixCharForSpan", TextPaint.class, CharSequence.class, char[].class);
        if (methodJ == null) {
            return new char[0];
        }
        Object objJ0 = x.j0(null, methodJ, textPaint, str, cArr);
        if (objJ0 instanceof char[]) {
            return (char[]) objJ0;
        }
        return null;
    }

    public static boolean f() {
        Method methodQ = x.Q("com.samsung.android.rune.ViewRune", "hidden_supportFoldableDualDisplay", new Class[0]);
        Object objJ0 = methodQ != null ? x.j0("com.samsung.android.rune.ViewRune", methodQ, new Object[0]) : null;
        if (objJ0 instanceof Boolean) {
            return ((Boolean) objJ0).booleanValue();
        }
        return false;
    }

    public static boolean g() {
        Method methodQ = x.Q("com.samsung.android.rune.ViewRune", "hidden_supportFoldableNoSubDisplay", new Class[0]);
        Object objJ0 = methodQ != null ? x.j0("com.samsung.android.rune.ViewRune", methodQ, new Object[0]) : null;
        if (objJ0 instanceof Boolean) {
            return ((Boolean) objJ0).booleanValue();
        }
        return false;
    }
}

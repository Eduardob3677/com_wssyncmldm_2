package e;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import java.lang.reflect.Constructor;
import k.C0556B;
import k.C0614o;
import k.C0616p;
import o.C0722k;

/* loaded from: classes.dex */
public class F {

    /* renamed from: b, reason: collision with root package name */
    public static final Class[] f6652b = {Context.class, AttributeSet.class};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f6653c = {R.attr.onClick};

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f6654d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e, reason: collision with root package name */
    public static final C0722k f6655e = new C0722k();

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f6656a = new Object[2];

    public C0614o a(Context context, AttributeSet attributeSet) {
        return new C0614o(context, attributeSet);
    }

    public AppCompatButton b(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    public C0616p c(Context context, AttributeSet attributeSet) {
        return new C0616p(context, attributeSet, com.wssyncmldm.R.attr.checkboxStyle);
    }

    public C0556B d(Context context, AttributeSet attributeSet) {
        return new C0556B(context, attributeSet);
    }

    public AppCompatTextView e(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) throws NoSuchMethodException, SecurityException {
        String strConcat;
        C0722k c0722k = f6655e;
        Constructor constructor = (Constructor) c0722k.getOrDefault(str, null);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    strConcat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                strConcat = str;
            }
            constructor = Class.forName(strConcat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f6652b);
            c0722k.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f6656a);
    }
}

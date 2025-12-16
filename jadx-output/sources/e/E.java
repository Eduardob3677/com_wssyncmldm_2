package e;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class E implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final View f6649c;

    /* renamed from: d, reason: collision with root package name */
    public final String f6650d;

    /* renamed from: e, reason: collision with root package name */
    public Method f6651e;
    public Context f;

    public E(View view, String str) {
        this.f6649c = view;
        this.f6650d = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        String str;
        Method method;
        if (this.f6651e == null) {
            View view2 = this.f6649c;
            Context context = view2.getContext();
            while (true) {
                String str2 = this.f6650d;
                if (context == null) {
                    int id = view2.getId();
                    if (id == -1) {
                        str = "";
                    } else {
                        str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                    }
                    throw new IllegalStateException("Could not find method " + str2 + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + view2.getClass() + str);
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                        this.f6651e = method;
                        this.f = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }
        try {
            this.f6651e.invoke(this.f, view);
        } catch (IllegalAccessException e5) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e5);
        } catch (InvocationTargetException e6) {
            throw new IllegalStateException("Could not execute method for android:onClick", e6);
        }
    }
}

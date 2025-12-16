package i;

import android.view.MenuItem;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class h implements MenuItem.OnMenuItemClickListener {

    /* renamed from: e, reason: collision with root package name */
    public static final Class[] f7098e = {MenuItem.class};

    /* renamed from: c, reason: collision with root package name */
    public Object f7099c;

    /* renamed from: d, reason: collision with root package name */
    public Method f7100d;

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = this.f7100d;
        try {
            Class<?> returnType = method.getReturnType();
            Class<?> cls = Boolean.TYPE;
            Object obj = this.f7099c;
            if (returnType == cls) {
                return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
            }
            method.invoke(obj, menuItem);
            return true;
        } catch (Exception e5) {
            throw new RuntimeException(e5);
        }
    }
}

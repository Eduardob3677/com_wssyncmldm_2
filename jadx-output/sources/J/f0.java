package J;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public abstract class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f973a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f974b;

    /* renamed from: c, reason: collision with root package name */
    public static final Field f975c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f976d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f973a = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            f974b = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f975c = declaredField3;
            declaredField3.setAccessible(true);
            f976d = true;
        } catch (ReflectiveOperationException e5) {
            Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e5.getMessage(), e5);
        }
    }
}

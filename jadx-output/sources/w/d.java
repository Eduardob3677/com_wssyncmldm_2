package w;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.idm.providers.mo.IDMMoInterface;
import h0.AbstractC0432c;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import v.AbstractC0891a;

/* loaded from: classes.dex */
public final class d extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public AbstractC0897a f9558a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9559b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9560c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9561d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9562e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f9563g;

    /* renamed from: h, reason: collision with root package name */
    public int f9564h;

    /* renamed from: i, reason: collision with root package name */
    public int f9565i;

    /* renamed from: j, reason: collision with root package name */
    public int f9566j;

    /* renamed from: k, reason: collision with root package name */
    public View f9567k;

    /* renamed from: l, reason: collision with root package name */
    public View f9568l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9569m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f9570o;

    /* renamed from: p, reason: collision with root package name */
    public final Rect f9571p;

    public d() {
        super(-2, -2);
        this.f9559b = false;
        this.f9560c = 0;
        this.f9561d = 0;
        this.f9562e = -1;
        this.f = -1;
        this.f9563g = 0;
        this.f9564h = 0;
        this.f9571p = new Rect();
    }

    public final boolean a(int i5) {
        if (i5 == 0) {
            return this.n;
        }
        if (i5 != 1) {
            return false;
        }
        return this.f9570o;
    }

    public d(Context context, AttributeSet attributeSet) throws NoSuchMethodException, SecurityException {
        AbstractC0897a abstractC0897a;
        super(context, attributeSet);
        this.f9559b = false;
        this.f9560c = 0;
        this.f9561d = 0;
        this.f9562e = -1;
        this.f = -1;
        this.f9563g = 0;
        this.f9564h = 0;
        this.f9571p = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0891a.f9523b);
        this.f9560c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f9561d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f9562e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.f9563g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f9564h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.f9559b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f3585v;
            if (TextUtils.isEmpty(string)) {
                abstractC0897a = null;
            } else {
                if (string.startsWith(IDMMoInterface.IDM_MO_ROOT_PATH)) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f3585v;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f3587x;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f3586w);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    abstractC0897a = (AbstractC0897a) constructor.newInstance(context, attributeSet);
                } catch (Exception e5) {
                    throw new RuntimeException(AbstractC0432c.i("Could not inflate Behavior subclass ", string), e5);
                }
            }
            this.f9558a = abstractC0897a;
        }
        typedArrayObtainStyledAttributes.recycle();
        AbstractC0897a abstractC0897a2 = this.f9558a;
        if (abstractC0897a2 != null) {
            abstractC0897a2.d(this);
        }
    }

    public d(d dVar) {
        super((ViewGroup.MarginLayoutParams) dVar);
        this.f9559b = false;
        this.f9560c = 0;
        this.f9561d = 0;
        this.f9562e = -1;
        this.f = -1;
        this.f9563g = 0;
        this.f9564h = 0;
        this.f9571p = new Rect();
    }

    public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f9559b = false;
        this.f9560c = 0;
        this.f9561d = 0;
        this.f9562e = -1;
        this.f = -1;
        this.f9563g = 0;
        this.f9564h = 0;
        this.f9571p = new Rect();
    }

    public d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f9559b = false;
        this.f9560c = 0;
        this.f9561d = 0;
        this.f9562e = -1;
        this.f = -1;
        this.f9563g = 0;
        this.f9564h = 0;
        this.f9571p = new Rect();
    }
}

package u;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
import s.C0827d;

/* loaded from: classes.dex */
public abstract class c extends View {

    /* renamed from: c, reason: collision with root package name */
    public int[] f9151c;

    /* renamed from: d, reason: collision with root package name */
    public int f9152d;

    /* renamed from: e, reason: collision with root package name */
    public Context f9153e;
    public s.i f;

    /* renamed from: g, reason: collision with root package name */
    public String f9154g;

    /* renamed from: h, reason: collision with root package name */
    public String f9155h;

    /* renamed from: i, reason: collision with root package name */
    public HashMap f9156i;

    /* JADX WARN: Removed duplicated region for block: B:30:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(String str) throws IllegalAccessException, IllegalArgumentException {
        Context context;
        int identifier;
        HashMap map;
        if (str == null || str.length() == 0 || (context = this.f9153e) == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (!isInEditMode() || constraintLayout == null) {
            identifier = 0;
        } else {
            Object obj = ((strTrim instanceof String) && (map = constraintLayout.f3580o) != null && map.containsKey(strTrim)) ? constraintLayout.f3580o.get(strTrim) : null;
            if (obj instanceof Integer) {
                identifier = ((Integer) obj).intValue();
            }
        }
        if (identifier == 0 && constraintLayout != null) {
            identifier = e(constraintLayout, strTrim);
        }
        if (identifier == 0) {
            try {
                identifier = n.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (identifier == 0) {
            identifier = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
        }
        if (identifier != 0) {
            this.f9156i.put(Integer.valueOf(identifier), strTrim);
            b(identifier);
        } else {
            Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
        }
    }

    public final void b(int i5) {
        if (i5 == getId()) {
            return;
        }
        int i6 = this.f9152d + 1;
        int[] iArr = this.f9151c;
        if (i6 > iArr.length) {
            this.f9151c = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f9151c;
        int i7 = this.f9152d;
        iArr2[i7] = i5;
        this.f9152d = i7 + 1;
    }

    public final void c(String str) {
        if (str == null || str.length() == 0 || this.f9153e == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = constraintLayout.getChildAt(i5);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof e) && strTrim.equals(((e) layoutParams).f9177U)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    public final void d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i5 = 0; i5 < this.f9152d; i5++) {
            View view = (View) constraintLayout.f3570c.get(this.f9151c[i5]);
            if (view != null) {
                view.setVisibility(visibility);
                if (elevation > 0.0f) {
                    view.setTranslationZ(view.getTranslationZ() + elevation);
                }
            }
        }
    }

    public final int e(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.f9153e.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = constraintLayout.getChildAt(i5);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public void f(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.f9311b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == 19) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f9154g = string;
                    setIds(string);
                } else if (index == 20) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f9155h = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public abstract void g(C0827d c0827d, boolean z4);

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f9151c, this.f9152d);
    }

    public final void h() {
        if (this.f == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof e) {
            ((e) layoutParams).k0 = this.f;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f9154g;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f9155h;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f9154g = str;
        if (str == null) {
            return;
        }
        int i5 = 0;
        this.f9152d = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i5);
            if (iIndexOf == -1) {
                a(str.substring(i5));
                return;
            } else {
                a(str.substring(i5, iIndexOf));
                i5 = iIndexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f9155h = str;
        if (str == null) {
            return;
        }
        int i5 = 0;
        this.f9152d = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i5);
            if (iIndexOf == -1) {
                c(str.substring(i5));
                return;
            } else {
                c(str.substring(i5, iIndexOf));
                i5 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f9154g = null;
        this.f9152d = 0;
        for (int i5 : iArr) {
            b(i5);
        }
    }

    @Override // android.view.View
    public final void setTag(int i5, Object obj) {
        super.setTag(i5, obj);
        if (obj == null && this.f9154g == null) {
            b(i5);
        }
    }
}

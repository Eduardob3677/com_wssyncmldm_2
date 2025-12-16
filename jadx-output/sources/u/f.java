package u;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final float f9216a;

    /* renamed from: b, reason: collision with root package name */
    public final float f9217b;

    /* renamed from: c, reason: collision with root package name */
    public final float f9218c;

    /* renamed from: d, reason: collision with root package name */
    public final float f9219d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9220e;

    public f(Context context, XmlResourceParser xmlResourceParser) throws Resources.NotFoundException {
        this.f9216a = Float.NaN;
        this.f9217b = Float.NaN;
        this.f9218c = Float.NaN;
        this.f9219d = Float.NaN;
        this.f9220e = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), o.f9317i);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i5);
            if (index == 0) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f9220e);
                this.f9220e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new l().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            } else if (index == 1) {
                this.f9219d = typedArrayObtainStyledAttributes.getDimension(index, this.f9219d);
            } else if (index == 2) {
                this.f9217b = typedArrayObtainStyledAttributes.getDimension(index, this.f9217b);
            } else if (index == 3) {
                this.f9218c = typedArrayObtainStyledAttributes.getDimension(index, this.f9218c);
            } else if (index == 4) {
                this.f9216a = typedArrayObtainStyledAttributes.getDimension(index, this.f9216a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}

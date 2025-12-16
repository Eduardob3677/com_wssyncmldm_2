package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import c.AbstractC0206a;

/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: c, reason: collision with root package name */
    public final int f3213c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3214d;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5179u);
        this.f3214d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f3213c = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}

package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* renamed from: k.d1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0583d1 extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public Drawable f7845c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f7846d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7847e;
    public final ImageView f;

    public C0583d1(Context context) {
        super(context, null);
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(this.f7846d);
        addView(imageView);
        this.f = imageView;
    }

    public final void a(boolean z4) {
        this.f.setImageDrawable(z4 ? this.f7846d : this.f7845c);
        setSelected(z4);
        this.f7847e = z4;
    }
}

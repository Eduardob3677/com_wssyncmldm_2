package I1;

import L2.b;
import android.content.Context;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class a {
    public static final int f = (int) Math.round(5.1000000000000005d);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f873a;

    /* renamed from: b, reason: collision with root package name */
    public final int f874b;

    /* renamed from: c, reason: collision with root package name */
    public final int f875c;

    /* renamed from: d, reason: collision with root package name */
    public final int f876d;

    /* renamed from: e, reason: collision with root package name */
    public final float f877e;

    public a(Context context) {
        boolean zF = b.F(context, R.attr.elevationOverlayEnabled, false);
        int iZ = W1.a.z(context, R.attr.elevationOverlayColor, 0);
        int iZ2 = W1.a.z(context, R.attr.elevationOverlayAccentColor, 0);
        int iZ3 = W1.a.z(context, R.attr.colorSurface, 0);
        float f5 = context.getResources().getDisplayMetrics().density;
        this.f873a = zF;
        this.f874b = iZ;
        this.f875c = iZ2;
        this.f876d = iZ3;
        this.f877e = f5;
    }
}

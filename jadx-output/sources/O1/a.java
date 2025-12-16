package O1;

import android.graphics.Paint;
import android.graphics.Path;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f1940i = new int[3];

    /* renamed from: j, reason: collision with root package name */
    public static final float[] f1941j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f1942k = new int[4];

    /* renamed from: l, reason: collision with root package name */
    public static final float[] f1943l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f1944a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f1945b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f1946c;

    /* renamed from: d, reason: collision with root package name */
    public int f1947d;

    /* renamed from: e, reason: collision with root package name */
    public int f1948e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f1949g = new Path();

    /* renamed from: h, reason: collision with root package name */
    public final Paint f1950h;

    public a() {
        Paint paint = new Paint();
        this.f1950h = paint;
        Paint paint2 = new Paint();
        this.f1944a = paint2;
        this.f1947d = B.a.c(-16777216, 68);
        this.f1948e = B.a.c(-16777216, 20);
        this.f = B.a.c(-16777216, 0);
        paint2.setColor(this.f1947d);
        paint.setColor(0);
        Paint paint3 = new Paint(4);
        this.f1945b = paint3;
        paint3.setStyle(Paint.Style.FILL);
        this.f1946c = new Paint(paint3);
    }
}

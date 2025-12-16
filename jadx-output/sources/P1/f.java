package P1;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.samsung.android.knox.custom.CustomDeviceManager;

/* loaded from: classes.dex */
public class f extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public k f2055a;

    /* renamed from: b, reason: collision with root package name */
    public I1.a f2056b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f2057c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f2058d;

    /* renamed from: e, reason: collision with root package name */
    public final ColorStateList f2059e;
    public ColorStateList f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f2060g;

    /* renamed from: h, reason: collision with root package name */
    public Rect f2061h;

    /* renamed from: i, reason: collision with root package name */
    public final float f2062i;

    /* renamed from: j, reason: collision with root package name */
    public float f2063j;

    /* renamed from: k, reason: collision with root package name */
    public float f2064k;

    /* renamed from: l, reason: collision with root package name */
    public int f2065l;

    /* renamed from: m, reason: collision with root package name */
    public float f2066m;
    public float n;

    /* renamed from: o, reason: collision with root package name */
    public final float f2067o;

    /* renamed from: p, reason: collision with root package name */
    public final int f2068p;

    /* renamed from: q, reason: collision with root package name */
    public int f2069q;

    /* renamed from: r, reason: collision with root package name */
    public int f2070r;

    /* renamed from: s, reason: collision with root package name */
    public final int f2071s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f2072t;

    /* renamed from: u, reason: collision with root package name */
    public final Paint.Style f2073u;

    public f(k kVar) {
        this.f2057c = null;
        this.f2058d = null;
        this.f2059e = null;
        this.f = null;
        this.f2060g = PorterDuff.Mode.SRC_IN;
        this.f2061h = null;
        this.f2062i = 1.0f;
        this.f2063j = 1.0f;
        this.f2065l = CustomDeviceManager.CALL_SCREEN_ALL;
        this.f2066m = 0.0f;
        this.n = 0.0f;
        this.f2067o = 0.0f;
        this.f2068p = 0;
        this.f2069q = 0;
        this.f2070r = 0;
        this.f2071s = 0;
        this.f2072t = false;
        this.f2073u = Paint.Style.FILL_AND_STROKE;
        this.f2055a = kVar;
        this.f2056b = null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        g gVar = new g(this);
        gVar.f2078g = true;
        return gVar;
    }

    public f(f fVar) {
        this.f2057c = null;
        this.f2058d = null;
        this.f2059e = null;
        this.f = null;
        this.f2060g = PorterDuff.Mode.SRC_IN;
        this.f2061h = null;
        this.f2062i = 1.0f;
        this.f2063j = 1.0f;
        this.f2065l = CustomDeviceManager.CALL_SCREEN_ALL;
        this.f2066m = 0.0f;
        this.n = 0.0f;
        this.f2067o = 0.0f;
        this.f2068p = 0;
        this.f2069q = 0;
        this.f2070r = 0;
        this.f2071s = 0;
        this.f2072t = false;
        this.f2073u = Paint.Style.FILL_AND_STROKE;
        this.f2055a = fVar.f2055a;
        this.f2056b = fVar.f2056b;
        this.f2064k = fVar.f2064k;
        this.f2057c = fVar.f2057c;
        this.f2058d = fVar.f2058d;
        this.f2060g = fVar.f2060g;
        this.f = fVar.f;
        this.f2065l = fVar.f2065l;
        this.f2062i = fVar.f2062i;
        this.f2070r = fVar.f2070r;
        this.f2068p = fVar.f2068p;
        this.f2072t = fVar.f2072t;
        this.f2063j = fVar.f2063j;
        this.f2066m = fVar.f2066m;
        this.n = fVar.n;
        this.f2067o = fVar.f2067o;
        this.f2069q = fVar.f2069q;
        this.f2071s = fVar.f2071s;
        this.f2059e = fVar.f2059e;
        this.f2073u = fVar.f2073u;
        if (fVar.f2061h != null) {
            this.f2061h = new Rect(fVar.f2061h);
        }
    }
}

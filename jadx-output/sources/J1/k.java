package J1;

import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: c, reason: collision with root package name */
    public float f1122c;

    /* renamed from: e, reason: collision with root package name */
    public final WeakReference f1124e;
    public M1.d f;

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f1120a = new TextPaint(1);

    /* renamed from: b, reason: collision with root package name */
    public final F1.b f1121b = new F1.b(1, this);

    /* renamed from: d, reason: collision with root package name */
    public boolean f1123d = true;

    public k(j jVar) {
        this.f1124e = new WeakReference(null);
        this.f1124e = new WeakReference(jVar);
    }

    public final float a(String str) {
        if (!this.f1123d) {
            return this.f1122c;
        }
        TextPaint textPaint = this.f1120a;
        this.f1122c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        if (str != null) {
            Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.f1123d = false;
        return this.f1122c;
    }
}

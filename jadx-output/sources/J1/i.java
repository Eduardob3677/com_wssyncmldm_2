package J1;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f1109a;

    /* renamed from: b, reason: collision with root package name */
    public final TextPaint f1110b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1111c;

    /* renamed from: d, reason: collision with root package name */
    public int f1112d;

    /* renamed from: k, reason: collision with root package name */
    public boolean f1118k;

    /* renamed from: e, reason: collision with root package name */
    public Layout.Alignment f1113e = Layout.Alignment.ALIGN_NORMAL;
    public int f = Integer.MAX_VALUE;

    /* renamed from: g, reason: collision with root package name */
    public float f1114g = 0.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f1115h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public int f1116i = 1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f1117j = true;

    /* renamed from: l, reason: collision with root package name */
    public TextUtils.TruncateAt f1119l = null;

    public i(CharSequence charSequence, TextPaint textPaint, int i5) {
        this.f1109a = charSequence;
        this.f1110b = textPaint;
        this.f1111c = i5;
        this.f1112d = charSequence.length();
    }

    public final StaticLayout a() {
        if (this.f1109a == null) {
            this.f1109a = "";
        }
        int iMax = Math.max(0, this.f1111c);
        CharSequence charSequenceEllipsize = this.f1109a;
        int i5 = this.f;
        TextPaint textPaint = this.f1110b;
        if (i5 == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.f1119l);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f1112d);
        this.f1112d = iMin;
        if (this.f1118k && this.f == 1) {
            this.f1113e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
        builderObtain.setAlignment(this.f1113e);
        builderObtain.setIncludePad(this.f1117j);
        builderObtain.setTextDirection(this.f1118k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f1119l;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f);
        float f = this.f1114g;
        if (f != 0.0f || this.f1115h != 1.0f) {
            builderObtain.setLineSpacing(f, this.f1115h);
        }
        if (this.f > 1) {
            builderObtain.setHyphenationFrequency(this.f1116i);
        }
        return builderObtain.build();
    }
}

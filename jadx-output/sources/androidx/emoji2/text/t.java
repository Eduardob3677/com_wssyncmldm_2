package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class t extends ReplacementSpan {

    /* renamed from: b, reason: collision with root package name */
    public final m f3728b;

    /* renamed from: a, reason: collision with root package name */
    public final Paint.FontMetricsInt f3727a = new Paint.FontMetricsInt();

    /* renamed from: c, reason: collision with root package name */
    public float f3729c = 1.0f;

    public t(m mVar) {
        Z0.j.m("metadata cannot be null", mVar);
        this.f3728b = mVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i5, int i6, float f, int i7, int i8, int i9, Paint paint) {
        j.a().getClass();
        m mVar = this.f3728b;
        com.google.firebase.messaging.p pVar = mVar.f3706b;
        Typeface typeface = (Typeface) pVar.f6260g;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText((char[]) pVar.f6259e, mVar.f3705a * 2, 2, f, i8, paint);
        paint.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i5, int i6, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f3727a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float fAbs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        m mVar = this.f3728b;
        this.f3729c = fAbs / (mVar.c().a(14) != 0 ? ((ByteBuffer) r8.f938d).getShort(r1 + r8.f935a) : (short) 0);
        W.a aVarC = mVar.c();
        int iA = aVarC.a(14);
        if (iA != 0) {
            ((ByteBuffer) aVarC.f938d).getShort(iA + aVarC.f935a);
        }
        short s5 = (short) ((mVar.c().a(12) != 0 ? ((ByteBuffer) r5.f938d).getShort(r7 + r5.f935a) : (short) 0) * this.f3729c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s5;
    }
}

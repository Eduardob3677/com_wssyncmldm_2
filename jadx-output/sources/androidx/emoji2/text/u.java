package androidx.emoji2.text;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public final class u implements Spannable {

    /* renamed from: c, reason: collision with root package name */
    public boolean f3730c = false;

    /* renamed from: d, reason: collision with root package name */
    public Spannable f3731d;

    public u(Spannable spannable) {
        this.f3731d = spannable;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i5) {
        return this.f3731d.charAt(i5);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.f3731d.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.f3731d.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f3731d.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f3731d.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f3731d.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i5, int i6, Class cls) {
        return this.f3731d.getSpans(i5, i6, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f3731d.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i5, int i6, Class cls) {
        return this.f3731d.nextSpanTransition(i5, i6, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        Spannable spannable = this.f3731d;
        if (!this.f3730c && (spannable instanceof PrecomputedText)) {
            this.f3731d = new SpannableString(spannable);
        }
        this.f3730c = true;
        this.f3731d.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i5, int i6, int i7) {
        Spannable spannable = this.f3731d;
        if (!this.f3730c && (spannable instanceof PrecomputedText)) {
            this.f3731d = new SpannableString(spannable);
        }
        this.f3730c = true;
        this.f3731d.setSpan(obj, i5, i6, i7);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i5, int i6) {
        return this.f3731d.subSequence(i5, i6);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f3731d.toString();
    }

    public u(CharSequence charSequence) {
        this.f3731d = new SpannableString(charSequence);
    }
}

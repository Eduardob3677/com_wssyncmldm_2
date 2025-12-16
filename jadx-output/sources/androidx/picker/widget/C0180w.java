package androidx.picker.widget;

import android.icu.text.DecimalFormatSymbols;
import java.util.Formatter;
import java.util.Locale;

/* renamed from: androidx.picker.widget.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0180w implements InterfaceC0176s {

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f4540a;

    /* renamed from: b, reason: collision with root package name */
    public char f4541b;

    /* renamed from: c, reason: collision with root package name */
    public Formatter f4542c;

    /* renamed from: d, reason: collision with root package name */
    public final Object[] f4543d;

    public C0180w() {
        StringBuilder sb = new StringBuilder();
        this.f4540a = sb;
        this.f4543d = new Object[1];
        Locale locale = Locale.getDefault();
        this.f4542c = new Formatter(sb, locale);
        this.f4541b = DecimalFormatSymbols.getInstance(locale).getZeroDigit();
    }
}

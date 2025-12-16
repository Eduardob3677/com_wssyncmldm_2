package androidx.picker.widget;

import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
import java.util.Locale;

/* loaded from: classes.dex */
public final class C extends NumberKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ D f4088a;

    public C(D d2) {
        this.f4088a = d2;
    }

    @Override // android.text.method.NumberKeyListener, android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i5, int i6, Spanned spanned, int i7, int i8) {
        D d2 = this.f4088a;
        if (d2.f4158l == null) {
            CharSequence charSequenceFilter = super.filter(charSequence, i5, i6, spanned, i7, i8);
            if (charSequenceFilter == null) {
                charSequenceFilter = charSequence.subSequence(i5, i6);
            }
            String str = String.valueOf(spanned.subSequence(0, i7)) + ((Object) charSequenceFilter) + ((Object) spanned.subSequence(i8, spanned.length()));
            if ("".equals(str)) {
                return str;
            }
            if (d2.h(str) <= d2.n && str.length() <= d2.f(d2.n).length()) {
                return charSequenceFilter;
            }
            if (d2.f4152h0) {
                if (d2.f4132X0 == null) {
                    D.a(d2);
                }
                d2.f4132X0.show();
            }
            return "";
        }
        String strValueOf = String.valueOf(charSequence.subSequence(i5, i6));
        String lowerCase = String.valueOf(String.valueOf(spanned.subSequence(0, i7)) + ((Object) strValueOf) + ((Object) spanned.subSequence(i8, spanned.length()))).toLowerCase();
        d2.getClass();
        boolean z4 = "vi".equals(Locale.getDefault().getLanguage()) && "inputType=month_edittext".equals(d2.f4147e.getPrivateImeOptions());
        for (String str2 : d2.f4158l) {
            String lowerCase2 = str2.toLowerCase();
            if ((z4 && lowerCase2.equals(lowerCase)) || lowerCase2.startsWith(lowerCase)) {
                return strValueOf;
            }
        }
        if (d2.f4152h0 && !TextUtils.isEmpty(lowerCase)) {
            if (d2.f4132X0 == null) {
                D.a(d2);
            }
            d2.f4132X0.show();
        }
        return "";
    }

    @Override // android.text.method.NumberKeyListener
    public final char[] getAcceptedChars() {
        return D.e1;
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return 1;
    }
}

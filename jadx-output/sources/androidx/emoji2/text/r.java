package androidx.emoji2.text;

import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class r implements TextWatcher, SpanWatcher {

    /* renamed from: c, reason: collision with root package name */
    public final Object f3723c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicInteger f3724d = new AtomicInteger(0);

    public r(Object obj) {
        this.f3723c = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ((TextWatcher) this.f3723c).afterTextChanged(editable);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        ((TextWatcher) this.f3723c).beforeTextChanged(charSequence, i5, i6, i7);
    }

    @Override // android.text.SpanWatcher
    public final void onSpanAdded(Spannable spannable, Object obj, int i5, int i6) {
        if (this.f3724d.get() <= 0 || !(obj instanceof t)) {
            ((SpanWatcher) this.f3723c).onSpanAdded(spannable, obj, i5, i6);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanChanged(Spannable spannable, Object obj, int i5, int i6, int i7, int i8) {
        if (this.f3724d.get() <= 0 || !(obj instanceof t)) {
            ((SpanWatcher) this.f3723c).onSpanChanged(spannable, obj, i5, i6, i7, i8);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanRemoved(Spannable spannable, Object obj, int i5, int i6) {
        if (this.f3724d.get() <= 0 || !(obj instanceof t)) {
            ((SpanWatcher) this.f3723c).onSpanRemoved(spannable, obj, i5, i6);
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        ((TextWatcher) this.f3723c).onTextChanged(charSequence, i5, i6, i7);
    }
}

package X;

import android.text.Editable;
import androidx.emoji2.text.s;

/* loaded from: classes.dex */
public final class a extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f2842a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f2843b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f2844c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f2844c;
        return cls != null ? new s(cls, charSequence) : super.newEditable(charSequence);
    }
}

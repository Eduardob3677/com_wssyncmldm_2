package androidx.preference;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class C {

    /* renamed from: a, reason: collision with root package name */
    public final int f4553a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4554b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4555c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4556d;

    public C(Preference preference) {
        this.f4556d = preference.getClass().getName();
        this.f4553a = preference.f4633G;
        this.f4554b = preference.f4634H;
        this.f4555c = preference.f4635I;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C)) {
            return false;
        }
        C c2 = (C) obj;
        return this.f4553a == c2.f4553a && this.f4554b == c2.f4554b && TextUtils.equals(this.f4556d, c2.f4556d) && this.f4555c == c2.f4555c && TextUtils.equals(null, null);
    }

    public final int hashCode() {
        return this.f4556d.hashCode() + ((((527 + this.f4553a) * 31) + this.f4554b) * 31);
    }
}

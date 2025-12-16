package com.google.android.gms.internal.p000firebaseauthapi;

import a1.InterfaceC0104a;
import c1.AbstractC0213D;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class W3 implements InterfaceC0104a, Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public boolean f5483c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5484d;

    public W3(String str) {
        AbstractC0213D.d(str, "A valid API key must be provided");
        this.f5484d = str;
    }

    public final Object clone() {
        String str = this.f5484d;
        AbstractC0213D.c(str);
        return new W3(str);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof W3)) {
            return false;
        }
        W3 w32 = (W3) obj;
        return AbstractC0213D.h(this.f5484d, w32.f5484d) && this.f5483c == w32.f5483c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5484d}) + (!this.f5483c ? 1 : 0);
    }
}

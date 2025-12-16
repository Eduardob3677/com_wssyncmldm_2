package androidx.activity;

import android.os.Bundle;
import androidx.lifecycle.P;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements x0.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3155a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3156b;

    public /* synthetic */ e(int i5, Object obj) {
        this.f3155a = i5;
        this.f3156b = obj;
    }

    @Override // x0.c
    public final Bundle a() {
        int i5 = this.f3155a;
        Object obj = this.f3156b;
        switch (i5) {
            case 0:
                return ComponentActivity.h((ComponentActivity) obj);
            default:
                return P.a((P) obj);
        }
    }
}

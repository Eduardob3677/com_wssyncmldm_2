package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.Collections;

/* loaded from: classes.dex */
public final class g5 {

    /* renamed from: a, reason: collision with root package name */
    public static volatile g5 f5586a;

    /* renamed from: b, reason: collision with root package name */
    public static final g5 f5587b;

    static {
        g5 g5Var = new g5();
        Collections.emptyMap();
        f5587b = g5Var;
    }

    public static g5 a() {
        g5 g5Var = f5586a;
        if (g5Var == null) {
            synchronized (g5.class) {
                try {
                    g5Var = f5586a;
                    if (g5Var == null) {
                        g5Var = f5587b;
                        f5586a = g5Var;
                    }
                } finally {
                }
            }
        }
        return g5Var;
    }
}

package com.google.android.gms.internal.p000firebaseauthapi;

import A.d;
import J3.c;
import a1.e;
import a1.f;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;
import c1.k;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.lang.reflect.Field;
import l1.AbstractC0641a;

/* loaded from: classes.dex */
public final class I3 extends k implements H3 {

    /* renamed from: z, reason: collision with root package name */
    public static final d f5392z = new d("FirebaseAuth", "FirebaseAuth:");

    /* renamed from: x, reason: collision with root package name */
    public final Context f5393x;

    /* renamed from: y, reason: collision with root package name */
    public final W3 f5394y;

    public I3(Context context, Looper looper, c cVar, W3 w32, e eVar, f fVar) {
        super(context, looper, 112, cVar, eVar, fVar);
        this.f5393x = context;
        this.f5394y = w32;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00af A[RETURN] */
    @Override // c1.k, a1.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, IllegalArgumentException {
        int i5;
        Field declaredField;
        Field declaredField2;
        Context context = this.f5393x;
        int i6 = AbstractC0641a.f8074a;
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(ModuleDescriptor.MODULE_ID.length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor");
            Class<?> clsLoadClass = classLoader.loadClass(sb.toString());
            declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
        } catch (ClassNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder(ModuleDescriptor.MODULE_ID.length() + 45);
            sb2.append("Local module descriptor class for com.google.firebase.auth not found.");
            Log.w("DynamiteModule", sb2.toString());
        } catch (Exception e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.e("DynamiteModule", strValueOf.length() != 0 ? "Failed to load module descriptor class: ".concat(strValueOf) : new String("Failed to load module descriptor class: "));
        }
        if (!declaredField.get(null).equals(ModuleDescriptor.MODULE_ID)) {
            String strValueOf2 = String.valueOf(declaredField.get(null));
            StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 51 + ModuleDescriptor.MODULE_ID.length());
            sb3.append("Module descriptor id '");
            sb3.append(strValueOf2);
            sb3.append("' didn't match expected id 'com.google.firebase.auth'");
            Log.e("DynamiteModule", sb3.toString());
            i5 = 0;
            return i5 != 0;
        }
        i5 = declaredField2.getInt(null);
        if (i5 != 0) {
        }
    }

    @Override // c1.k
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
        return iInterfaceQueryLocalInterface instanceof U3 ? (U3) iInterfaceQueryLocalInterface : new R3(iBinder, "com.google.firebase.auth.api.internal.IFirebaseAuthService", 0);
    }

    @Override // c1.k
    public final Z0.c[] e() {
        return AbstractC0332s.f5709b;
    }

    @Override // c1.k
    public final Bundle f() {
        Bundle bundle = new Bundle();
        W3 w32 = this.f5394y;
        if (w32 != null) {
            bundle.putString("com.google.firebase.auth.API_KEY", w32.f5484d);
        }
        bundle.putString("com.google.firebase.auth.LIBRARY_VERSION", Z3.a());
        return bundle;
    }

    @Override // c1.k
    public final String i() {
        return "com.google.firebase.auth.api.internal.IFirebaseAuthService";
    }

    @Override // c1.k
    public final String j() {
        return "com.google.firebase.auth.api.gms.service.START";
    }

    @Override // c1.k
    public final String k() {
        boolean z4 = this.f5394y.f5483c;
        d dVar = f5392z;
        if (z4) {
            Log.i((String) dVar.f11b, dVar.f("Preparing to create service connection to fallback implementation", new Object[0]));
            return this.f5393x.getPackageName();
        }
        Log.i((String) dVar.f11b, dVar.f("Preparing to create service connection to gms implementation", new Object[0]));
        return "com.google.android.gms";
    }
}

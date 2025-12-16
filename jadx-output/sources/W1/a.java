package W1;

import A3.p;
import J.r0;
import J3.l;
import J3.r;
import J3.t;
import L3.EnumC0076z;
import L3.G;
import L3.f0;
import O3.k;
import R3.C0087i;
import R3.C0094p;
import S3.m;
import a1.InterfaceC0104a;
import a4.o;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.common.stats.WakeLockEvent;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.idm.agent.dm.uic.IDMDmUICInterface;
import com.idm.providers.mo.IDMMoInterface;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import com.wssyncmldm.R;
import d4.v;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.J;
import h4.X;
import i3.InterfaceC0489j;
import i3.x;
import java.io.Closeable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import l3.C0666W;
import o3.AbstractC0732i;
import r3.AbstractC0811n;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s2.C0837c;
import u3.AbstractC0883o;
import u3.C0890w;
import u3.L;
import u3.N;
import u3.V;
import z.AbstractC0934b;
import z.AbstractC0936d;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f2812a;

    public static ColorStateList A(Context context, r0 r0Var, int i5) {
        int resourceId;
        ColorStateList colorStateListB;
        TypedArray typedArray = (TypedArray) r0Var.f1007d;
        return (!typedArray.hasValue(i5) || (resourceId = typedArray.getResourceId(i5, 0)) == 0 || (colorStateListB = AbstractC0936d.b(context, resourceId)) == null) ? r0Var.f(i5) : colorStateListB;
    }

    public static ColorStateList B(Context context, TypedArray typedArray, int i5) {
        int resourceId;
        ColorStateList colorStateListB;
        return (!typedArray.hasValue(i5) || (resourceId = typedArray.getResourceId(i5, 0)) == 0 || (colorStateListB = AbstractC0936d.b(context, resourceId)) == null) ? typedArray.getColorStateList(i5) : colorStateListB;
    }

    public static Drawable C(Context context, TypedArray typedArray, int i5) {
        int resourceId;
        Drawable drawableA;
        return (!typedArray.hasValue(i5) || (resourceId = typedArray.getResourceId(i5, 0)) == 0 || (drawableA = AbstractC0420a.A(context, resourceId)) == null) ? typedArray.getDrawable(i5) : drawableA;
    }

    public static float E(Resources resources) throws NoSuchFieldException {
        Object objJ0;
        Method methodP = x.P(Resources.class, "getCompatibilityInfo", new Class[0]);
        Field field = null;
        if (methodP == null || (objJ0 = x.j0(resources, methodP, new Object[0])) == null || !objJ0.getClass().getName().equals("android.content.res.CompatibilityInfo")) {
            objJ0 = null;
        }
        if (objJ0 == null) {
            return 1.0f;
        }
        Class clsE = x.E("android.content.res.CompatibilityInfo");
        if (clsE != null) {
            try {
                field = clsE.getField("applicationScale");
            } catch (NoSuchFieldException unused) {
                Log.w("SeslBaseReflector", "Reflector did not find field = ".concat("applicationScale"));
            }
        }
        if (field == null) {
            return 1.0f;
        }
        if (x.A(objJ0, field) instanceof Integer) {
            return ((Integer) r5).intValue();
        }
        return 1.0f;
    }

    public static final r K(G g5, N3.f fVar, C0837c c0837c, boolean z4, boolean z5, boolean z6) {
        d3.i.e("proto", g5);
        d3.i.e("nameResolver", fVar);
        d3.i.e("typeTable", c0837c);
        C0094p c0094p = k.f2019d;
        d3.i.d("propertySignature", c0094p);
        O3.e eVar = (O3.e) AbstractC0420a.C(g5, c0094p);
        if (eVar == null) {
            return null;
        }
        if (z4) {
            C0087i c0087i = P3.h.f2166a;
            P3.d dVarB = P3.h.b(g5, fVar, c0837c, z6);
            if (dVarB == null) {
                return null;
            }
            return x.z(dVarB);
        }
        if (!z5 || (eVar.f1978d & 2) != 2) {
            return null;
        }
        O3.c cVar = eVar.f;
        d3.i.d("signature.syntheticMethod", cVar);
        return new r(fVar.r(cVar.f1967e).concat(fVar.r(cVar.f)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean N(C0666W c0666w) {
        if (c0666w instanceof InterfaceC0489j) {
            Field fieldF = AbstractC0420a.F(c0666w);
            if (!(fieldF != null ? fieldF.isAccessible() : true)) {
                return false;
            }
            Method methodG = AbstractC0420a.G(c0666w.s());
            if (!(methodG != null ? methodG.isAccessible() : true)) {
                return false;
            }
            Method methodG2 = AbstractC0420a.G(((InterfaceC0489j) c0666w).f());
            if (!(methodG2 != null ? methodG2.isAccessible() : true)) {
                return false;
            }
        } else {
            Field fieldF2 = AbstractC0420a.F(c0666w);
            if (!(fieldF2 != null ? fieldF2.isAccessible() : true)) {
                return false;
            }
            Method methodG3 = AbstractC0420a.G(c0666w.s());
            if (!(methodG3 != null ? methodG3.isAccessible() : true)) {
                return false;
            }
        }
        return true;
    }

    public static boolean O(int i5, Rect rect, Rect rect2) {
        if (i5 == 17) {
            int i6 = rect.right;
            int i7 = rect2.right;
            return (i6 > i7 || rect.left >= i7) && rect.left > rect2.left;
        }
        if (i5 == 33) {
            int i8 = rect.bottom;
            int i9 = rect2.bottom;
            return (i8 > i9 || rect.top >= i9) && rect.top > rect2.top;
        }
        if (i5 == 66) {
            int i10 = rect.left;
            int i11 = rect2.left;
            return (i10 < i11 || rect.right <= i11) && rect.right < rect2.right;
        }
        if (i5 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i12 = rect.top;
        int i13 = rect2.top;
        return (i12 < i13 || rect.bottom <= i13) && rect.bottom < rect2.bottom;
    }

    public static boolean P(int i5) {
        boolean z4;
        if (i5 != 0) {
            ThreadLocal threadLocal = B.a.f180a;
            double[] dArr = (double[]) threadLocal.get();
            if (dArr == null) {
                dArr = new double[3];
                threadLocal.set(dArr);
            }
            int iRed = Color.red(i5);
            int iGreen = Color.green(i5);
            int iBlue = Color.blue(i5);
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outXyz must have a length of 3.");
            }
            double d2 = iRed / 255.0d;
            double dPow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d5 = iGreen / 255.0d;
            double dPow2 = d5 < 0.04045d ? d5 / 12.92d : Math.pow((d5 + 0.055d) / 1.055d, 2.4d);
            double d6 = iBlue / 255.0d;
            double dPow3 = d6 < 0.04045d ? d6 / 12.92d : Math.pow((d6 + 0.055d) / 1.055d, 2.4d);
            z4 = false;
            dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * 100.0d;
            double d7 = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * 100.0d;
            dArr[1] = d7;
            dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * 100.0d;
            if (d7 / 100.0d > 0.5d) {
                return true;
            }
        } else {
            z4 = false;
        }
        return z4;
    }

    public static boolean R(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean S(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.isLightTheme, typedValue, true);
        return typedValue.data != 0;
    }

    public static boolean V(Bundle bundle) {
        if (bundle.getString("serviceId", "").isEmpty()) {
            AbstractC0420a.r0("Service ID has to be set");
            return false;
        }
        if (bundle.getString("serviceVersion", "").isEmpty()) {
            AbstractC0420a.r0("No service version");
            return false;
        }
        if (bundle.getString("sdkVersion", "").isEmpty()) {
            AbstractC0420a.r0("No SDK version");
            return false;
        }
        if (bundle.getString("sdkType", "").isEmpty()) {
            AbstractC0420a.r0("No SDK type");
            return false;
        }
        if (bundle.getString("serviceAgreeType", "").isEmpty()) {
            AbstractC0420a.r0("You have to agree to terms and conditions");
            return false;
        }
        String string = bundle.getString("serviceAgreeType", "");
        AbstractC0420a.M("Agreement value: " + string);
        if (!IDMDmUICInterface.IDM_UIC_OPTION_IT_D.equals(string) && !"S".equals(string)) {
            AbstractC0420a.r0("Undefined agreement: " + string);
            return false;
        }
        if (!IDMDmUICInterface.IDM_UIC_OPTION_IT_D.equals(string) || bundle.getString(Preferences.PREFS_KEY_DID, "").isEmpty()) {
            return true;
        }
        AbstractC0420a.r0("You can't use setDeviceId API if you used setAgree as Diagnostic agreement");
        return false;
    }

    public static int W(int i5, float f, int i6) {
        return X(i5, B.a.c(i6, Math.round(Color.alpha(i6) * f)));
    }

    public static int X(int i5, int i6) {
        ThreadLocal threadLocal = B.a.f180a;
        int iAlpha = Color.alpha(i5);
        int iAlpha2 = Color.alpha(i6);
        int i7 = 255 - (((255 - iAlpha2) * (255 - iAlpha)) / CustomDeviceManager.CALL_SCREEN_ALL);
        return Color.argb(i7, B.a.b(Color.red(i6), iAlpha2, Color.red(i5), iAlpha, i7), B.a.b(Color.green(i6), iAlpha2, Color.green(i5), iAlpha, i7), B.a.b(Color.blue(i6), iAlpha2, Color.blue(i5), iAlpha, i7));
    }

    public static void Y(Bundle bundle, String str) {
        try {
            g.d();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String string = bundle.getString("google.c.a.c_id");
            if (string != null) {
                bundle2.putString("_nmid", string);
            }
            String string2 = bundle.getString("google.c.a.c_l");
            if (string2 != null) {
                bundle2.putString("_nmn", string2);
            }
            String string3 = bundle.getString("google.c.a.m_l");
            if (!TextUtils.isEmpty(string3)) {
                bundle2.putString("label", string3);
            }
            String string4 = bundle.getString("google.c.a.m_c");
            if (!TextUtils.isEmpty(string4)) {
                bundle2.putString("message_channel", string4);
            }
            String string5 = bundle.getString("from");
            if (string5 == null || !string5.startsWith("/topics/")) {
                string5 = null;
            }
            if (string5 != null) {
                bundle2.putString("_nt", string5);
            }
            String string6 = bundle.getString("google.c.a.ts");
            if (string6 != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(string6));
                } catch (NumberFormatException e5) {
                    Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e5);
                }
            }
            String string7 = bundle.containsKey("google.c.a.udt") ? bundle.getString("google.c.a.udt") : null;
            if (string7 != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(string7));
                } catch (NumberFormatException e6) {
                    Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e6);
                }
            }
            String str2 = true != com.google.firebase.messaging.g.h(bundle) ? "data" : "display";
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", str2);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String string8 = bundle2.toString();
                StringBuilder sb = new StringBuilder(string8.length() + str.length() + 37);
                sb.append("Logging to scion event=");
                sb.append(str);
                sb.append(" scionPayload=");
                sb.append(string8);
                Log.d("FirebaseMessaging", sb.toString());
            }
            B.f.F(g.d().b(X1.a.class));
            Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
        } catch (IllegalStateException unused) {
            Log.e("FirebaseMessaging", "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    public static int Z(int i5, Rect rect, Rect rect2) {
        int i6;
        int i7;
        if (i5 == 17) {
            i6 = rect.left;
            i7 = rect2.right;
        } else if (i5 == 33) {
            i6 = rect.top;
            i7 = rect2.bottom;
        } else if (i5 == 66) {
            i6 = rect2.left;
            i7 = rect.right;
        } else {
            if (i5 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i6 = rect2.top;
            i7 = rect.bottom;
        }
        return Math.max(0, i6 - i7);
    }

    public static /* synthetic */ void a(int i5) {
        Object[] objArr = new Object[3];
        if (i5 == 1 || i5 == 2) {
            objArr[0] = "companionObject";
        } else if (i5 != 3) {
            objArr[0] = "propertyDescriptor";
        } else {
            objArr[0] = "memberDescriptor";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil";
        if (i5 == 1) {
            objArr[2] = "isClassCompanionObjectWithBackingFieldsInOuter";
        } else if (i5 == 2) {
            objArr[2] = "isMappedIntrinsicCompanionObject";
        } else if (i5 != 3) {
            objArr[2] = "isPropertyWithBackingFieldInOuterClass";
        } else {
            objArr[2] = "hasJvmFieldAnnotation";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static final int a0(EnumC0076z enumC0076z) {
        int i5 = enumC0076z == null ? -1 : v.f6578a[enumC0076z.ordinal()];
        if (i5 == 1) {
            return 1;
        }
        int i6 = 2;
        if (i5 != 2) {
            i6 = 3;
            if (i5 != 3) {
                i6 = 4;
                if (i5 != 4) {
                    return 1;
                }
            }
        }
        return i6;
    }

    public static int b(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        int visibility = view.getVisibility();
        if (visibility == 0) {
            return 2;
        }
        if (visibility == 4) {
            return 4;
        }
        if (visibility == 8) {
            return 3;
        }
        throw new IllegalArgumentException(B.f.t(visibility, "Unknown visibility "));
    }

    public static int b0(int i5, Rect rect, Rect rect2) {
        if (i5 != 17) {
            if (i5 != 33) {
                if (i5 != 66) {
                    if (i5 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(int i5, Rect rect, Rect rect2, Rect rect3) {
        int i6;
        int i7;
        boolean zD = d(i5, rect, rect2);
        if (d(i5, rect, rect3) || !zD) {
            return false;
        }
        if (i5 != 17) {
            if (i5 != 33) {
                if (i5 != 66) {
                    if (i5 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    if (rect.bottom <= rect3.top) {
                        if (i5 != 17 && i5 != 66) {
                            int iZ = Z(i5, rect, rect2);
                            if (i5 == 17) {
                                i6 = rect.left;
                                i7 = rect3.left;
                            } else if (i5 == 33) {
                                i6 = rect.top;
                                i7 = rect3.top;
                            } else if (i5 == 66) {
                                i6 = rect3.right;
                                i7 = rect.right;
                            } else {
                                if (i5 != 130) {
                                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                                }
                                i6 = rect3.bottom;
                                i7 = rect.bottom;
                            }
                            return iZ < Math.max(1, i6 - i7);
                        }
                    }
                } else if (rect.right <= rect3.left) {
                }
            } else if (rect.top >= rect3.bottom) {
            }
        } else if (rect.left >= rect3.right) {
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c0(Context context, String str, int i5, String str2, String str3, int i6, List list, long j3) {
        int i7;
        float f;
        List list2 = list;
        if (f2812a == null) {
            f2812a = Boolean.FALSE;
        }
        if (f2812a.booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                String strValueOf = String.valueOf(str);
                Log.e("WakeLockTracker", strValueOf.length() != 0 ? "missing wakeLock key. ".concat(strValueOf) : new String("missing wakeLock key. "));
                return;
            }
            if (7 == i5 || 8 == i5 || 10 == i5 || 11 == i5) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (list2 != null && list.size() == 1 && "com.google.android.gms".equals(list2.get(0))) {
                    list2 = null;
                }
                List list3 = list2;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                IntentFilter intentFilter = h1.d.f6999a;
                if (context == null || context.getApplicationContext() == null) {
                    i7 = -1;
                } else {
                    Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, h1.d.f6999a);
                    int i8 = (7 & (intentRegisterReceiver == null ? 0 : intentRegisterReceiver.getIntExtra("plugged", 0))) == 0 ? 0 : 1;
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    if (powerManager != null) {
                        i7 = (powerManager.isInteractive() ? 2 : 0) | i8;
                    }
                }
                String packageName = context.getPackageName();
                String str4 = "com.google.android.gms".equals(packageName) ? null : packageName;
                synchronized (h1.d.class) {
                    if (SystemClock.elapsedRealtime() - h1.d.f7000b >= 60000 || Float.isNaN(h1.d.f7001c)) {
                        if (context.getApplicationContext().registerReceiver(null, h1.d.f6999a) != null) {
                            h1.d.f7001c = r6.getIntExtra("level", -1) / r6.getIntExtra("scale", -1);
                        }
                        h1.d.f7000b = SystemClock.elapsedRealtime();
                        f = h1.d.f7001c;
                    } else {
                        f = h1.d.f7001c;
                    }
                }
                try {
                    context.startService(new Intent().setComponent(g1.b.f6917a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(2, jCurrentTimeMillis, i5, str2, i6, list3, str, jElapsedRealtime, i7, str3, str4, f, j3, null, false)));
                } catch (Exception e5) {
                    Log.wtf("WakeLockTracker", e5);
                }
            }
        }
    }

    public static boolean d(int i5, Rect rect, Rect rect2) {
        if (i5 != 17) {
            if (i5 != 33) {
                if (i5 != 66) {
                    if (i5 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static final String d0(Q3.f fVar) {
        d3.i.e("<this>", fVar);
        String strB = fVar.b();
        d3.i.d("asString()", strB);
        if (!m.f2692a.contains(strB)) {
            for (int i5 = 0; i5 < strB.length(); i5++) {
                char cCharAt = strB.charAt(i5);
                if (Character.isLetterOrDigit(cCharAt) || cCharAt == '_') {
                }
            }
            String strB2 = fVar.b();
            d3.i.d("asString()", strB2);
            return strB2;
        }
        StringBuilder sb = new StringBuilder();
        String strB3 = fVar.b();
        d3.i.d("asString()", strB3);
        sb.append("`".concat(strB3));
        sb.append('`');
        return sb.toString();
    }

    public static final String e0(List list) {
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Q3.f fVar = (Q3.f) it.next();
            if (sb.length() > 0) {
                sb.append(IDMMoInterface.IDM_MO_ROOT_PATH);
            }
            sb.append(d0(fVar));
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public static final String f0(String str, String str2, String str3, String str4, String str5) {
        d3.i.e("lowerRendered", str);
        d3.i.e("lowerPrefix", str2);
        d3.i.e("upperRendered", str3);
        d3.i.e("upperPrefix", str4);
        d3.i.e("foldedPrefix", str5);
        if (!s4.h.s(str, str2) || !s4.h.s(str3, str4)) {
            return null;
        }
        String strSubstring = str.substring(str2.length());
        d3.i.d("this as java.lang.String).substring(startIndex)", strSubstring);
        String strSubstring2 = str3.substring(str4.length());
        d3.i.d("this as java.lang.String).substring(startIndex)", strSubstring2);
        String strConcat = str5.concat(strSubstring);
        if (d3.i.a(strSubstring, strSubstring2)) {
            return strConcat;
        }
        if (!m0(strSubstring, strSubstring2)) {
            return null;
        }
        return strConcat + '!';
    }

    public static final D3.c g0(D3.e eVar, H3.b bVar) {
        d3.i.e("<this>", eVar);
        d3.i.e("annotationsOwner", bVar);
        return new D3.c(eVar, bVar, false);
    }

    public static void h0(Drawable drawable, int i5) {
        C.a.g(drawable, i5);
    }

    public static boolean i(B.g[] gVarArr, B.g[] gVarArr2) {
        if (gVarArr == null || gVarArr2 == null || gVarArr.length != gVarArr2.length) {
            return false;
        }
        for (int i5 = 0; i5 < gVarArr.length; i5++) {
            B.g gVar = gVarArr[i5];
            char c2 = gVar.f187a;
            B.g gVar2 = gVarArr2[i5];
            if (c2 != gVar2.f187a || gVar.f188b.length != gVar2.f188b.length) {
                return false;
            }
        }
        return true;
    }

    public static void i0(Drawable drawable, ColorStateList colorStateList) {
        C.a.h(drawable, colorStateList);
    }

    public static void j(m3.e eVar, Object[] objArr) {
        d3.i.e("args", objArr);
        if (Z0.j.I(eVar) == objArr.length) {
            return;
        }
        throw new IllegalArgumentException("Callable expects " + Z0.j.I(eVar) + " arguments, but " + objArr.length + " were provided.");
    }

    public static void j0(Drawable drawable, PorterDuff.Mode mode) {
        C.a.i(drawable, mode);
    }

    public static final void k(TextView textView, int i5, int i6) {
        d3.i.e("<this>", textView);
        B.f.x(i6, "maxFontScale");
        float f = textView.getResources().getConfiguration().fontScale;
        float fK = B.f.k(i6);
        if (f > fK) {
            f = fK;
        }
        textView.setTextSize(0, textView.getResources().getDimensionPixelSize(i5) * f);
    }

    public static void l(int i5, int i6, int i7) {
        if (i5 < 0 || i6 > i7) {
            throw new IndexOutOfBoundsException("fromIndex: " + i5 + ", toIndex: " + i6 + ", size: " + i7);
        }
        if (i5 <= i6) {
            return;
        }
        throw new IllegalArgumentException("fromIndex: " + i5 + " > toIndex: " + i6);
    }

    public static boolean l0(Intent intent) {
        Bundle extras;
        if (intent == null || FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction()) || (extras = intent.getExtras()) == null) {
            return false;
        }
        return "1".equals(extras.getString("google.c.a.e"));
    }

    public static final void m(Closeable closeable, Throwable th) {
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            Z0.j.i(th, th2);
        }
    }

    public static final boolean m0(String str, String str2) {
        d3.i.e("lower", str);
        d3.i.e("upper", str2);
        if (!d3.i.a(str, s4.h.r(str2, "?", "")) && (!str2.endsWith("?") || !d3.i.a(str.concat("?"), str2))) {
            if (!d3.i.a("(" + str + ")?", str2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String n(InterfaceC0816s interfaceC0816s, int i5) {
        String strB;
        boolean z4 = (i5 & 1) != 0;
        boolean z5 = (i5 & 2) != 0;
        d3.i.e("<this>", interfaceC0816s);
        StringBuilder sb = new StringBuilder();
        if (z5) {
            if (interfaceC0816s instanceof InterfaceC0806i) {
                strB = "<init>";
            } else {
                strB = ((AbstractC0883o) interfaceC0816s).getName().b();
                d3.i.d("name.asString()", strB);
            }
            sb.append(strB);
        }
        sb.append("(");
        C0890w c0890wD0 = interfaceC0816s.d0();
        q4.c cVar = q4.c.f8696d;
        if (c0890wD0 != null) {
            AbstractC0468v abstractC0468vE = c0890wD0.e();
            d3.i.d("it.type", abstractC0468vE);
            sb.append((l) Z0.j.T(abstractC0468vE, t.f1175k, cVar));
        }
        Iterator it = interfaceC0816s.w0().iterator();
        while (it.hasNext()) {
            AbstractC0468v abstractC0468vE2 = ((V) it.next()).e();
            d3.i.d("parameter.type", abstractC0468vE2);
            sb.append((l) Z0.j.T(abstractC0468vE2, t.f1175k, cVar));
        }
        sb.append(")");
        if (z4) {
            if (interfaceC0816s instanceof InterfaceC0806i) {
                sb.append("V");
            } else {
                AbstractC0468v abstractC0468vN = interfaceC0816s.n();
                d3.i.b(abstractC0468vN);
                Q3.f fVar = AbstractC0732i.f8454e;
                if (AbstractC0732i.D(abstractC0468vN, o3.m.f8509d)) {
                    AbstractC0468v abstractC0468vN2 = interfaceC0816s.n();
                    d3.i.b(abstractC0468vN2);
                    if (X.f(abstractC0468vN2) || (interfaceC0816s instanceof L)) {
                    }
                }
                AbstractC0468v abstractC0468vN3 = interfaceC0816s.n();
                d3.i.b(abstractC0468vN3);
                sb.append((l) Z0.j.T(abstractC0468vN3, t.f1175k, cVar));
            }
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public static final String o(InterfaceC0799b interfaceC0799b) {
        d3.i.e("<this>", interfaceC0799b);
        if (T3.e.p(interfaceC0799b)) {
            return null;
        }
        InterfaceC0807j interfaceC0807jL = interfaceC0799b.l();
        InterfaceC0802e interfaceC0802e = interfaceC0807jL instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807jL : null;
        if (interfaceC0802e == null || interfaceC0802e.getName().f2243d) {
            return null;
        }
        InterfaceC0799b interfaceC0799bA = interfaceC0799b.a();
        N n = interfaceC0799bA instanceof N ? (N) interfaceC0799bA : null;
        if (n == null) {
            return null;
        }
        return L2.b.K(interfaceC0802e, n(n, 3));
    }

    public static final void p(f4.i iVar, LinkedHashSet linkedHashSet, o oVar, boolean z4) {
        for (InterfaceC0807j interfaceC0807j : x.H(oVar, a4.f.f3107o, 2)) {
            if (interfaceC0807j instanceof InterfaceC0802e) {
                InterfaceC0802e interfaceC0802eQ0 = (InterfaceC0802e) interfaceC0807j;
                if (interfaceC0802eQ0.y()) {
                    Q3.f name = interfaceC0802eQ0.getName();
                    d3.i.d("descriptor.name", name);
                    InterfaceC0804g interfaceC0804gC = oVar.c(name, z3.b.f);
                    interfaceC0802eQ0 = interfaceC0804gC instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gC : interfaceC0804gC instanceof f4.t ? ((f4.t) interfaceC0804gC).Q0() : null;
                }
                if (interfaceC0802eQ0 != null) {
                    int i5 = T3.e.f2720a;
                    Iterator it = interfaceC0802eQ0.H().j().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (T3.e.q((AbstractC0468v) it.next(), iVar)) {
                                linkedHashSet.add(interfaceC0802eQ0);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (z4) {
                        o oVarR = interfaceC0802eQ0.R();
                        d3.i.d("refinedDescriptor.unsubstitutedInnerClassesScope", oVarR);
                        p(iVar, linkedHashSet, oVarR, z4);
                    }
                }
            }
        }
    }

    public static float[] q(float[] fArr, int i5) {
        if (i5 < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int iMin = Math.min(i5, length);
        float[] fArr2 = new float[i5];
        System.arraycopy(fArr, 0, fArr2, 0, iMin);
        return fArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0096 A[Catch: NumberFormatException -> 0x00aa, LOOP:3: B:25:0x0068->B:44:0x0096, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:44:0x0096, B:46:0x009c, B:52:0x00b1, B:53:0x00b4), top: B:68:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009c A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:44:0x0096, B:46:0x009c, B:52:0x00b1, B:53:0x00b4), top: B:68:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b1 A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:44:0x0096, B:46:0x009c, B:52:0x00b1, B:53:0x00b4), top: B:68:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0095 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static B.g[] r(String str) {
        int i5;
        String strTrim;
        float[] fArrQ;
        ArrayList arrayList = new ArrayList();
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (i8 < str.length()) {
            while (i8 < str.length()) {
                char cCharAt = str.charAt(i8);
                if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                    if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                        continue;
                    }
                    i8++;
                }
                if (cCharAt == 'e' || cCharAt == 'E') {
                    i8++;
                } else {
                    strTrim = str.substring(i7, i8).trim();
                    if (!strTrim.isEmpty()) {
                        if (strTrim.charAt(i6) == 'z' || strTrim.charAt(i6) == 'Z') {
                            fArrQ = new float[i6];
                        } else {
                            try {
                                float[] fArr = new float[strTrim.length()];
                                int length = strTrim.length();
                                int i9 = i6;
                                int i10 = 1;
                                while (i10 < length) {
                                    int i11 = i6;
                                    int i12 = i11;
                                    int i13 = i12;
                                    int i14 = i13;
                                    for (int i15 = i10; i15 < strTrim.length(); i15++) {
                                        char cCharAt2 = strTrim.charAt(i15);
                                        if (cCharAt2 == ' ') {
                                            i11 = 0;
                                            i13 = 1;
                                            if (i13 != 0) {
                                            }
                                        } else {
                                            if (cCharAt2 != 'E' && cCharAt2 != 'e') {
                                                switch (cCharAt2) {
                                                    case ',':
                                                        break;
                                                    case '-':
                                                        if (i15 != i10 && i11 == 0) {
                                                            i11 = 0;
                                                            i13 = 1;
                                                            i14 = 1;
                                                            break;
                                                        }
                                                        i11 = 0;
                                                        break;
                                                    case '.':
                                                        if (i12 == 0) {
                                                            i11 = 0;
                                                            i12 = 1;
                                                            break;
                                                        } else {
                                                            i11 = 0;
                                                            i13 = 1;
                                                            i14 = 1;
                                                            break;
                                                        }
                                                    default:
                                                        i11 = 0;
                                                        break;
                                                }
                                            } else {
                                                i11 = 1;
                                            }
                                            if (i13 != 0) {
                                            }
                                        }
                                        if (i10 < i15) {
                                            fArr[i9] = Float.parseFloat(strTrim.substring(i10, i15));
                                            i9++;
                                        }
                                        i10 = i14 == 0 ? i15 : i15 + 1;
                                        i6 = 0;
                                    }
                                    if (i10 < i15) {
                                    }
                                    if (i14 == 0) {
                                    }
                                    i6 = 0;
                                }
                                fArrQ = q(fArr, i9);
                                i6 = 0;
                            } catch (NumberFormatException e5) {
                                throw new RuntimeException(B.f.v("error in parsing \"", strTrim, "\""), e5);
                            }
                        }
                        arrayList.add(new B.g(strTrim.charAt(i6), fArrQ));
                    }
                    i7 = i8;
                    i8++;
                    i6 = 0;
                }
            }
            strTrim = str.substring(i7, i8).trim();
            if (!strTrim.isEmpty()) {
            }
            i7 = i8;
            i8++;
            i6 = 0;
        }
        if (i8 - i7 != 1 || i7 >= str.length()) {
            i5 = 0;
        } else {
            i5 = 0;
            arrayList.add(new B.g(str.charAt(i7), new float[0]));
        }
        return (B.g[]) arrayList.toArray(new B.g[i5]);
    }

    public static Path s(String str) {
        Path path = new Path();
        try {
            B.g.b(r(str), path);
            return path;
        } catch (RuntimeException e5) {
            throw new RuntimeException("Error in parsing ".concat(str), e5);
        }
    }

    public static void t(String str, String str2, Object obj) {
        Log.d("TransportRuntime.".concat(str), String.format(str2, obj));
    }

    public static final String u(J j3) {
        StringBuilder sb = new StringBuilder();
        v("type: " + j3, sb);
        v("hashCode: " + j3.hashCode(), sb);
        v("javaClass: " + j3.getClass().getCanonicalName(), sb);
        for (InterfaceC0807j interfaceC0807jI = j3.i(); interfaceC0807jI != null; interfaceC0807jI = interfaceC0807jI.l()) {
            v("fqName: ".concat(S3.g.f2622c.w(interfaceC0807jI)), sb);
            v("javaClass: " + interfaceC0807jI.getClass().getCanonicalName(), sb);
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public static final void v(String str, StringBuilder sb) {
        d3.i.e("<this>", str);
        sb.append(str);
        sb.append('\n');
    }

    public static B.g[] w(B.g[] gVarArr) {
        B.g[] gVarArr2 = new B.g[gVarArr.length];
        for (int i5 = 0; i5 < gVarArr.length; i5++) {
            gVarArr2[i5] = new B.g(gVarArr[i5]);
        }
        return gVarArr2;
    }

    public static final p x(f0 f0Var) {
        switch (f0Var == null ? -1 : v.f6579b[f0Var.ordinal()]) {
            case 1:
                p pVar = AbstractC0811n.f8812d;
                d3.i.d(PeripheralConstants.ConnectivityType.INTERNAL, pVar);
                return pVar;
            case 2:
                p pVar2 = AbstractC0811n.f8809a;
                d3.i.d("PRIVATE", pVar2);
                return pVar2;
            case 3:
                p pVar3 = AbstractC0811n.f8810b;
                d3.i.d("PRIVATE_TO_THIS", pVar3);
                return pVar3;
            case 4:
                p pVar4 = AbstractC0811n.f8811c;
                d3.i.d("PROTECTED", pVar4);
                return pVar4;
            case 5:
                p pVar5 = AbstractC0811n.f8813e;
                d3.i.d("PUBLIC", pVar5);
                return pVar5;
            case 6:
                p pVar6 = AbstractC0811n.f;
                d3.i.d("LOCAL", pVar6);
                return pVar6;
            default:
                p pVar7 = AbstractC0811n.f8809a;
                d3.i.d("PRIVATE", pVar7);
                return pVar7;
        }
    }

    public static int y(int i5, View view) {
        Context context = view.getContext();
        TypedValue typedValueG = L2.b.G(view.getContext(), i5, view.getClass().getCanonicalName());
        int i6 = typedValueG.resourceId;
        return i6 != 0 ? AbstractC0934b.a(context, i6) : typedValueG.data;
    }

    public static int z(Context context, int i5, int i6) {
        Integer numValueOf;
        TypedValue typedValueE = L2.b.E(context, i5);
        if (typedValueE != null) {
            int i7 = typedValueE.resourceId;
            numValueOf = Integer.valueOf(i7 != 0 ? AbstractC0934b.a(context, i7) : typedValueE.data);
        } else {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : i6;
    }

    public abstract int D();

    public abstract int F();

    public abstract int G();

    public abstract int H();

    public abstract int I(View view);

    public abstract int J(CoordinatorLayout coordinatorLayout);

    public abstract int M();

    public abstract boolean Q(float f);

    public abstract boolean T(View view);

    public abstract boolean U(float f, float f5);

    public a1.b e(Context context, Looper looper, J3.c cVar, InterfaceC0104a interfaceC0104a, a1.e eVar, a1.f fVar) {
        return f(context, looper, cVar, interfaceC0104a, eVar, fVar);
    }

    public a1.b f(Context context, Looper looper, J3.c cVar, InterfaceC0104a interfaceC0104a, a1.e eVar, a1.f fVar) {
        throw new UnsupportedOperationException("buildClient must be implemented");
    }

    public abstract int g(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float h(int i5);

    public abstract boolean k0(View view, float f);

    public abstract void n0(ViewGroup.MarginLayoutParams marginLayoutParams, int i5, int i6);
}

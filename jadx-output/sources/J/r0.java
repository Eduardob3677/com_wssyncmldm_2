package J;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.Choreographer;
import android.view.KeyEvent;
import androidx.core.graphics.drawable.IconCompat;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.a5;
import com.google.firebase.messaging.AbstractC0380a;
import com.google.firebase.messaging.FirebaseMessaging;
import com.samsung.android.knox.ex.KnoxContract;
import f1.AbstractC0420a;
import h3.C0447c;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import k.C0570P;
import k.C0622s;
import org.json.JSONArray;
import org.json.JSONException;
import p0.AbstractC0739a;
import r2.C0772e;
import r3.InterfaceC0805h;
import s.C0827d;
import s2.C0837c;
import t.C0853b;
import z.AbstractC0934b;
import z.AbstractC0936d;

/* loaded from: classes.dex */
public final class r0 implements u1.c, u1.g {
    public static r0 f;

    /* renamed from: c, reason: collision with root package name */
    public Object f1006c;

    /* renamed from: d, reason: collision with root package name */
    public Object f1007d;

    /* renamed from: e, reason: collision with root package name */
    public Object f1008e;

    public /* synthetic */ r0(Object obj, Object obj2) {
        this.f1006c = obj;
        this.f1007d = obj2;
    }

    public static boolean c(Editable editable, KeyEvent keyEvent, boolean z4) {
        androidx.emoji2.text.t[] tVarArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (tVarArr = (androidx.emoji2.text.t[]) editable.getSpans(selectionStart, selectionEnd, androidx.emoji2.text.t.class)) != null && tVarArr.length > 0) {
            for (androidx.emoji2.text.t tVar : tVarArr) {
                int spanStart = editable.getSpanStart(tVar);
                int spanEnd = editable.getSpanEnd(tVar);
                if ((z4 && spanStart == selectionStart) || ((!z4 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static r0 m(Context context, AttributeSet attributeSet, int[] iArr, int i5, int i6) {
        return new r0(context, context.obtainStyledAttributes(attributeSet, iArr, i5, i6));
    }

    @Override // u1.g
    public u1.n a(Object obj) {
        FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f1006c;
        String str = (String) this.f1007d;
        com.google.firebase.messaging.r rVar = (com.google.firebase.messaging.r) this.f1008e;
        String str2 = (String) obj;
        com.google.firebase.messaging.g gVarD = FirebaseMessaging.d(firebaseMessaging.f6217b);
        W1.g gVar = firebaseMessaging.f6216a;
        gVar.a();
        String strF = "[DEFAULT]".equals(gVar.f2824b) ? "" : gVar.f();
        String strA = firebaseMessaging.f6221g.a();
        synchronized (gVarD) {
            String strA2 = com.google.firebase.messaging.r.a(str2, strA, System.currentTimeMillis());
            if (strA2 != null) {
                SharedPreferences.Editor editorEdit = ((SharedPreferences) gVarD.f6238d).edit();
                editorEdit.putString(com.google.firebase.messaging.g.b(strF, str), strA2);
                editorEdit.commit();
            }
        }
        if (rVar == null || !str2.equals(rVar.f6264a)) {
            W1.g gVar2 = firebaseMessaging.f6216a;
            gVar2.a();
            if ("[DEFAULT]".equals(gVar2.f2824b)) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    gVar2.a();
                    String strValueOf = String.valueOf(gVar2.f2824b);
                    Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Invoking onNewToken for app: ".concat(strValueOf) : new String("Invoking onNewToken for app: "));
                }
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", str2);
                new com.google.firebase.messaging.g(firebaseMessaging.f6217b, 0).j(intent);
            }
        }
        return AbstractC0739a.j(str2);
    }

    public L0.b b() {
        String strConcat = ((String) this.f1006c) == null ? " backendName" : "";
        if (((I0.c) this.f1008e) == null) {
            strConcat = strConcat.concat(" priority");
        }
        if (strConcat.isEmpty()) {
            return new L0.b((String) this.f1006c, (byte[]) this.f1007d, (I0.c) this.f1008e);
        }
        throw new IllegalStateException("Missing required properties:".concat(strConcat));
    }

    public androidx.lifecycle.Y d(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return e(cls, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public androidx.lifecycle.Y e(Class cls, String str) {
        androidx.lifecycle.Y yA;
        d3.i.e(KnoxContract.KEY, str);
        androidx.lifecycle.c0 c0Var = (androidx.lifecycle.c0) this.f1006c;
        c0Var.getClass();
        LinkedHashMap linkedHashMap = c0Var.f4054a;
        androidx.lifecycle.Y y3 = (androidx.lifecycle.Y) linkedHashMap.get(str);
        boolean zIsInstance = cls.isInstance(y3);
        androidx.lifecycle.b0 b0Var = (androidx.lifecycle.b0) this.f1007d;
        if (!zIsInstance) {
            b0.c cVar = new b0.c((b0.b) this.f1008e);
            cVar.f5052a.put(androidx.lifecycle.Z.f4047d, str);
            try {
                yA = b0Var.e(cls, cVar);
            } catch (AbstractMethodError unused) {
                yA = b0Var.a(cls);
            }
            d3.i.e("viewModel", yA);
            androidx.lifecycle.Y y4 = (androidx.lifecycle.Y) linkedHashMap.put(str, yA);
            if (y4 != null) {
                y4.onCleared();
            }
            return yA;
        }
        androidx.lifecycle.V v4 = b0Var instanceof androidx.lifecycle.V ? (androidx.lifecycle.V) b0Var : null;
        if (v4 != null) {
            d3.i.b(y3);
            androidx.lifecycle.r rVar = v4.f;
            if (rVar != null) {
                x0.d dVar = v4.f4042g;
                d3.i.b(dVar);
                androidx.lifecycle.S.a(y3, dVar, rVar);
            }
        }
        d3.i.c("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get", y3);
        return y3;
    }

    public ColorStateList f(int i5) {
        int resourceId;
        ColorStateList colorStateListB;
        TypedArray typedArray = (TypedArray) this.f1007d;
        return (!typedArray.hasValue(i5) || (resourceId = typedArray.getResourceId(i5, 0)) == 0 || (colorStateListB = AbstractC0936d.b((Context) this.f1006c, resourceId)) == null) ? typedArray.getColorStateList(i5) : colorStateListB;
    }

    public Drawable g(int i5) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.f1007d;
        return (!typedArray.hasValue(i5) || (resourceId = typedArray.getResourceId(i5, 0)) == 0) ? typedArray.getDrawable(i5) : AbstractC0420a.A((Context) this.f1006c, resourceId);
    }

    public Drawable h(int i5) {
        int resourceId;
        Drawable drawableD;
        if (!((TypedArray) this.f1007d).hasValue(i5) || (resourceId = ((TypedArray) this.f1007d).getResourceId(i5, 0)) == 0) {
            return null;
        }
        C0622s c0622sA = C0622s.a();
        Context context = (Context) this.f1006c;
        synchronized (c0622sA) {
            drawableD = c0622sA.f7986a.d(context, resourceId, true);
        }
        return drawableD;
    }

    public Typeface i(int i5, int i6, C0570P c0570p) {
        int resourceId = ((TypedArray) this.f1007d).getResourceId(i5, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.f1008e) == null) {
            this.f1008e = new TypedValue();
        }
        TypedValue typedValue = (TypedValue) this.f1008e;
        ThreadLocal threadLocal = A.r.f36a;
        Context context = (Context) this.f1006c;
        if (context.isRestricted()) {
            return null;
        }
        return A.r.c(context, resourceId, typedValue, i6, c0570p, true, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:274:0x01f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0209  */
    /* JADX WARN: Type inference failed for: r0v106, types: [int] */
    /* JADX WARN: Type inference failed for: r0v131 */
    /* JADX WARN: Type inference failed for: r0v184 */
    /* JADX WARN: Type inference failed for: r0v185 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean j() throws JSONException, PackageManager.NameNotFoundException {
        com.google.firebase.messaging.k kVar;
        Bundle bundle;
        int i5;
        int identifier;
        Uri defaultUri;
        Intent launchIntentForPackage;
        PendingIntent activity;
        Integer numValueOf;
        Long lValueOf;
        long[] jArr;
        int[] iArr;
        char c2;
        ?? r0;
        IconCompat iconCompat;
        IconCompat iconCompat2;
        boolean z4;
        String string;
        ApplicationInfo applicationInfo;
        com.google.firebase.messaging.g gVar = (com.google.firebase.messaging.g) this.f1008e;
        if (gVar.c("gcm.n.noui")) {
            return true;
        }
        Context context = (Context) this.f1007d;
        if (!((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            int iMyPid = Process.myPid();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY)).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == iMyPid) {
                        if (next.importance == 100) {
                            return false;
                        }
                    }
                }
            }
        }
        String strG = gVar.g("gcm.n.image");
        if (TextUtils.isEmpty(strG)) {
            kVar = null;
        } else {
            try {
                kVar = new com.google.firebase.messaging.k(new URL(strG));
            } catch (MalformedURLException unused) {
                String strValueOf = String.valueOf(strG);
                Log.w("FirebaseMessaging", strValueOf.length() != 0 ? "Not downloading image, bad URL: ".concat(strValueOf) : new String("Not downloading image, bad URL: "));
            }
        }
        if (kVar != null) {
            com.google.firebase.messaging.j jVar = new com.google.firebase.messaging.j();
            jVar.f6242a = kVar;
            kVar.f6244d = AbstractC0739a.d((Executor) this.f1006c, jVar);
        }
        AtomicInteger atomicInteger = AbstractC0380a.f6223a;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e5) {
            Log.w("FirebaseMessaging", "Couldn't get own application info: ".concat(e5.toString()));
        }
        if (applicationInfo != null) {
            bundle = applicationInfo.metaData;
            if (bundle == null) {
                bundle = Bundle.EMPTY;
            }
        }
        Bundle bundle2 = bundle;
        String packageName = context.getPackageName();
        String strG2 = gVar.g("gcm.n.android_channel_id");
        if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (TextUtils.isEmpty(strG2)) {
                strG2 = bundle2.getString("com.google.firebase.messaging.default_notification_channel_id");
                if (!TextUtils.isEmpty(strG2)) {
                    Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
                } else if (notificationManager.getNotificationChannel(strG2) == null) {
                    Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
                }
                strG2 = "fcm_fallback_notification_channel";
                if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                    int identifier2 = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName());
                    if (identifier2 == 0) {
                        Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                        string = "Misc";
                    } else {
                        string = context.getString(identifier2);
                    }
                    notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", string, 3));
                }
            } else if (notificationManager.getNotificationChannel(strG2) == null) {
                StringBuilder sb = new StringBuilder(String.valueOf(strG2).length() + 122);
                sb.append("Notification Channel requested (");
                sb.append(strG2);
                sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                Log.w("FirebaseMessaging", sb.toString());
                strG2 = bundle2.getString("com.google.firebase.messaging.default_notification_channel_id");
                if (!TextUtils.isEmpty(strG2)) {
                }
                strG2 = "fcm_fallback_notification_channel";
                if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                }
            }
        } else {
            strG2 = null;
        }
        Resources resources = context.getResources();
        PackageManager packageManager = context.getPackageManager();
        y.p pVar = new y.p(context, strG2);
        Notification notification = pVar.f9700s;
        String strF = gVar.f(resources, packageName, "gcm.n.title");
        if (!TextUtils.isEmpty(strF)) {
            pVar.f9688e = y.p.b(strF);
        }
        String strF2 = gVar.f(resources, packageName, "gcm.n.body");
        if (!TextUtils.isEmpty(strF2)) {
            pVar.f = y.p.b(strF2);
            y.n nVar = new y.n();
            nVar.f9683d = y.p.b(strF2);
            pVar.c(nVar);
        }
        String strG3 = gVar.g("gcm.n.icon");
        if (TextUtils.isEmpty(strG3)) {
            i5 = bundle2.getInt("com.google.firebase.messaging.default_notification_icon", 0);
            if (i5 == 0) {
                try {
                    i5 = packageManager.getApplicationInfo(packageName, 0).icon;
                } catch (PackageManager.NameNotFoundException e6) {
                    Log.w("FirebaseMessaging", "Couldn't get own application info: ".concat(e6.toString()));
                }
            }
            identifier = i5 == 0 ? i5 : 17301651;
        } else {
            identifier = resources.getIdentifier(strG3, "drawable", packageName);
            if (identifier == 0 && (identifier = resources.getIdentifier(strG3, "mipmap", packageName)) == 0) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(strG3).length() + 61);
                sb2.append("Icon resource ");
                sb2.append(strG3);
                sb2.append(" not found. Notification will use default icon.");
                Log.w("FirebaseMessaging", sb2.toString());
                i5 = bundle2.getInt("com.google.firebase.messaging.default_notification_icon", 0);
                if (i5 == 0) {
                }
                if (i5 == 0) {
                }
            }
        }
        notification.icon = identifier;
        String strG4 = gVar.g("gcm.n.sound2");
        if (TextUtils.isEmpty(strG4)) {
            strG4 = gVar.g("gcm.n.sound");
        }
        if (TextUtils.isEmpty(strG4)) {
            defaultUri = null;
        } else if ("default".equals(strG4) || resources.getIdentifier(strG4, "raw", packageName) == 0) {
            defaultUri = RingtoneManager.getDefaultUri(2);
        } else {
            StringBuilder sb3 = new StringBuilder(String.valueOf(packageName).length() + 24 + String.valueOf(strG4).length());
            sb3.append("android.resource://");
            sb3.append(packageName);
            sb3.append("/raw/");
            sb3.append(strG4);
            defaultUri = Uri.parse(sb3.toString());
        }
        if (defaultUri != null) {
            notification.sound = defaultUri;
            notification.audioStreamType = -1;
            notification.audioAttributes = y.o.a(y.o.e(y.o.c(y.o.b(), 4), 5));
        }
        String strG5 = gVar.g("gcm.n.click_action");
        if (TextUtils.isEmpty(strG5)) {
            String strG6 = gVar.g("gcm.n.link_android");
            if (TextUtils.isEmpty(strG6)) {
                strG6 = gVar.g("gcm.n.link");
            }
            Uri uri = !TextUtils.isEmpty(strG6) ? Uri.parse(strG6) : null;
            if (uri != null) {
                launchIntentForPackage = new Intent("android.intent.action.VIEW");
                launchIntentForPackage.setPackage(packageName);
                launchIntentForPackage.setData(uri);
            } else {
                launchIntentForPackage = packageManager.getLaunchIntentForPackage(packageName);
                if (launchIntentForPackage == null) {
                    Log.w("FirebaseMessaging", "No activity found to launch app");
                }
            }
        } else {
            launchIntentForPackage = new Intent(strG5);
            launchIntentForPackage.setPackage(packageName);
            launchIntentForPackage.setFlags(268435456);
        }
        AtomicInteger atomicInteger2 = AbstractC0380a.f6223a;
        if (launchIntentForPackage == null) {
            activity = null;
        } else {
            launchIntentForPackage.addFlags(67108864);
            Bundle bundle3 = (Bundle) gVar.f6238d;
            Bundle bundle4 = new Bundle(bundle3);
            for (String str : bundle3.keySet()) {
                if (str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                    bundle4.remove(str);
                }
            }
            launchIntentForPackage.putExtras(bundle4);
            if (gVar.c("google.c.a.e")) {
                launchIntentForPackage.putExtra("gcm.n.analytics_data", gVar.i());
            }
            activity = PendingIntent.getActivity(context, atomicInteger2.incrementAndGet(), launchIntentForPackage, 1140850688);
        }
        pVar.f9689g = activity;
        PendingIntent broadcast = !gVar.c("google.c.a.e") ? null : PendingIntent.getBroadcast(context, atomicInteger2.incrementAndGet(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(gVar.i())), 1140850688);
        if (broadcast != null) {
            notification.deleteIntent = broadcast;
        }
        String strG7 = gVar.g("gcm.n.color");
        if (TextUtils.isEmpty(strG7)) {
            int i6 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
            if (i6 != 0) {
                try {
                    numValueOf = Integer.valueOf(AbstractC0934b.a(context, i6));
                } catch (Resources.NotFoundException unused2) {
                    Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
                }
            } else {
                numValueOf = null;
            }
        } else {
            try {
                numValueOf = Integer.valueOf(Color.parseColor(strG7));
            } catch (IllegalArgumentException unused3) {
                StringBuilder sb4 = new StringBuilder(String.valueOf(strG7).length() + 56);
                sb4.append("Color is invalid: ");
                sb4.append(strG7);
                sb4.append(". Notification will use default color.");
                Log.w("FirebaseMessaging", sb4.toString());
            }
        }
        if (numValueOf != null) {
            pVar.f9696o = numValueOf.intValue();
        }
        if (!gVar.c("gcm.n.sticky")) {
            notification.flags |= 16;
        } else {
            notification.flags &= -17;
        }
        pVar.f9695m = gVar.c("gcm.n.local_only");
        String strG8 = gVar.g("gcm.n.ticker");
        if (strG8 != null) {
            notification.tickerText = y.p.b(strG8);
        }
        Integer numD = gVar.d("gcm.n.notification_priority");
        if (numD == null) {
            numD = null;
        } else if (numD.intValue() < -2 || numD.intValue() > 2) {
            String string2 = numD.toString();
            StringBuilder sb5 = new StringBuilder(string2.length() + 72);
            sb5.append("notificationPriority is invalid ");
            sb5.append(string2);
            sb5.append(". Skipping setting notificationPriority.");
            Log.w("FirebaseMessaging", sb5.toString());
            numD = null;
        }
        if (numD != null) {
            pVar.f9692j = numD.intValue();
        }
        Integer numD2 = gVar.d("gcm.n.visibility");
        if (numD2 == null) {
            numD2 = null;
        } else if (numD2.intValue() < -1 || numD2.intValue() > 1) {
            String string3 = numD2.toString();
            StringBuilder sb6 = new StringBuilder(string3.length() + 53);
            sb6.append("visibility is invalid: ");
            sb6.append(string3);
            sb6.append(". Skipping setting visibility.");
            Log.w("NotificationParams", sb6.toString());
            numD2 = null;
        }
        if (numD2 != null) {
            pVar.f9697p = numD2.intValue();
        }
        Integer numD3 = gVar.d("gcm.n.notification_count");
        if (numD3 == null) {
            numD3 = null;
        } else if (numD3.intValue() < 0) {
            String string4 = numD3.toString();
            StringBuilder sb7 = new StringBuilder(string4.length() + 67);
            sb7.append("notificationCount is invalid: ");
            sb7.append(string4);
            sb7.append(". Skipping setting notificationCount.");
            Log.w("FirebaseMessaging", sb7.toString());
            numD3 = null;
        }
        if (numD3 != null) {
            pVar.f9691i = numD3.intValue();
        }
        String strG9 = gVar.g("gcm.n.event_time");
        if (TextUtils.isEmpty(strG9)) {
            lValueOf = null;
        } else {
            try {
                lValueOf = Long.valueOf(Long.parseLong(strG9));
            } catch (NumberFormatException unused4) {
                String strK = com.google.firebase.messaging.g.k("gcm.n.event_time");
                StringBuilder sb8 = new StringBuilder(String.valueOf(strK).length() + 38 + String.valueOf(strG9).length());
                sb8.append("Couldn't parse value of ");
                sb8.append(strK);
                sb8.append("(");
                sb8.append(strG9);
                sb8.append(") into a long");
                Log.w("NotificationParams", sb8.toString());
            }
        }
        if (lValueOf != null) {
            pVar.f9693k = true;
            notification.when = lValueOf.longValue();
        }
        JSONArray jSONArrayE = gVar.e("gcm.n.vibrate_timings");
        if (jSONArrayE == null) {
            jArr = null;
        } else {
            try {
                if (jSONArrayE.length() <= 1) {
                    throw new JSONException("vibrateTimings have invalid length");
                }
                int length = jSONArrayE.length();
                jArr = new long[length];
                for (int i7 = 0; i7 < length; i7++) {
                    jArr[i7] = jSONArrayE.optLong(i7);
                }
            } catch (NumberFormatException | JSONException unused5) {
                String string5 = jSONArrayE.toString();
                StringBuilder sb9 = new StringBuilder(string5.length() + 74);
                sb9.append("User defined vibrateTimings is invalid: ");
                sb9.append(string5);
                sb9.append(". Skipping setting vibrateTimings.");
                Log.w("NotificationParams", sb9.toString());
            }
        }
        if (jArr != null) {
            notification.vibrate = jArr;
        }
        JSONArray jSONArrayE2 = gVar.e("gcm.n.light_settings");
        if (jSONArrayE2 == null) {
            iArr = null;
        } else {
            iArr = new int[3];
            try {
                if (jSONArrayE2.length() != 3) {
                    throw new JSONException("lightSettings don't have all three fields");
                }
                int color = Color.parseColor(jSONArrayE2.optString(0));
                if (color == -16777216) {
                    throw new IllegalArgumentException("Transparent color is invalid");
                }
                iArr[0] = color;
                iArr[1] = jSONArrayE2.optInt(1);
                iArr[2] = jSONArrayE2.optInt(2);
            } catch (IllegalArgumentException e7) {
                String string6 = jSONArrayE2.toString();
                String message = e7.getMessage();
                StringBuilder sb10 = new StringBuilder(string6.length() + 60 + String.valueOf(message).length());
                sb10.append("LightSettings is invalid: ");
                sb10.append(string6);
                sb10.append(". ");
                sb10.append(message);
                sb10.append(". Skipping setting LightSettings");
                Log.w("NotificationParams", sb10.toString());
            } catch (JSONException unused6) {
                String string7 = jSONArrayE2.toString();
                StringBuilder sb11 = new StringBuilder(string7.length() + 58);
                sb11.append("LightSettings is invalid: ");
                sb11.append(string7);
                sb11.append(". Skipping setting LightSettings");
                Log.w("NotificationParams", sb11.toString());
            }
        }
        if (iArr != null) {
            int i8 = iArr[0];
            int i9 = iArr[1];
            int i10 = iArr[2];
            notification.ledARGB = i8;
            notification.ledOnMS = i9;
            notification.ledOffMS = i10;
            notification.flags = ((i9 == 0 || i10 == 0) ? 0 : 1) | ((-2) & notification.flags);
        }
        boolean zC = gVar.c("gcm.n.default_sound");
        boolean z5 = zC;
        if (gVar.c("gcm.n.default_vibrate_timings")) {
            z5 = (zC ? 1 : 0) | 2;
        }
        if (gVar.c("gcm.n.default_light_settings")) {
            c2 = 4;
            r0 = (z5 ? 1 : 0) | 4;
        } else {
            c2 = 4;
            r0 = z5;
        }
        notification.defaults = r0;
        if ((r0 & c2) != 0) {
            notification.flags |= 1;
        }
        String strG10 = gVar.g("gcm.n.tag");
        if (TextUtils.isEmpty(strG10)) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            StringBuilder sb12 = new StringBuilder(37);
            sb12.append("FCM-Notification:");
            sb12.append(jUptimeMillis);
            strG10 = sb12.toString();
        }
        String str2 = strG10;
        if (kVar != null) {
            try {
                u1.n nVar2 = kVar.f6244d;
                AbstractC0213D.e(nVar2);
                Bitmap bitmap = (Bitmap) AbstractC0739a.b(nVar2, 5L, TimeUnit.SECONDS);
                if (bitmap == null) {
                    iconCompat = null;
                } else {
                    iconCompat = new IconCompat(1);
                    iconCompat.f3609b = bitmap;
                }
                pVar.f9690h = iconCompat;
                y.m mVar = new y.m();
                if (bitmap == null) {
                    iconCompat2 = null;
                    z4 = true;
                } else {
                    z4 = true;
                    iconCompat2 = new IconCompat(1);
                    iconCompat2.f3609b = bitmap;
                }
                mVar.f9681d = iconCompat2;
                mVar.f9682e = null;
                mVar.f = z4;
                pVar.c(mVar);
            } catch (InterruptedException unused7) {
                Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
                kVar.close();
                Thread.currentThread().interrupt();
            } catch (ExecutionException e8) {
                Log.w("FirebaseMessaging", "Failed to download image: ".concat(String.valueOf(e8.getCause())));
            } catch (TimeoutException unused8) {
                Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
                kVar.close();
            }
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 0, pVar.a());
        return true;
    }

    public boolean k(CharSequence charSequence, int i5, int i6, androidx.emoji2.text.m mVar) {
        if (mVar.f3707c == 0) {
            androidx.emoji2.text.g gVar = (androidx.emoji2.text.g) this.f1008e;
            W.a aVarC = mVar.c();
            int iA = aVarC.a(8);
            if (iA != 0) {
                ((ByteBuffer) aVarC.f938d).getShort(iA + aVarC.f935a);
            }
            androidx.emoji2.text.c cVar = (androidx.emoji2.text.c) gVar;
            cVar.getClass();
            ThreadLocal threadLocal = androidx.emoji2.text.c.f3686b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i5 < i6) {
                sb.append(charSequence.charAt(i5));
                i5++;
            }
            TextPaint textPaint = cVar.f3687a;
            String string = sb.toString();
            int i7 = B.e.f186a;
            mVar.f3707c = B.d.a(textPaint, string) ? 2 : 1;
        }
        return mVar.f3707c == 2;
    }

    public boolean l(a5 a5Var, C0827d c0827d, int i5) {
        int[] iArr = c0827d.f8935j0;
        int i6 = iArr[0];
        C0853b c0853b = (C0853b) this.f1007d;
        c0853b.f9077a = i6;
        c0853b.f9078b = iArr[1];
        c0853b.f9079c = c0827d.n();
        c0853b.f9080d = c0827d.k();
        c0853b.f9084i = false;
        c0853b.f9085j = i5;
        boolean z4 = c0853b.f9077a == 3;
        boolean z5 = c0853b.f9078b == 3;
        boolean z6 = z4 && c0827d.f8908Q > 0.0f;
        boolean z7 = z5 && c0827d.f8908Q > 0.0f;
        int[] iArr2 = c0827d.n;
        if (z6 && iArr2[0] == 4) {
            c0853b.f9077a = 1;
        }
        if (z7 && iArr2[1] == 4) {
            c0853b.f9078b = 1;
        }
        a5Var.b(c0827d, c0853b);
        c0827d.H(c0853b.f9081e);
        c0827d.E(c0853b.f);
        c0827d.f8949y = c0853b.f9083h;
        c0827d.B(c0853b.f9082g);
        c0853b.f9085j = 0;
        return c0853b.f9084i;
    }

    public void n() {
        ((TypedArray) this.f1007d).recycle();
    }

    public void o(String str) {
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f1006c = str;
    }

    @Override // u1.c
    public void onComplete(u1.h hVar) {
        Y0.a aVar = (Y0.a) this.f1006c;
        String str = (String) this.f1007d;
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.f1008e;
        synchronized (aVar.f2880a) {
            aVar.f2880a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    public void p(s.e eVar, int i5, int i6) {
        int i7 = eVar.f8913V;
        int i8 = eVar.f8914W;
        eVar.f8913V = 0;
        eVar.f8914W = 0;
        eVar.H(i5);
        eVar.E(i6);
        if (i7 < 0) {
            eVar.f8913V = 0;
        } else {
            eVar.f8913V = i7;
        }
        if (i8 < 0) {
            eVar.f8914W = 0;
        } else {
            eVar.f8914W = i8;
        }
        ((s.e) this.f1008e).O();
    }

    public void q(s.e eVar) {
        ArrayList arrayList = (ArrayList) this.f1006c;
        arrayList.clear();
        int size = eVar.k0.size();
        for (int i5 = 0; i5 < size; i5++) {
            C0827d c0827d = (C0827d) eVar.k0.get(i5);
            int[] iArr = c0827d.f8935j0;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(c0827d);
            }
        }
        eVar.m0.f9089b = true;
    }

    public void r(C0772e c0772e, ByteArrayOutputStream byteArrayOutputStream) {
        Map map = (Map) this.f1006c;
        q1.o oVar = new q1.o(byteArrayOutputStream, map, (Map) this.f1007d, (e2.d) this.f1008e);
        e2.d dVar = (e2.d) map.get(C0772e.class);
        if (dVar == null) {
            throw new e2.b("No encoder for ".concat(String.valueOf(C0772e.class)));
        }
        dVar.a(c0772e, oVar);
    }

    public /* synthetic */ r0(Object obj, Object obj2, Object obj3) {
        this.f1006c = obj;
        this.f1007d = obj2;
        this.f1008e = obj3;
    }

    public r0(C0447c c0447c, Method[] methodArr, Method method) {
        d3.i.e("argumentRange", c0447c);
        this.f1006c = c0447c;
        this.f1007d = methodArr;
        this.f1008e = method;
    }

    public r0(androidx.lifecycle.c0 c0Var, androidx.lifecycle.b0 b0Var, b0.b bVar) {
        d3.i.e("store", c0Var);
        d3.i.e("factory", b0Var);
        d3.i.e("defaultCreationExtras", bVar);
        this.f1006c = c0Var;
        this.f1007d = b0Var;
        this.f1008e = bVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r0(androidx.lifecycle.c0 c0Var, androidx.lifecycle.b0 b0Var) {
        this(c0Var, b0Var, (b0.b) b0.a.f5051b);
        d3.i.e("store", c0Var);
        d3.i.e("factory", b0Var);
    }

    public r0(InterfaceC0805h interfaceC0805h, List list, r0 r0Var) {
        d3.i.e("classifierDescriptor", interfaceC0805h);
        d3.i.e("arguments", list);
        this.f1006c = interfaceC0805h;
        this.f1007d = list;
        this.f1008e = r0Var;
    }

    public r0(C0837c c0837c) {
        this.f1006c = c0837c;
        this.f1007d = Choreographer.getInstance();
        this.f1008e = new V.a(0, this);
    }
}

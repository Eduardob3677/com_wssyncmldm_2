package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import c1.AbstractC0213D;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import p0.AbstractC0739a;
import u1.InterfaceC0863a;
import z.AbstractC0933a;

/* loaded from: classes.dex */
public final class g implements u1.e, InterfaceC0863a, u1.c {

    /* renamed from: e, reason: collision with root package name */
    public static final Object f6236e = new Object();
    public static D f;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6237c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6238d;

    public /* synthetic */ g(int i5) {
        this.f6237c = i5;
    }

    public static u1.n a(Context context, Intent intent) {
        D d2;
        u1.n nVar;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        synchronized (f6236e) {
            try {
                if (f == null) {
                    f = new D(context);
                }
                d2 = f;
            } finally {
            }
        }
        synchronized (d2) {
            try {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
                }
                C c2 = new C(intent);
                ScheduledExecutorService scheduledExecutorService = d2.f6209c;
                q qVar = new q(1);
                qVar.f6262d = c2;
                ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(qVar, 9000L, TimeUnit.MILLISECONDS);
                u1.n nVar2 = c2.f6206b.f9320a;
                g gVar = new g(7);
                gVar.f6238d = scheduledFutureSchedule;
                nVar2.a(scheduledExecutorService, gVar);
                d2.f6210d.add(c2);
                d2.a();
                nVar = c2.f6206b.f9320a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nVar.g(ExecutorC0382c.f6226e, e.f6230d);
    }

    public static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|*");
        return sb.toString();
    }

    public static boolean h(Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString("gcm.n.e".replace("gcm.n.", "gcm.notification.")));
    }

    public static String k(String str) {
        return str.startsWith("gcm.n.") ? str.substring(6) : str;
    }

    @Override // u1.InterfaceC0863a
    public Object H(u1.h hVar) throws IOException {
        Object obj;
        ((J3.d) this.f6238d).getClass();
        u1.n nVar = (u1.n) hVar;
        synchronized (nVar.f9329a) {
            AbstractC0213D.g("Task is not yet complete", nVar.f9331c);
            if (nVar.f9332d) {
                throw new CancellationException("Task is already canceled.");
            }
            if (IOException.class.isInstance(nVar.f)) {
                throw ((Throwable) IOException.class.cast(nVar.f));
            }
            if (nVar.f != null) {
                throw new u1.f(nVar.f);
            }
            obj = nVar.f9333e;
        }
        Bundle bundle = (Bundle) obj;
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null || (string = bundle.getString("unregistered")) != null) {
            return string;
        }
        String string2 = bundle.getString("error");
        if ("RST".equals(string2)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string2 != null) {
            throw new IOException(string2);
        }
        Log.w("FirebaseMessaging", "Unexpected response: ".concat(bundle.toString()), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    @Override // u1.e
    public void L(Object obj) {
        boolean z4;
        x xVar = (x) obj;
        if (!((FirebaseMessaging) this.f6238d).f6220e.b() || xVar.f6291h.a() == null) {
            return;
        }
        synchronized (xVar) {
            z4 = xVar.f6290g;
        }
        if (z4) {
            return;
        }
        xVar.e(0L);
    }

    public boolean c(String str) {
        String strG = g(str);
        return "1".equals(strG) || Boolean.parseBoolean(strG);
    }

    public Integer d(String str) {
        String strG = g(str);
        if (TextUtils.isEmpty(strG)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(strG));
        } catch (NumberFormatException unused) {
            String strK = k(str);
            StringBuilder sb = new StringBuilder(String.valueOf(strK).length() + 38 + String.valueOf(strG).length());
            sb.append("Couldn't parse value of ");
            sb.append(strK);
            sb.append("(");
            sb.append(strG);
            sb.append(") into an int");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    public JSONArray e(String str) {
        String strG = g(str);
        if (TextUtils.isEmpty(strG)) {
            return null;
        }
        try {
            return new JSONArray(strG);
        } catch (JSONException unused) {
            String strK = k(str);
            StringBuilder sb = new StringBuilder(String.valueOf(strK).length() + 50 + String.valueOf(strG).length());
            sb.append("Malformed JSON for key ");
            sb.append(strK);
            sb.append(": ");
            sb.append(strG);
            sb.append(", falling back to default");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    public String f(Resources resources, String str, String str2) {
        String[] strArr;
        String strG = g(str2);
        if (!TextUtils.isEmpty(strG)) {
            return strG;
        }
        String strG2 = g(str2.concat("_loc_key"));
        if (TextUtils.isEmpty(strG2)) {
            return null;
        }
        int identifier = resources.getIdentifier(strG2, "string", str);
        if (identifier == 0) {
            String strK = k(str2.concat("_loc_key"));
            StringBuilder sb = new StringBuilder(String.valueOf(strK).length() + 49 + str2.length());
            sb.append(strK);
            sb.append(" resource not found: ");
            sb.append(str2);
            sb.append(" Default value will be used.");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
        JSONArray jSONArrayE = e(str2.concat("_loc_args"));
        if (jSONArrayE == null) {
            strArr = null;
        } else {
            int length = jSONArrayE.length();
            strArr = new String[length];
            for (int i5 = 0; i5 < length; i5++) {
                strArr[i5] = jSONArrayE.optString(i5);
            }
        }
        if (strArr == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, strArr);
        } catch (MissingFormatArgumentException e5) {
            String strK2 = k(str2);
            String string = Arrays.toString(strArr);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strK2).length() + 58 + String.valueOf(string).length());
            sb2.append("Missing format argument for ");
            sb2.append(strK2);
            sb2.append(": ");
            sb2.append(string);
            sb2.append(" Default value will be used.");
            Log.w("NotificationParams", sb2.toString(), e5);
            return null;
        }
    }

    public String g(String str) {
        Bundle bundle = (Bundle) this.f6238d;
        if (!bundle.containsKey(str) && str.startsWith("gcm.n.")) {
            String strReplace = !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
            if (bundle.containsKey(strReplace)) {
                str = strReplace;
            }
        }
        return bundle.getString(str);
    }

    public Bundle i() {
        Bundle bundle = (Bundle) this.f6238d;
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle.keySet()) {
            if (!str.startsWith("google.c.a.") && !str.equals("from")) {
                bundle2.remove(str);
            }
        }
        return bundle2;
    }

    public u1.n j(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        Context context = (Context) this.f6238d;
        boolean z4 = context.getApplicationInfo().targetSdkVersion >= 26;
        int flags = intent.getFlags() & 268435456;
        if (z4 && flags == 0) {
            return a(context, intent);
        }
        ExecutorC0382c executorC0382c = ExecutorC0382c.f6226e;
        f fVar = new f();
        fVar.f6234a = context;
        fVar.f6235b = intent;
        u1.n nVarD = AbstractC0739a.d(executorC0382c, fVar);
        A3.D d2 = new A3.D(24, false);
        d2.f80d = context;
        d2.f81e = intent;
        return nVarD.h(executorC0382c, d2);
    }

    @Override // u1.c
    public void onComplete(u1.h hVar) {
        switch (this.f6237c) {
            case 6:
                ((C) this.f6238d).f6206b.d(null);
                break;
            default:
                ((ScheduledFuture) this.f6238d).cancel(false);
                break;
        }
    }

    public /* synthetic */ g(Context context, int i5) {
        this.f6237c = i5;
        this.f6238d = context;
    }

    public g(Context context) {
        boolean zIsEmpty;
        this.f6237c = 5;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f6238d = sharedPreferences;
        File file = new File(AbstractC0933a.c(context), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile()) {
                synchronized (this) {
                    zIsEmpty = sharedPreferences.getAll().isEmpty();
                }
                if (zIsEmpty) {
                    return;
                }
                Log.i("FirebaseMessaging", "App restored, clearing state");
                synchronized (this) {
                    sharedPreferences.edit().clear().commit();
                }
            }
        } catch (IOException e5) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String strValueOf = String.valueOf(e5.getMessage());
                Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(strValueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    public g(Bundle bundle) {
        this.f6237c = 4;
        this.f6238d = new Bundle(bundle);
    }
}

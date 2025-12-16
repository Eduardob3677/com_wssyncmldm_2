package com.google.firebase.messaging;

import J.r0;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import i1.ThreadFactoryC0478a;
import java.util.ArrayDeque;
import java.util.Locale;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import l2.C0644c;
import p0.AbstractC0739a;
import r2.C0771d;
import r2.C0772e;
import r2.EnumC0768a;
import r2.EnumC0769b;
import r2.EnumC0770c;

/* loaded from: classes.dex */
public class FirebaseMessagingService extends AbstractServiceC0383d {
    public static final String ACTION_DIRECT_BOOT_REMOTE_INTENT = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT";
    private static final Queue<String> recentlyReceivedMessageIds = new ArrayDeque(10);

    @Override // com.google.firebase.messaging.AbstractServiceC0383d
    public Intent getStartCommandIntent(Intent intent) {
        return (Intent) ((ArrayDeque) p.y().f6260g).poll();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0301 A[Catch: RuntimeException -> 0x0318, TryCatch #0 {RuntimeException -> 0x0318, blocks: (B:189:0x02f0, B:191:0x0301, B:194:0x031a, B:195:0x0329), top: B:218:0x02f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x031a A[Catch: RuntimeException -> 0x0318, TryCatch #0 {RuntimeException -> 0x0318, blocks: (B:189:0x02f0, B:191:0x0301, B:194:0x031a, B:195:0x0329), top: B:218:0x02f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0152  */
    @Override // com.google.firebase.messaging.AbstractServiceC0383d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void handleIntent(Intent intent) throws NumberFormatException {
        char c2;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        boolean z4;
        long j3;
        I0.b bVar;
        Set set;
        String str;
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(action) && !ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
            if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
                onNewToken(intent.getStringExtra("token"));
                return;
            } else {
                String strValueOf = String.valueOf(intent.getAction());
                Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Unknown intent action: ".concat(strValueOf) : new String("Unknown intent action: "));
                return;
            }
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (!TextUtils.isEmpty(stringExtra)) {
            Queue<String> queue = recentlyReceivedMessageIds;
            if (queue.contains(stringExtra)) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String strValueOf2 = String.valueOf(stringExtra);
                    Log.d("FirebaseMessaging", strValueOf2.length() != 0 ? "Received duplicate message: ".concat(strValueOf2) : new String("Received duplicate message: "));
                    return;
                }
                return;
            }
            if (queue.size() >= 10) {
                queue.remove();
            }
            queue.add(stringExtra);
        }
        String stringExtra2 = intent.getStringExtra("message_type");
        if (stringExtra2 == null) {
            stringExtra2 = "gcm";
        }
        int iIntValue = 0;
        switch (stringExtra2.hashCode()) {
            case -2062414158:
                if (!stringExtra2.equals("deleted_messages")) {
                    c2 = 65535;
                    break;
                } else {
                    c2 = 1;
                    break;
                }
            case 102161:
                if (stringExtra2.equals("gcm")) {
                    c2 = 0;
                    break;
                }
                break;
            case 814694033:
                if (stringExtra2.equals("send_error")) {
                    c2 = 3;
                    break;
                }
                break;
            case 814800675:
                if (stringExtra2.equals("send_event")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        if (c2 != 0) {
            if (c2 == 1) {
                onDeletedMessages();
                return;
            }
            if (c2 == 2) {
                onMessageSent(intent.getStringExtra("google.message_id"));
                return;
            }
            if (c2 != 3) {
                Log.w("FirebaseMessaging", stringExtra2.length() != 0 ? "Received message with unknown type: ".concat(stringExtra2) : new String("Received message with unknown type: "));
                return;
            }
            String stringExtra3 = intent.getStringExtra("google.message_id");
            if (stringExtra3 == null) {
                stringExtra3 = intent.getStringExtra("message_id");
            }
            String stringExtra4 = intent.getStringExtra("error");
            W1.h hVar = new W1.h(stringExtra4);
            if (stringExtra4 != null) {
                String lowerCase = stringExtra4.toLowerCase(Locale.US);
                switch (lowerCase.hashCode()) {
                    case -1743242157:
                        str = "service_not_available";
                        break;
                    case -1290953729:
                        str = "toomanymessages";
                        break;
                    case -920906446:
                        str = "invalid_parameters";
                        break;
                    case -617027085:
                        str = "messagetoobig";
                        break;
                    case -95047692:
                        str = "missing_to";
                        break;
                }
                lowerCase.equals(str);
            }
            onSendError(stringExtra3, hVar);
            return;
        }
        if (W1.a.l0(intent)) {
            W1.a.Y(intent.getExtras(), "_nr");
        }
        if (ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction())) {
            z4 = false;
        } else {
            try {
                W1.g.d();
                W1.g gVarD = W1.g.d();
                gVarD.a();
                Context context = gVarD.f2823a;
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
                if (sharedPreferences.contains("export_to_big_query")) {
                    z4 = sharedPreferences.getBoolean("export_to_big_query", false);
                } else {
                    try {
                        PackageManager packageManager = context.getPackageManager();
                        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                            z4 = applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
            } catch (IllegalStateException unused2) {
                Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            }
        }
        if (z4) {
            EnumC0768a enumC0768a = EnumC0768a.MESSAGE_DELIVERED;
            I0.d dVar = FirebaseMessaging.f6214k;
            if (dVar == null) {
                Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            } else {
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    extras = Bundle.EMPTY;
                }
                Object obj = extras.get("google.ttl");
                if (obj instanceof Integer) {
                    iIntValue = ((Integer) obj).intValue();
                } else if (obj instanceof String) {
                    try {
                        iIntValue = Integer.parseInt((String) obj);
                    } catch (NumberFormatException unused3) {
                        Log.w("FirebaseMessaging", "Invalid TTL: ".concat(String.valueOf(obj)));
                    }
                }
                int i5 = iIntValue;
                String string = extras.getString("google.to");
                if (TextUtils.isEmpty(string)) {
                    try {
                        W1.g gVarD2 = W1.g.d();
                        Object obj2 = C0644c.f8081m;
                        string = (String) AbstractC0739a.a(((C0644c) gVarD2.b(l2.d.class)).c());
                    } catch (InterruptedException | ExecutionException e5) {
                        throw new RuntimeException(e5);
                    }
                }
                String str2 = string;
                W1.g gVarD3 = W1.g.d();
                gVarD3.a();
                String packageName = gVarD3.f2823a.getPackageName();
                EnumC0770c enumC0770c = EnumC0770c.ANDROID;
                EnumC0769b enumC0769b = g.h(extras) ? EnumC0769b.DISPLAY_NOTIFICATION : EnumC0769b.DATA_MESSAGE;
                String string2 = extras.getString("google.message_id");
                if (string2 == null) {
                    string2 = extras.getString("message_id");
                }
                String str3 = string2 != null ? string2 : "";
                String string3 = extras.getString("from");
                if (string3 == null || !string3.startsWith("/topics/")) {
                    string3 = null;
                }
                String str4 = string3 != null ? string3 : "";
                String string4 = extras.getString("collapse_key");
                String str5 = string4 != null ? string4 : "";
                String string5 = extras.getString("google.c.a.m_l");
                String str6 = string5 != null ? string5 : "";
                String string6 = extras.getString("google.c.a.c_l");
                String str7 = string6 != null ? string6 : "";
                if (extras.containsKey("google.c.sender.id")) {
                    try {
                        j3 = Long.parseLong(extras.getString("google.c.sender.id"));
                    } catch (NumberFormatException e6) {
                        Log.w("FirebaseMessaging", "error parsing project number", e6);
                    }
                    C0771d c0771d = new C0771d(j3 > 0 ? j3 : 0L, str3, str2, enumC0769b, enumC0770c, packageName, str5, i5, str4, enumC0768a, str6, str7);
                    try {
                        bVar = new I0.b("proto");
                        L0.j jVar = (L0.j) dVar;
                        set = jVar.f1329a;
                        if (!set.contains(bVar)) {
                            throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, set));
                        }
                        new D3.e(jVar.f1330b, bVar, jVar.f1331c).p(new I0.a(new C0772e(c0771d)));
                    } catch (RuntimeException e7) {
                        Log.w("FirebaseMessaging", "Failed to send big query analytics payload.", e7);
                    }
                } else {
                    W1.g gVarD4 = W1.g.d();
                    gVarD4.a();
                    W1.j jVar2 = gVarD4.f2825c;
                    String str8 = jVar2.f2834e;
                    if (str8 != null) {
                        try {
                            j3 = Long.parseLong(str8);
                        } catch (NumberFormatException e8) {
                            Log.w("FirebaseMessaging", "error parsing sender ID", e8);
                        }
                        C0771d c0771d2 = new C0771d(j3 > 0 ? j3 : 0L, str3, str2, enumC0769b, enumC0770c, packageName, str5, i5, str4, enumC0768a, str6, str7);
                        bVar = new I0.b("proto");
                        L0.j jVar3 = (L0.j) dVar;
                        set = jVar3.f1329a;
                        if (!set.contains(bVar)) {
                        }
                    } else {
                        gVarD4.a();
                        String str9 = jVar2.f2831b;
                        if (str9.startsWith("1:")) {
                            String[] strArrSplit = str9.split(":");
                            if (strArrSplit.length < 2) {
                                j3 = 0;
                                C0771d c0771d22 = new C0771d(j3 > 0 ? j3 : 0L, str3, str2, enumC0769b, enumC0770c, packageName, str5, i5, str4, enumC0768a, str6, str7);
                                bVar = new I0.b("proto");
                                L0.j jVar32 = (L0.j) dVar;
                                set = jVar32.f1329a;
                                if (!set.contains(bVar)) {
                                }
                            } else {
                                String str10 = strArrSplit[1];
                                if (!str10.isEmpty()) {
                                    try {
                                        j3 = Long.parseLong(str10);
                                    } catch (NumberFormatException e9) {
                                        Log.w("FirebaseMessaging", "error parsing app ID", e9);
                                    }
                                    C0771d c0771d222 = new C0771d(j3 > 0 ? j3 : 0L, str3, str2, enumC0769b, enumC0770c, packageName, str5, i5, str4, enumC0768a, str6, str7);
                                    bVar = new I0.b("proto");
                                    L0.j jVar322 = (L0.j) dVar;
                                    set = jVar322.f1329a;
                                    if (!set.contains(bVar)) {
                                    }
                                }
                            }
                        } else {
                            try {
                                j3 = Long.parseLong(str9);
                            } catch (NumberFormatException e10) {
                                Log.w("FirebaseMessaging", "error parsing app ID", e10);
                            }
                            C0771d c0771d2222 = new C0771d(j3 > 0 ? j3 : 0L, str3, str2, enumC0769b, enumC0770c, packageName, str5, i5, str4, enumC0768a, str6, str7);
                            bVar = new I0.b("proto");
                            L0.j jVar3222 = (L0.j) dVar;
                            set = jVar3222.f1329a;
                            if (!set.contains(bVar)) {
                            }
                        }
                    }
                }
            }
        }
        Bundle extras2 = intent.getExtras();
        if (extras2 == null) {
            extras2 = new Bundle();
        }
        extras2.remove("androidx.content.wakelockid");
        if (g.h(extras2)) {
            g gVar = new g(extras2);
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC0478a("Firebase-Messaging-Network-Io"));
            r0 r0Var = new r0();
            r0Var.f1006c = executorServiceNewSingleThreadExecutor;
            r0Var.f1007d = this;
            r0Var.f1008e = gVar;
            try {
                if (r0Var.j()) {
                    return;
                }
                executorServiceNewSingleThreadExecutor.shutdown();
                if (W1.a.l0(intent)) {
                    W1.a.Y(intent.getExtras(), "_nf");
                }
            } finally {
                executorServiceNewSingleThreadExecutor.shutdown();
            }
        }
        onMessageReceived(new n(extras2));
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(n nVar) {
    }

    public void onMessageSent(String str) {
    }

    public void onNewToken(String str) {
    }

    public void onSendError(String str, Exception exc) {
    }
}

package i2;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public static d f7148b;

    /* renamed from: c, reason: collision with root package name */
    public static final SimpleDateFormat f7149c = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f7150a;

    public d(Context context) {
        this.f7150a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    public final synchronized boolean a(String str, long j3) {
        if (!this.f7150a.contains(str)) {
            this.f7150a.edit().putLong(str, j3).apply();
            return true;
        }
        Date date = new Date(this.f7150a.getLong(str, -1L));
        Date date2 = new Date(j3);
        SimpleDateFormat simpleDateFormat = f7149c;
        if (!(!simpleDateFormat.format(date).equals(simpleDateFormat.format(date2)))) {
            return false;
        }
        this.f7150a.edit().putLong(str, j3).apply();
        return true;
    }
}

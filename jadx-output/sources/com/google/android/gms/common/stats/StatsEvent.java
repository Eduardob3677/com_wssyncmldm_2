package com.google.android.gms.common.stats;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import d1.AbstractC0387a;
import java.util.List;

/* loaded from: classes.dex */
public abstract class StatsEvent extends AbstractC0387a implements ReflectedParcelable {
    public final String toString() {
        WakeLockEvent wakeLockEvent = (WakeLockEvent) this;
        List list = wakeLockEvent.f5317j;
        String strJoin = list == null ? "" : TextUtils.join(",", list);
        String str = wakeLockEvent.f5314g;
        if (str == null) {
            str = "";
        }
        String str2 = wakeLockEvent.n;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = wakeLockEvent.f5315h;
        String str4 = str3 != null ? str3 : "";
        String str5 = wakeLockEvent.f;
        StringBuilder sb = new StringBuilder(str4.length() + str2.length() + str.length() + String.valueOf(strJoin).length() + String.valueOf(str5).length() + 51);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(wakeLockEvent.f5316i);
        sb.append("\t");
        sb.append(strJoin);
        sb.append("\t");
        sb.append(wakeLockEvent.f5320m);
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(wakeLockEvent.f5321o);
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(wakeLockEvent.f5323q);
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 53);
        sb2.append(wakeLockEvent.f5312d);
        sb2.append("\t");
        sb2.append(wakeLockEvent.f5313e);
        sb2.append("\t");
        sb2.append(wakeLockEvent.f5324r);
        sb2.append(string);
        return sb2.toString();
    }
}

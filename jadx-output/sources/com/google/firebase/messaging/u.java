package com.google.firebase.messaging;

import android.util.Log;
import com.idm.providers.mo.IDMMoInterface;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f6272d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a, reason: collision with root package name */
    public final String f6273a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6274b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6275c;

    public u(String str, String str2) {
        String strSubstring;
        if (str2 == null || !str2.startsWith("/topics/")) {
            strSubstring = str2;
        } else {
            Log.w("FirebaseMessaging", "Format /topics/topic-name is deprecated. Only 'topic-name' should be used in " + str + IDMMoInterface.IDM_MO_ROOT_PATH);
            strSubstring = str2.substring(8);
        }
        if (strSubstring == null || !f6272d.matcher(strSubstring).matches()) {
            throw new IllegalArgumentException(B.f.v("Invalid topic name: ", strSubstring, " does not match the allowed format [a-zA-Z0-9-_.~%]{1,900}."));
        }
        this.f6273a = strSubstring;
        this.f6274b = str;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("!");
        sb.append(str2);
        this.f6275c = sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f6273a.equals(uVar.f6273a) && this.f6274b.equals(uVar.f6274b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6274b, this.f6273a});
    }
}

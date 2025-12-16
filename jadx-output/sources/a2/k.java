package a2;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: b, reason: collision with root package name */
    public static final k f3057b = new k();

    /* renamed from: a, reason: collision with root package name */
    public final g f3058a;

    public k() {
        g gVar = g.f3051b;
        if (n.f3064b == null) {
            n.f3064b = new n();
        }
        this.f3058a = gVar;
    }

    public static void a(Context context, Status status) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putInt("statusCode", status.f5309d);
        editorEdit.putString("statusMessage", status.f5310e);
        editorEdit.putLong("timestamp", System.currentTimeMillis());
        editorEdit.commit();
    }
}

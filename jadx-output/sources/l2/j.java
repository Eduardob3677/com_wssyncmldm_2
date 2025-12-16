package l2;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import m2.C0707a;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    public static final long f8098b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f8099c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d, reason: collision with root package name */
    public static j f8100d;

    /* renamed from: a, reason: collision with root package name */
    public final Z0.h f8101a;

    public j(Z0.h hVar) {
        this.f8101a = hVar;
    }

    public final boolean a(C0707a c0707a) {
        if (TextUtils.isEmpty(c0707a.f8268c)) {
            return true;
        }
        long j3 = c0707a.f + c0707a.f8270e;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f8101a.getClass();
        return j3 < timeUnit.toSeconds(System.currentTimeMillis()) + f8098b;
    }
}

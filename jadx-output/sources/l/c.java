package l;

import android.os.Handler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class c extends L2.b {
    public final Object f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public final ExecutorService f8072g = Executors.newFixedThreadPool(4, new b(0));

    /* renamed from: h, reason: collision with root package name */
    public volatile Handler f8073h;
}

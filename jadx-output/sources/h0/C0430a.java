package h0;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* renamed from: h0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0430a {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6953a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0434e f6954b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f6955c;

    /* renamed from: d, reason: collision with root package name */
    public final File f6956d;

    /* renamed from: e, reason: collision with root package name */
    public final String f6957e;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public C0431b[] f6958g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f6959h;

    public C0430a(AssetManager assetManager, Executor executor, InterfaceC0434e interfaceC0434e, String str, File file) {
        this.f6953a = executor;
        this.f6954b = interfaceC0434e;
        this.f6957e = str;
        this.f6956d = file;
        int i5 = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i5 <= 33 && i5 == 33) {
            bArr = AbstractC0435f.f6972d;
        }
        this.f6955c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e5) {
            String message = e5.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f6954b.n();
            }
            return null;
        }
    }

    public final void b(int i5, Serializable serializable) {
        this.f6953a.execute(new com.idm.fotaagent.utils.a(this, i5, serializable));
    }
}

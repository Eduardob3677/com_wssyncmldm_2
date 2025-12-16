package com.google.firebase.messaging;

import android.util.Log;
import com.idm.network.IDMNetworkInterface;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class k implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final URL f6243c;

    /* renamed from: d, reason: collision with root package name */
    public u1.n f6244d;

    /* renamed from: e, reason: collision with root package name */
    public volatile InputStream f6245e;

    public k(URL url) {
        this.f6243c = url;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            InputStream inputStream = this.f6245e;
            Logger logger = q1.h.f8621a;
            if (inputStream == null) {
                return;
            }
            try {
                inputStream.close();
            } catch (IOException e5) {
                try {
                    q1.h.f8621a.logp(Level.WARNING, "com.google.common.io.Closeables", IDMNetworkInterface.IDM_HTTP_CLOSE, "IOException thrown while closing Closeable.", (Throwable) e5);
                } catch (IOException e6) {
                    throw new AssertionError(e6);
                }
            }
        } catch (NullPointerException e7) {
            Log.e("FirebaseMessaging", "Failed to close the image download stream.", e7);
        }
    }
}

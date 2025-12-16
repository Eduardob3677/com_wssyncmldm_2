package androidx.room;

import java.io.Closeable;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import y0.InterfaceC0926b;
import z0.C0944f;

/* loaded from: classes.dex */
public final class l implements InterfaceC0926b, Closeable {

    /* renamed from: k, reason: collision with root package name */
    public static final TreeMap f4967k = new TreeMap();

    /* renamed from: c, reason: collision with root package name */
    public volatile String f4968c;

    /* renamed from: d, reason: collision with root package name */
    public final long[] f4969d;

    /* renamed from: e, reason: collision with root package name */
    public final double[] f4970e;
    public final String[] f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[][] f4971g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f4972h;

    /* renamed from: i, reason: collision with root package name */
    public final int f4973i;

    /* renamed from: j, reason: collision with root package name */
    public int f4974j;

    public l(int i5) {
        this.f4973i = i5;
        int i6 = i5 + 1;
        this.f4972h = new int[i6];
        this.f4969d = new long[i6];
        this.f4970e = new double[i6];
        this.f = new String[i6];
        this.f4971g = new byte[i6][];
    }

    public static l l(int i5, String str) {
        TreeMap treeMap = f4967k;
        synchronized (treeMap) {
            try {
                Map.Entry entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i5));
                if (entryCeilingEntry == null) {
                    l lVar = new l(i5);
                    lVar.f4968c = str;
                    lVar.f4974j = i5;
                    return lVar;
                }
                treeMap.remove(entryCeilingEntry.getKey());
                l lVar2 = (l) entryCeilingEntry.getValue();
                lVar2.f4968c = str;
                lVar2.f4974j = i5;
                return lVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // y0.InterfaceC0926b
    public final void g(C0944f c0944f) {
        for (int i5 = 1; i5 <= this.f4974j; i5++) {
            int i6 = this.f4972h[i5];
            if (i6 == 1) {
                c0944f.m(i5);
            } else if (i6 == 2) {
                c0944f.l(i5, this.f4969d[i5]);
            } else if (i6 == 3) {
                c0944f.h(i5, this.f4970e[i5]);
            } else if (i6 == 4) {
                c0944f.n(i5, this.f[i5]);
            } else if (i6 == 5) {
                c0944f.g(i5, this.f4971g[i5]);
            }
        }
    }

    @Override // y0.InterfaceC0926b
    public final String h() {
        return this.f4968c;
    }

    public final void m(int i5) {
        this.f4972h[i5] = 1;
    }

    public final void n(int i5, String str) {
        this.f4972h[i5] = 4;
        this.f[i5] = str;
    }

    public final void o() {
        TreeMap treeMap = f4967k;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f4973i), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i5 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i5;
                }
            }
        }
    }
}

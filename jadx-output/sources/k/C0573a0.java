package k;

import android.content.Context;
import android.graphics.RectF;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: k.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0573a0 {

    /* renamed from: a, reason: collision with root package name */
    public int f7815a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7816b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f7817c = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f7818d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f7819e = -1.0f;
    public int[] f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public boolean f7820g = false;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f7821h;

    /* renamed from: i, reason: collision with root package name */
    public final Context f7822i;

    static {
        new RectF();
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public C0573a0(TextView textView) {
        this.f7821h = textView;
        this.f7822i = textView.getContext();
        new Y();
    }

    public static int[] a(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i5 : iArr) {
            if (i5 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i5)) < 0) {
                arrayList.add(Integer.valueOf(i5));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i6 = 0; i6 < size; i6++) {
            iArr2[i6] = ((Integer) arrayList.get(i6)).intValue();
        }
        return iArr2;
    }

    public final boolean b() {
        if (d() && this.f7815a == 1) {
            if (!this.f7820g || this.f.length == 0) {
                int iFloor = ((int) Math.floor((this.f7819e - this.f7818d) / this.f7817c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i5 = 0; i5 < iFloor; i5++) {
                    iArr[i5] = Math.round((i5 * this.f7817c) + this.f7818d);
                }
                this.f = a(iArr);
            }
            this.f7816b = true;
        } else {
            this.f7816b = false;
        }
        return this.f7816b;
    }

    public final boolean c() {
        boolean z4 = this.f.length > 0;
        this.f7820g = z4;
        if (z4) {
            this.f7815a = 1;
            this.f7818d = r0[0];
            this.f7819e = r0[r1 - 1];
            this.f7817c = -1.0f;
        }
        return z4;
    }

    public final boolean d() {
        return !(this.f7821h instanceof C0626u);
    }

    public final void e(float f, float f5, float f6) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f5 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f5 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f6 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f6 + "px) is less or equal to (0px)");
        }
        this.f7815a = 1;
        this.f7818d = f;
        this.f7819e = f5;
        this.f7817c = f6;
        this.f7820g = false;
    }
}

package e4;

import D1.f;
import P1.k;
import W1.h;
import Z0.j;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import androidx.databinding.t;
import androidx.databinding.v;
import androidx.databinding.w;
import androidx.fragment.app.c0;
import androidx.lifecycle.Y;
import androidx.lifecycle.b0;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.q;
import b1.l;
import com.google.android.gms.common.api.Status;
import com.wssyncmldm.R;
import d3.i;
import g4.o;
import h0.InterfaceC0434e;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.ReferenceQueue;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class d implements K2.c, N0.b, l, androidx.databinding.d, b0, q, InterfaceC0434e {

    /* renamed from: d, reason: collision with root package name */
    public static ExecutorService f6815d;

    /* renamed from: e, reason: collision with root package name */
    public static d f6816e;
    public static d f;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6817c;

    public /* synthetic */ d(int i5) {
        this.f6817c = i5;
    }

    public static d c(Context context, int i5) throws Resources.NotFoundException {
        j.k("Cannot create a CalendarItemStyle with a styleResId of 0", i5 != 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i5, v1.a.f9539o);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList colorStateListB = W1.a.B(context, typedArrayObtainStyledAttributes, 4);
        ColorStateList colorStateListB2 = W1.a.B(context, typedArrayObtainStyledAttributes, 9);
        ColorStateList colorStateListB3 = W1.a.B(context, typedArrayObtainStyledAttributes, 7);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        k kVarA = k.a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0), new P1.a(0)).a();
        typedArrayObtainStyledAttributes.recycle();
        return new d(colorStateListB, colorStateListB2, colorStateListB3, dimensionPixelSize, kVarA, rect);
    }

    public static d h() {
        if (f6816e == null) {
            d dVar = new d(2);
            f6815d = Executors.newSingleThreadExecutor(new K2.d());
            f6816e = dVar;
        }
        return f6816e;
    }

    public static InputStream i(String str) throws IOException {
        i.e("path", str);
        ClassLoader classLoader = d.class.getClassLoader();
        if (classLoader == null) {
            return ClassLoader.getSystemResourceAsStream(str);
        }
        URL resource = classLoader.getResource(str);
        if (resource == null) {
            return null;
        }
        URLConnection uRLConnectionOpenConnection = resource.openConnection();
        uRLConnectionOpenConnection.setUseCaches(false);
        return uRLConnectionOpenConnection.getInputStream();
    }

    @Override // androidx.lifecycle.b0
    public Y a(Class cls) {
        return new c0(true);
    }

    @Override // androidx.preference.q
    public CharSequence b(Preference preference) {
        ListPreference listPreference = (ListPreference) preference;
        return TextUtils.isEmpty(listPreference.E()) ? listPreference.f4648c.getString(R.string.not_set) : listPreference.E();
    }

    @Override // b1.l
    public Exception d(Status status) {
        String strM = status.f5310e;
        int i5 = status.f5309d;
        if (i5 == 8) {
            if (strM == null) {
                strM = j.M(i5);
            }
            return new h(strM);
        }
        if (strM == null) {
            strM = j.M(i5);
        }
        return new W1.b(strM);
    }

    @Override // androidx.databinding.d
    public w f(v vVar, int i5, ReferenceQueue referenceQueue) {
        return new t(vVar, i5, referenceQueue, 0).f3678b;
    }

    public void g(K2.b bVar) {
        f6815d.submit(new B1.h(2, bVar));
    }

    @Override // P2.a
    public Object get() {
        switch (this.f6817c) {
            case 3:
                List list = R0.j.f2291e;
                return 4;
            default:
                return new T0.b(1);
        }
    }

    @Override // h0.InterfaceC0434e
    public void n() {
    }

    @Override // h0.InterfaceC0434e
    public void q(int i5, Object obj) {
    }

    public d(o oVar) {
        this.f6817c = 7;
        i.e("storageManager", oVar);
        String str = g4.l.f6947d;
        new ConcurrentHashMap(3, 1.0f, 2);
    }

    public d(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i5, k kVar, Rect rect) {
        this.f6817c = 12;
        j.l(rect.left);
        j.l(rect.top);
        j.l(rect.right);
        j.l(rect.bottom);
    }

    public d(f fVar, f fVar2) {
        this.f6817c = 1;
        fVar.getClass();
        fVar2.getClass();
        if (0.0f > 0.0f) {
            throw new IllegalArgumentException();
        }
    }
}

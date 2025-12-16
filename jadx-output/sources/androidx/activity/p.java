package androidx.activity;

import android.window.OnBackInvokedCallback;
import c3.InterfaceC0221a;
import e.C;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements OnBackInvokedCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3174a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3175b;

    public /* synthetic */ p(int i5, Object obj) {
        this.f3174a = i5;
        this.f3175b = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        switch (this.f3174a) {
            case 0:
                InterfaceC0221a interfaceC0221a = (InterfaceC0221a) this.f3175b;
                d3.i.e("$onBackInvoked", interfaceC0221a);
                interfaceC0221a.a();
                break;
            case 1:
                ((C) this.f3175b).E();
                break;
            default:
                ((Runnable) this.f3175b).run();
                break;
        }
    }
}

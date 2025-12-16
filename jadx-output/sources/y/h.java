package y;

import J.InterfaceC0031e;
import J.Q;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.O;
import androidx.lifecycle.S;
import com.samsung.android.knox.ex.KnoxContract;
import java.util.WeakHashMap;
import o.C0722k;

/* loaded from: classes.dex */
public abstract class h extends Activity implements InterfaceC0155w, InterfaceC0031e {
    private final C0722k extraDataMap = new C0722k();
    private final C0157y lifecycleRegistry = new C0157y(this);

    public Context a() {
        return getApplicationContext();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTIVITY_EVENT, keyEvent);
        d3.i.d("window.decorView", getWindow().getDecorView());
        WeakHashMap weakHashMap = Q.f940a;
        return superDispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTIVITY_EVENT, keyEvent);
        d3.i.d("window.decorView", getWindow().getDecorView());
        WeakHashMap weakHashMap = Q.f940a;
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    public <T extends g> T getExtraData(Class<T> cls) {
        d3.i.e("extraDataClass", cls);
        B.f.F(this.extraDataMap.getOrDefault(cls, null));
        return null;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i5 = O.f4018c;
        S.g(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        d3.i.e("outState", bundle);
        this.lifecycleRegistry.g();
        super.onSaveInstanceState(bundle);
    }

    public void putExtraData(g gVar) {
        d3.i.e("extraData", gVar);
        throw null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean shouldDumpInternalState(String[] strArr) {
        boolean z4 = false;
        if (strArr != null && strArr.length != 0) {
            String str = strArr[0];
            switch (str.hashCode()) {
                case -645125871:
                    if (str.equals("--translation")) {
                        z4 = true;
                        break;
                    }
                    break;
                case 100470631:
                    if (str.equals("--dump-dumpable")) {
                    }
                    break;
                case 472614934:
                    if (str.equals("--list-dumpables")) {
                    }
                    break;
                case 1159329357:
                    if (str.equals("--contentcapture")) {
                    }
                    break;
                case 1455016274:
                    if (str.equals("--autofill")) {
                    }
                    break;
            }
        }
        return true ^ z4;
    }

    @Override // J.InterfaceC0031e
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTIVITY_EVENT, keyEvent);
        return super.dispatchKeyEvent(keyEvent);
    }
}

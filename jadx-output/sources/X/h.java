package X;

import android.widget.EditText;
import androidx.appcompat.widget.SwitchCompat;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class h extends androidx.emoji2.text.h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2855a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f2856b;

    public h(EditText editText) {
        this.f2856b = new WeakReference(editText);
    }

    @Override // androidx.emoji2.text.h
    public void a() {
        switch (this.f2855a) {
            case 1:
                SwitchCompat switchCompat = (SwitchCompat) this.f2856b.get();
                if (switchCompat != null) {
                    switchCompat.d();
                    break;
                }
                break;
        }
    }

    @Override // androidx.emoji2.text.h
    public final void b() {
        switch (this.f2855a) {
            case 0:
                i.a((EditText) this.f2856b.get(), 1);
                break;
            default:
                SwitchCompat switchCompat = (SwitchCompat) this.f2856b.get();
                if (switchCompat != null) {
                    switchCompat.d();
                    break;
                }
                break;
        }
    }

    public h(SwitchCompat switchCompat) {
        this.f2856b = new WeakReference(switchCompat);
    }
}

package androidx.preference;

import android.view.View;

/* renamed from: androidx.preference.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0192l implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4722c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Preference f4723d;

    public /* synthetic */ ViewOnClickListenerC0192l(Preference preference, int i5) {
        this.f4722c = i5;
        this.f4723d = preference;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f4722c) {
            case 0:
                this.f4723d.v(view);
                break;
            case 1:
                ((SwitchPreference) this.f4723d).b();
                break;
            default:
                ((SwitchPreferenceCompat) this.f4723d).b();
                break;
        }
    }
}

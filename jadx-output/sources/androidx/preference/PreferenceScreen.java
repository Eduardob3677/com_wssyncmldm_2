package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {

    /* renamed from: d0, reason: collision with root package name */
    public final boolean f4676d0;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, A.b.b(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle));
        this.f4676d0 = true;
    }

    @Override // androidx.preference.Preference
    public final void o() {
        z zVar;
        if (this.f4658o != null || this.f4659p != null || G() == 0 || (zVar = this.f4649d.f4590j) == null) {
            return;
        }
        zVar.onNavigateToScreen(this);
    }
}

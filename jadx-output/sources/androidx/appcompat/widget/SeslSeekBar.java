package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import androidx.preference.J;
import androidx.preference.SeekBarPreference;
import k.X0;
import k.o1;
import k.p1;

/* loaded from: classes.dex */
public class SeslSeekBar extends X0 {

    /* renamed from: f1, reason: collision with root package name */
    public int f3466f1;

    /* renamed from: g1, reason: collision with root package name */
    public o1 f3467g1;

    public SeslSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // k.X0
    public final void D() {
        int progress;
        super.D();
        o1 o1Var = this.f3467g1;
        if (o1Var != null) {
            SeekBarPreference seekBarPreference = ((J) o1Var).f4614a;
            seekBarPreference.f4681b0 = false;
            int progress2 = getProgress();
            int i5 = seekBarPreference.f4678Y;
            if (progress2 + i5 == seekBarPreference.f4677X || (progress = getProgress() + i5) == seekBarPreference.f4677X) {
                return;
            }
            seekBarPreference.a(Integer.valueOf(progress));
            seekBarPreference.D(progress, false);
        }
    }

    @Override // k.X0, androidx.appcompat.widget.SeslProgressBar, android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @Override // k.X0, androidx.appcompat.widget.SeslProgressBar
    public final void j(float f, boolean z4, int i5) {
        super.j(f, z4, i5);
        if (!this.f7799c1) {
            o1 o1Var = this.f3467g1;
            if (o1Var != null) {
                SeekBarPreference seekBarPreference = ((J) o1Var).f4614a;
                if (z4 && (seekBarPreference.f4684e0 || !seekBarPreference.f4681b0)) {
                    int progress = getProgress() + seekBarPreference.f4678Y;
                    if (progress != seekBarPreference.f4677X) {
                        seekBarPreference.a(Integer.valueOf(progress));
                        seekBarPreference.D(progress, false);
                    }
                }
                seekBarPreference.getClass();
                return;
            }
            return;
        }
        int iRound = Math.round(i5 / 1000.0f);
        if (this.f3466f1 != iRound) {
            this.f3466f1 = iRound;
            o1 o1Var2 = this.f3467g1;
            if (o1Var2 != null) {
                SeekBarPreference seekBarPreference2 = ((J) o1Var2).f4614a;
                if (z4 && (seekBarPreference2.f4684e0 || !seekBarPreference2.f4681b0)) {
                    int progress2 = getProgress() + seekBarPreference2.f4678Y;
                    if (progress2 != seekBarPreference2.f4677X) {
                        seekBarPreference2.a(Integer.valueOf(progress2));
                        seekBarPreference2.D(progress2, false);
                    }
                }
                seekBarPreference2.getClass();
            }
        }
    }

    @Override // k.X0, androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z4;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        synchronized (this) {
            z4 = this.f3465z;
        }
        if (z4 || !isEnabled()) {
            return;
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS);
    }

    public void setOnSeekBarChangeListener(o1 o1Var) {
        this.f3467g1 = o1Var;
    }

    public void setOnSeekBarHoverListener(p1 p1Var) {
    }
}

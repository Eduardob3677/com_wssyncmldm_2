package F1;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import com.wssyncmldm.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class d extends S.b {

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ Chip f681q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Chip chip, Chip chip2) {
        super(chip2);
        this.f681q = chip;
    }

    @Override // S.b
    public final int n(float f, float f5) {
        Rect rect = Chip.f5919z;
        Chip chip = this.f681q;
        return (chip.d() && chip.getCloseIconTouchBounds().contains(f, f5)) ? 1 : 0;
    }

    @Override // S.b
    public final void o(ArrayList arrayList) {
        boolean z4 = false;
        arrayList.add(0);
        Rect rect = Chip.f5919z;
        Chip chip = this.f681q;
        if (chip.d()) {
            f fVar = chip.f5920g;
            if (fVar != null && fVar.f704M) {
                z4 = true;
            }
            if (!z4 || chip.f5923j == null) {
                return;
            }
            arrayList.add(1);
        }
    }

    @Override // S.b
    public final boolean s(int i5, int i6) {
        boolean z4 = false;
        if (i6 == 16) {
            Chip chip = this.f681q;
            if (i5 == 0) {
                return chip.performClick();
            }
            if (i5 == 1) {
                chip.playSoundEffect(0);
                View.OnClickListener onClickListener = chip.f5923j;
                if (onClickListener != null) {
                    onClickListener.onClick(chip);
                    z4 = true;
                }
                if (chip.f5934v) {
                    chip.f5933u.y(1, 1);
                }
            }
        }
        return z4;
    }

    @Override // S.b
    public final void u(K.h hVar) {
        Chip chip = this.f681q;
        boolean zE = chip.e();
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
        accessibilityNodeInfo.setCheckable(zE);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        hVar.g(chip.getAccessibilityClassName());
        accessibilityNodeInfo.setText(chip.getText());
    }

    @Override // S.b
    public final void v(int i5, K.h hVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
        if (i5 != 1) {
            accessibilityNodeInfo.setContentDescription("");
            accessibilityNodeInfo.setBoundsInParent(Chip.f5919z);
            return;
        }
        Chip chip = this.f681q;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfo.setContentDescription(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
        hVar.b(K.c.f1189e);
        accessibilityNodeInfo.setEnabled(chip.isEnabled());
    }

    @Override // S.b
    public final void w(int i5, boolean z4) {
        if (i5 == 1) {
            Chip chip = this.f681q;
            chip.f5928p = z4;
            chip.refreshDrawableState();
        }
    }
}

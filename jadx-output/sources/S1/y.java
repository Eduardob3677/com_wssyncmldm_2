package S1;

import J.C0028b;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public final class y extends C0028b {

    /* renamed from: d, reason: collision with root package name */
    public final TextInputLayout f2580d;

    public y(TextInputLayout textInputLayout) {
        this.f2580d = textInputLayout;
    }

    @Override // J.C0028b
    public final void d(View view, K.h hVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f956a;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        TextInputLayout textInputLayout = this.f2580d;
        EditText editText = textInputLayout.getEditText();
        Editable text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        boolean z4 = !zIsEmpty;
        boolean z5 = true;
        boolean z6 = !TextUtils.isEmpty(hint);
        boolean z7 = !textInputLayout.f6138x0;
        boolean z8 = !TextUtils.isEmpty(error);
        if (!z8 && TextUtils.isEmpty(counterOverflowDescription)) {
            z5 = false;
        }
        String string = z6 ? hint.toString() : "";
        w wVar = textInputLayout.f6110d;
        AppCompatTextView appCompatTextView = wVar.f2570d;
        if (appCompatTextView.getVisibility() == 0) {
            accessibilityNodeInfo.setLabelFor(appCompatTextView);
            accessibilityNodeInfo.setTraversalAfter(appCompatTextView);
        } else {
            accessibilityNodeInfo.setTraversalAfter(wVar.f);
        }
        if (z4) {
            accessibilityNodeInfo.setText(text);
        } else if (!TextUtils.isEmpty(string)) {
            accessibilityNodeInfo.setText(string);
            if (z7 && placeholderText != null) {
                accessibilityNodeInfo.setText(string + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            accessibilityNodeInfo.setText(placeholderText);
        }
        if (!TextUtils.isEmpty(string)) {
            accessibilityNodeInfo.setHintText(string);
            accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
        if (z5) {
            if (!z8) {
                error = counterOverflowDescription;
            }
            accessibilityNodeInfo.setError(error);
        }
        AppCompatTextView appCompatTextView2 = textInputLayout.f6123l.f2554y;
        if (appCompatTextView2 != null) {
            accessibilityNodeInfo.setLabelFor(appCompatTextView2);
        }
        textInputLayout.f6112e.b().n(hVar);
    }

    @Override // J.C0028b
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        super.e(view, accessibilityEvent);
        this.f2580d.f6112e.b().o(accessibilityEvent);
    }
}

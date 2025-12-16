package androidx.picker.widget;

import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;

/* renamed from: androidx.picker.widget.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC0174p implements View.OnKeyListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4531c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4532d;

    public /* synthetic */ ViewOnKeyListenerC0174p(int i5, Object obj) {
        this.f4531c = i5;
        this.f4532d = obj;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i5, KeyEvent keyEvent) {
        Object obj = this.f4532d;
        switch (this.f4531c) {
            case 0:
                keyEvent.toString();
                int i6 = SeslDatePickerSpinnerLayout.f4429A;
                SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = (SeslDatePickerSpinnerLayout) obj;
                seslDatePickerSpinnerLayout.getClass();
                if (keyEvent.getAction() == 1) {
                    if (i5 == 23) {
                        int i7 = seslDatePickerSpinnerLayout.getResources().getConfiguration().keyboard;
                    } else if (i5 != 61) {
                        if (i5 == 66 || i5 == 160) {
                            if (seslDatePickerSpinnerLayout.f4430c) {
                                EditText editText = (EditText) view;
                                if ((editText.getImeOptions() & 5) != 5) {
                                    if ((editText.getImeOptions() & 6) == 6) {
                                        seslDatePickerSpinnerLayout.i();
                                        seslDatePickerSpinnerLayout.d(false);
                                        break;
                                    }
                                } else {
                                    View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(seslDatePickerSpinnerLayout.f4437k, view, 2);
                                    if (viewFindNextFocus != null) {
                                        viewFindNextFocus.requestFocus();
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
                break;
            case 1:
                SeslDatePicker seslDatePicker = (SeslDatePicker) obj;
                if (seslDatePicker.f4411j) {
                    seslDatePicker.f4406g = false;
                }
                if (keyEvent.getAction() == 1 || keyEvent.getAction() == 3) {
                    seslDatePicker.l();
                    break;
                }
                break;
            default:
                if (keyEvent.getAction() == 1) {
                    W w2 = (W) obj;
                    if (i5 != 23) {
                        if (i5 != 61) {
                            if (i5 == 66 || i5 == 160) {
                                if (w2.f4497y) {
                                    EditText editText2 = (EditText) view;
                                    if ((editText2.getImeOptions() & 5) != 5) {
                                        if ((editText2.getImeOptions() & 6) == 6) {
                                            W.a(w2);
                                            w2.g(false);
                                            break;
                                        }
                                    } else {
                                        View viewFindNextFocus2 = FocusFinder.getInstance().findNextFocus(w2.f4475a, view, 2);
                                        if (viewFindNextFocus2 != null) {
                                            viewFindNextFocus2.requestFocus();
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    } else if (w2.f4475a.getResources().getConfiguration().keyboard != 3) {
                    }
                }
                break;
        }
        return false;
    }
}

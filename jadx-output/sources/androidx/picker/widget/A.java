package androidx.picker.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.widget.Button;
import android.widget.EditText;
import android.widget.NumberPicker;
import android.widget.TextView;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public final class A extends AccessibilityNodeProvider {
    public static final /* synthetic */ int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f4080g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4081a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f4082b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f4083c;

    /* renamed from: d, reason: collision with root package name */
    public int f4084d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4085e;

    public A(P p4) {
        this.f4081a = 1;
        this.f4085e = p4;
        this.f4082b = new Rect();
        this.f4083c = new int[2];
        this.f4084d = Integer.MIN_VALUE;
    }

    public static void g(Rect rect, float f5) {
        if (f5 != 1.0f) {
            rect.left = (int) ((rect.left * f5) + 0.5f);
            rect.top = (int) ((rect.top * f5) + 0.5f);
            rect.right = (int) ((rect.right * f5) + 0.5f);
            rect.bottom = (int) ((rect.bottom * f5) + 0.5f);
        }
    }

    public static void h(Rect rect, float f5) {
        if (f5 != 1.0f) {
            rect.left = (int) ((rect.left * f5) + 0.5f);
            rect.top = (int) ((rect.top * f5) + 0.5f);
            rect.right = (int) ((rect.right * f5) + 0.5f);
            rect.bottom = (int) ((rect.bottom * f5) + 0.5f);
        }
    }

    public final AccessibilityNodeInfo a(int i5, int i6, int i7, int i8, int i9, String str) {
        switch (this.f4081a) {
            case 0:
                AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
                accessibilityNodeInfoObtain.setClassName(Button.class.getName());
                D d2 = (D) this.f4085e;
                accessibilityNodeInfoObtain.setPackageName(d2.f4232a.getPackageName());
                accessibilityNodeInfoObtain.setSource((SeslNumberPicker) d2.f4233b, i5);
                accessibilityNodeInfoObtain.setParent((SeslNumberPicker) d2.f4233b);
                accessibilityNodeInfoObtain.setText(str);
                accessibilityNodeInfoObtain.setTooltipText(d2.f4144d);
                accessibilityNodeInfoObtain.setClickable(true);
                accessibilityNodeInfoObtain.setLongClickable(true);
                accessibilityNodeInfoObtain.setEnabled(((SeslNumberPicker) d2.f4233b).isEnabled());
                Rect rect = this.f4082b;
                rect.set(i6, i7, i8, i9);
                SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
                seslNumberPicker.getClass();
                accessibilityNodeInfoObtain.setVisibleToUser(AbstractC0739a.m(rect, seslNumberPicker));
                accessibilityNodeInfoObtain.setBoundsInParent(rect);
                SeslNumberPicker seslNumberPicker2 = (SeslNumberPicker) d2.f4233b;
                int[] iArr = this.f4083c;
                seslNumberPicker2.getLocationOnScreen(iArr);
                rect.offset(iArr[0], iArr[1]);
                accessibilityNodeInfoObtain.setBoundsInScreen(rect);
                if (this.f4084d != i5) {
                    accessibilityNodeInfoObtain.addAction(64);
                } else {
                    accessibilityNodeInfoObtain.addAction(128);
                }
                if (((SeslNumberPicker) d2.f4233b).isEnabled()) {
                    accessibilityNodeInfoObtain.addAction(16);
                }
                return accessibilityNodeInfoObtain;
            default:
                AccessibilityNodeInfo accessibilityNodeInfoObtain2 = AccessibilityNodeInfo.obtain();
                accessibilityNodeInfoObtain2.setClassName(Button.class.getName());
                P p4 = (P) this.f4085e;
                accessibilityNodeInfoObtain2.setPackageName(p4.f4232a.getPackageName());
                accessibilityNodeInfoObtain2.setSource((SeslSpinningDatePickerSpinner) p4.f4233b, i5);
                accessibilityNodeInfoObtain2.setParent((SeslSpinningDatePickerSpinner) p4.f4233b);
                accessibilityNodeInfoObtain2.setText(str);
                accessibilityNodeInfoObtain2.setClickable(true);
                accessibilityNodeInfoObtain2.setLongClickable(true);
                accessibilityNodeInfoObtain2.setEnabled(((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled());
                Rect rect2 = this.f4082b;
                rect2.set(i6, i7, i8, i9);
                SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
                seslSpinningDatePickerSpinner.getClass();
                accessibilityNodeInfoObtain2.setVisibleToUser(AbstractC0739a.m(rect2, seslSpinningDatePickerSpinner));
                accessibilityNodeInfoObtain2.setBoundsInParent(rect2);
                SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner2 = (SeslSpinningDatePickerSpinner) p4.f4233b;
                int[] iArr2 = this.f4083c;
                seslSpinningDatePickerSpinner2.getLocationOnScreen(iArr2);
                rect2.offset(iArr2[0], iArr2[1]);
                accessibilityNodeInfoObtain2.setBoundsInScreen(rect2);
                if (this.f4084d != i5) {
                    accessibilityNodeInfoObtain2.addAction(64);
                } else {
                    accessibilityNodeInfoObtain2.addAction(128);
                }
                if (((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled()) {
                    accessibilityNodeInfoObtain2.addAction(16);
                }
                return accessibilityNodeInfoObtain2;
        }
    }

    public final void b(String str, int i5, ArrayList arrayList) {
        switch (this.f4081a) {
            case 0:
                if (i5 == 1) {
                    String strE = e();
                    if (!TextUtils.isEmpty(strE) && strE.toLowerCase().contains(str)) {
                        arrayList.add(createAccessibilityNodeInfo(1));
                        break;
                    }
                } else if (i5 == 2) {
                    Editable text = ((D) this.f4085e).f4147e.getText();
                    if (!TextUtils.isEmpty(text) && text.toString().toLowerCase().contains(str)) {
                        arrayList.add(createAccessibilityNodeInfo(2));
                        break;
                    }
                } else if (i5 == 3) {
                    String strF = f();
                    if (!TextUtils.isEmpty(strF) && strF.toLowerCase().contains(str)) {
                        arrayList.add(createAccessibilityNodeInfo(3));
                        break;
                    }
                }
                break;
            default:
                if (i5 == 1) {
                    String strE2 = e();
                    if (!TextUtils.isEmpty(strE2) && strE2.toLowerCase().contains(str)) {
                        arrayList.add(createAccessibilityNodeInfo(1));
                        break;
                    }
                } else if (i5 == 2) {
                    String strC = c();
                    if (!TextUtils.isEmpty(strC) && strC.toLowerCase().contains(str)) {
                        arrayList.add(createAccessibilityNodeInfo(2));
                        break;
                    }
                } else if (i5 == 3) {
                    String strF2 = f();
                    if (!TextUtils.isEmpty(strF2) && strF2.toLowerCase().contains(str)) {
                        arrayList.add(createAccessibilityNodeInfo(3));
                        break;
                    }
                }
                break;
        }
    }

    public String c() {
        P p4 = (P) this.f4085e;
        Calendar calendar = (Calendar) p4.f4304m.clone();
        p4.getClass();
        if (calendar.compareTo(p4.f4303l) > 0) {
            return null;
        }
        p4.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(p4.d(calendar));
        sb.append(", ");
        return B.f.w(sb, p4.f4288c, ", ");
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i5) throws NoSuchFieldException {
        switch (this.f4081a) {
            case 0:
                D d2 = (D) this.f4085e;
                int left = ((SeslNumberPicker) d2.f4233b).getLeft();
                int right = ((SeslNumberPicker) d2.f4233b).getRight();
                int top = ((SeslNumberPicker) d2.f4233b).getTop();
                int bottom = ((SeslNumberPicker) d2.f4233b).getBottom();
                int scrollX = ((SeslNumberPicker) d2.f4233b).getScrollX();
                int scrollY = ((SeslNumberPicker) d2.f4233b).getScrollY();
                if (d2.f4142c0 != -1 || d2.f4135Z != Integer.MIN_VALUE) {
                    int[] iArr = this.f4083c;
                    Rect rect = this.f4082b;
                    if (i5 == -1) {
                        int i6 = (right - left) + scrollX;
                        int i7 = (bottom - top) + scrollY;
                        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
                        accessibilityNodeInfoObtain.setClassName(NumberPicker.class.getName());
                        accessibilityNodeInfoObtain.setPackageName(d2.f4232a.getPackageName());
                        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
                        accessibilityNodeInfoObtain.setSource(seslNumberPicker);
                        if (d2.f4118Q || d2.f4160o > d2.f4159m) {
                            accessibilityNodeInfoObtain.addChild(seslNumberPicker, 1);
                        }
                        accessibilityNodeInfoObtain.addChild(seslNumberPicker, 2);
                        if (d2.f4118Q || d2.f4160o < d2.n) {
                            accessibilityNodeInfoObtain.addChild(seslNumberPicker, 3);
                        }
                        accessibilityNodeInfoObtain.setParent((View) seslNumberPicker.getParentForAccessibility());
                        accessibilityNodeInfoObtain.setEnabled(seslNumberPicker.isEnabled());
                        accessibilityNodeInfoObtain.setScrollable(true);
                        float fE = W1.a.E(d2.f4232a.getResources());
                        rect.set(scrollX, scrollY, i6, i7);
                        g(rect, fE);
                        accessibilityNodeInfoObtain.setBoundsInParent(rect);
                        accessibilityNodeInfoObtain.setVisibleToUser(AbstractC0739a.m(null, seslNumberPicker));
                        seslNumberPicker.getLocationOnScreen(iArr);
                        rect.offset(iArr[0], iArr[1]);
                        g(rect, fE);
                        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
                        if (this.f4084d != -1) {
                            accessibilityNodeInfoObtain.addAction(64);
                        } else {
                            accessibilityNodeInfoObtain.addAction(128);
                        }
                        if (seslNumberPicker.isEnabled()) {
                            if (d2.f4118Q || d2.f4160o < d2.n) {
                                accessibilityNodeInfoObtain.addAction(4096);
                            }
                            if (d2.f4118Q || d2.f4160o > d2.f4159m) {
                                accessibilityNodeInfoObtain.addAction(8192);
                            }
                        }
                        return accessibilityNodeInfoObtain;
                    }
                    int i8 = d2.f4122S;
                    if (i5 == 1) {
                        return a(1, scrollX, scrollY, (right - left) + scrollX, d2.f4131X + i8, e());
                    }
                    if (i5 == 2) {
                        int i9 = d2.f4131X + i8;
                        int i10 = (right - left) + scrollX;
                        int i11 = d2.f4133Y - i8;
                        AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = d2.f4147e.createAccessibilityNodeInfo();
                        SeslNumberPicker seslNumberPicker2 = (SeslNumberPicker) d2.f4233b;
                        accessibilityNodeInfoCreateAccessibilityNodeInfo.setSource(seslNumberPicker2, 2);
                        if (this.f4084d != 2) {
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setAccessibilityFocused(false);
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(64);
                        } else {
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setAccessibilityFocused(true);
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(128);
                        }
                        if (!d2.g0) {
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setClassName(TextView.class.getName());
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setText(d(false));
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setTooltipText(d2.f4144d);
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setSelected(true);
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setAccessibilityFocused(false);
                        } else if (d2.f4168v != null) {
                            accessibilityNodeInfoCreateAccessibilityNodeInfo.setText(d(false));
                        }
                        rect.set(scrollX, i9, i10, i11);
                        seslNumberPicker2.getClass();
                        accessibilityNodeInfoCreateAccessibilityNodeInfo.setVisibleToUser(AbstractC0739a.m(rect, seslNumberPicker2));
                        accessibilityNodeInfoCreateAccessibilityNodeInfo.setBoundsInParent(rect);
                        seslNumberPicker2.getLocationOnScreen(iArr);
                        rect.offset(iArr[0], iArr[1]);
                        accessibilityNodeInfoCreateAccessibilityNodeInfo.setBoundsInScreen(rect);
                        return accessibilityNodeInfoCreateAccessibilityNodeInfo;
                    }
                    if (i5 == 3) {
                        return a(3, scrollX, d2.f4133Y - i8, (right - left) + scrollX, (bottom - top) + scrollY, f());
                    }
                }
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo2 = super.createAccessibilityNodeInfo(i5);
                return accessibilityNodeInfoCreateAccessibilityNodeInfo2 == null ? AccessibilityNodeInfo.obtain() : accessibilityNodeInfoCreateAccessibilityNodeInfo2;
            default:
                P p4 = (P) this.f4085e;
                int left2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getLeft();
                int right2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getRight();
                int top2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getTop();
                int bottom2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getBottom();
                int scrollX2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getScrollX();
                int scrollY2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getScrollY();
                if (p4.f4279T != -1 || p4.f4275P != Integer.MIN_VALUE) {
                    int[] iArr2 = this.f4083c;
                    Rect rect2 = this.f4082b;
                    if (i5 == -1) {
                        int i12 = (right2 - left2) + scrollX2;
                        int i13 = (bottom2 - top2) + scrollY2;
                        AccessibilityNodeInfo accessibilityNodeInfoObtain2 = AccessibilityNodeInfo.obtain();
                        accessibilityNodeInfoObtain2.setClassName(SeslSpinningDatePickerSpinner.class.getName());
                        accessibilityNodeInfoObtain2.setPackageName(p4.f4232a.getPackageName());
                        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
                        accessibilityNodeInfoObtain2.setSource(seslSpinningDatePickerSpinner);
                        p4.getClass();
                        if (p4.f4304m.compareTo(p4.f4302k) > 0) {
                            accessibilityNodeInfoObtain2.addChild(seslSpinningDatePickerSpinner, 1);
                        }
                        accessibilityNodeInfoObtain2.addChild(seslSpinningDatePickerSpinner, 2);
                        p4.getClass();
                        if (p4.f4304m.compareTo(p4.f4303l) < 0) {
                            accessibilityNodeInfoObtain2.addChild(seslSpinningDatePickerSpinner, 3);
                        }
                        accessibilityNodeInfoObtain2.setParent((View) seslSpinningDatePickerSpinner.getParentForAccessibility());
                        accessibilityNodeInfoObtain2.setEnabled(seslSpinningDatePickerSpinner.isEnabled());
                        accessibilityNodeInfoObtain2.setScrollable(true);
                        float fE2 = W1.a.E(p4.f4232a.getResources());
                        rect2.set(scrollX2, scrollY2, i12, i13);
                        h(rect2, fE2);
                        accessibilityNodeInfoObtain2.setBoundsInParent(rect2);
                        accessibilityNodeInfoObtain2.setVisibleToUser(AbstractC0739a.m(null, seslSpinningDatePickerSpinner));
                        seslSpinningDatePickerSpinner.getLocationOnScreen(iArr2);
                        rect2.offset(iArr2[0], iArr2[1]);
                        h(rect2, fE2);
                        accessibilityNodeInfoObtain2.setBoundsInScreen(rect2);
                        if (this.f4084d != -1) {
                            accessibilityNodeInfoObtain2.addAction(64);
                        } else {
                            accessibilityNodeInfoObtain2.addAction(128);
                        }
                        if (seslSpinningDatePickerSpinner.isEnabled()) {
                            Calendar calendar = p4.f4304m;
                            if (calendar.compareTo(p4.f4303l) < 0) {
                                accessibilityNodeInfoObtain2.addAction(4096);
                            }
                            if (calendar.compareTo(p4.f4302k) > 0) {
                                accessibilityNodeInfoObtain2.addAction(8192);
                            }
                        }
                        return accessibilityNodeInfoObtain2;
                    }
                    int i14 = p4.f4265J;
                    if (i5 == 1) {
                        return a(1, scrollX2, scrollY2, (right2 - left2) + scrollX2, p4.f4273N + i14, e());
                    }
                    if (i5 == 2) {
                        int i15 = p4.f4273N + i14;
                        int i16 = (right2 - left2) + scrollX2;
                        int i17 = p4.f4274O - i14;
                        AccessibilityNodeInfo accessibilityNodeInfoObtain3 = AccessibilityNodeInfo.obtain();
                        accessibilityNodeInfoObtain3.setPackageName(p4.f4232a.getPackageName());
                        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner2 = (SeslSpinningDatePickerSpinner) p4.f4233b;
                        accessibilityNodeInfoObtain3.setSource(seslSpinningDatePickerSpinner2, 2);
                        accessibilityNodeInfoObtain3.setParent(seslSpinningDatePickerSpinner2);
                        accessibilityNodeInfoObtain3.setText(c() + p4.f4232a.getString(R.string.sesl_date_picker_switch_to_calendar_description));
                        accessibilityNodeInfoObtain3.setClickable(true);
                        accessibilityNodeInfoObtain3.setEnabled(seslSpinningDatePickerSpinner2.isEnabled());
                        if (this.f4084d != 2) {
                            accessibilityNodeInfoObtain3.setAccessibilityFocused(false);
                            accessibilityNodeInfoObtain3.addAction(64);
                        } else {
                            accessibilityNodeInfoObtain3.setAccessibilityFocused(true);
                            accessibilityNodeInfoObtain3.addAction(128);
                        }
                        rect2.set(scrollX2, i15, i16, i17);
                        accessibilityNodeInfoObtain3.setVisibleToUser(AbstractC0739a.m(rect2, seslSpinningDatePickerSpinner2));
                        accessibilityNodeInfoObtain3.setBoundsInParent(rect2);
                        seslSpinningDatePickerSpinner2.getLocationOnScreen(iArr2);
                        rect2.offset(iArr2[0], iArr2[1]);
                        accessibilityNodeInfoObtain3.setBoundsInScreen(rect2);
                        return accessibilityNodeInfoObtain3;
                    }
                    if (i5 == 3) {
                        return a(3, scrollX2, p4.f4274O - i14, (right2 - left2) + scrollX2, (bottom2 - top2) + scrollY2, f());
                    }
                }
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo3 = super.createAccessibilityNodeInfo(i5);
                return accessibilityNodeInfoCreateAccessibilityNodeInfo3 == null ? AccessibilityNodeInfo.obtain() : accessibilityNodeInfoCreateAccessibilityNodeInfo3;
        }
    }

    public String d(boolean z4) {
        String strF;
        D d2 = (D) this.f4085e;
        int i5 = d2.f4160o;
        if (d2.f4118Q) {
            i5 = d2.i(i5);
        }
        if (i5 <= d2.n) {
            r rVar = d2.f4168v;
            if (rVar != null) {
                strF = ((C0172n) rVar).f4528a.f4446u[i5];
            } else {
                String[] strArr = d2.f4158l;
                strF = strArr == null ? d2.f(i5) : strArr[i5 - d2.f4159m];
            }
        } else {
            strF = null;
        }
        if (strF == null || !z4) {
            return strF;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strF);
        sb.append(", ");
        return B.f.w(sb, d2.f4144d, ", ");
    }

    public final String e() {
        switch (this.f4081a) {
            case 0:
                D d2 = (D) this.f4085e;
                int i5 = d2.f4161p;
                if (i5 == 1 || !d2.f4163q) {
                    i5 = 1;
                }
                int i6 = d2.f4160o - i5;
                if (d2.f4118Q) {
                    i6 = d2.i(i6);
                }
                int i7 = d2.f4159m;
                if (i6 < i7) {
                    return null;
                }
                r rVar = d2.f4168v;
                if (rVar != null) {
                    return ((C0172n) rVar).f4528a.f4446u[i6];
                }
                String[] strArr = d2.f4158l;
                return strArr == null ? d2.f(i6) : strArr[i6 - i7];
            default:
                P p4 = (P) this.f4085e;
                Calendar calendar = (Calendar) p4.f4304m.clone();
                calendar.add(5, -1);
                p4.getClass();
                if (calendar.compareTo(p4.f4302k) < 0) {
                    return null;
                }
                p4.getClass();
                StringBuilder sb = new StringBuilder();
                sb.append(p4.d(calendar));
                sb.append(", ");
                return B.f.w(sb, p4.f4288c, ", ");
        }
    }

    public final String f() {
        switch (this.f4081a) {
            case 0:
                D d2 = (D) this.f4085e;
                int i5 = d2.f4161p;
                if (i5 == 1 || !d2.f4163q) {
                    i5 = 1;
                }
                int i6 = d2.f4160o + i5;
                if (d2.f4118Q) {
                    i6 = d2.i(i6);
                }
                if (i6 > d2.n) {
                    return null;
                }
                r rVar = d2.f4168v;
                if (rVar != null) {
                    return ((C0172n) rVar).f4528a.f4446u[i6];
                }
                String[] strArr = d2.f4158l;
                return strArr == null ? d2.f(i6) : strArr[i6 - d2.f4159m];
            default:
                P p4 = (P) this.f4085e;
                Calendar calendar = (Calendar) p4.f4304m.clone();
                calendar.add(5, 1);
                p4.getClass();
                if (calendar.compareTo(p4.f4303l) > 0) {
                    return null;
                }
                p4.getClass();
                StringBuilder sb = new StringBuilder();
                sb.append(p4.d(calendar));
                sb.append(", ");
                return B.f.w(sb, p4.f4288c, ", ");
        }
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i5) {
        switch (this.f4081a) {
            case 0:
                if (!TextUtils.isEmpty(str)) {
                    String lowerCase = str.toLowerCase();
                    ArrayList arrayList = new ArrayList();
                    if (i5 == -1) {
                        b(lowerCase, 1, arrayList);
                        b(lowerCase, 2, arrayList);
                        b(lowerCase, 3, arrayList);
                    } else if (i5 != 1 && i5 != 2 && i5 != 3) {
                        break;
                    } else {
                        b(lowerCase, i5, arrayList);
                    }
                    break;
                } else {
                    break;
                }
            default:
                if (!TextUtils.isEmpty(str)) {
                    String lowerCase2 = str.toLowerCase();
                    ArrayList arrayList2 = new ArrayList();
                    if (i5 == -1) {
                        b(lowerCase2, 1, arrayList2);
                        b(lowerCase2, 2, arrayList2);
                        b(lowerCase2, 3, arrayList2);
                    } else if (i5 != 1 && i5 != 2 && i5 != 3) {
                        break;
                    } else {
                        b(lowerCase2, i5, arrayList2);
                    }
                    break;
                } else {
                    break;
                }
        }
        return Collections.emptyList();
    }

    public final void i(int i5, int i6, String str) {
        switch (this.f4081a) {
            case 0:
                D d2 = (D) this.f4085e;
                if (d2.f4136Z0.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i6);
                    accessibilityEventObtain.setClassName(Button.class.getName());
                    accessibilityEventObtain.setPackageName(d2.f4232a.getPackageName());
                    accessibilityEventObtain.getText().add(str);
                    accessibilityEventObtain.setEnabled(((SeslNumberPicker) d2.f4233b).isEnabled());
                    accessibilityEventObtain.setSource((SeslNumberPicker) d2.f4233b, i5);
                    SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
                    seslNumberPicker.requestSendAccessibilityEvent(seslNumberPicker, accessibilityEventObtain);
                    break;
                }
                break;
            default:
                P p4 = (P) this.f4085e;
                if (p4.f4264I0.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i6);
                    accessibilityEventObtain2.setClassName(Button.class.getName());
                    accessibilityEventObtain2.setPackageName(p4.f4232a.getPackageName());
                    accessibilityEventObtain2.getText().add(str);
                    accessibilityEventObtain2.setEnabled(((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled());
                    accessibilityEventObtain2.setSource((SeslSpinningDatePickerSpinner) p4.f4233b, i5);
                    SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
                    seslSpinningDatePickerSpinner.requestSendAccessibilityEvent(seslSpinningDatePickerSpinner, accessibilityEventObtain2);
                    break;
                }
                break;
        }
    }

    public final void j(int i5, int i6) {
        switch (this.f4081a) {
            case 0:
                D d2 = (D) this.f4085e;
                if (i5 == 1) {
                    if (d2.f4118Q || d2.f4160o > d2.f4159m) {
                        i(i5, i6, e());
                        break;
                    }
                } else if (i5 == 2) {
                    if (d2.f4136Z0.isEnabled()) {
                        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i6);
                        EditText editText = d2.f4147e;
                        editText.onInitializeAccessibilityEvent(accessibilityEventObtain);
                        editText.onPopulateAccessibilityEvent(accessibilityEventObtain);
                        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
                        accessibilityEventObtain.setSource(seslNumberPicker, 2);
                        seslNumberPicker.requestSendAccessibilityEvent(seslNumberPicker, accessibilityEventObtain);
                        break;
                    }
                } else if (i5 == 3) {
                    if (d2.f4118Q || d2.f4160o < d2.n) {
                        i(i5, i6, f());
                        break;
                    }
                }
                break;
            default:
                P p4 = (P) this.f4085e;
                if (i5 == 1) {
                    p4.getClass();
                    if (p4.f4304m.compareTo(p4.f4302k) > 0) {
                        i(i5, i6, e());
                        break;
                    }
                } else if (i5 == 2) {
                    if (p4.f4264I0.isEnabled()) {
                        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i6);
                        Context context = p4.f4232a;
                        accessibilityEventObtain2.setPackageName(context.getPackageName());
                        accessibilityEventObtain2.getText().add(c() + context.getString(R.string.sesl_date_picker_switch_to_calendar_description));
                        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
                        accessibilityEventObtain2.setEnabled(seslSpinningDatePickerSpinner.isEnabled());
                        accessibilityEventObtain2.setSource(seslSpinningDatePickerSpinner, 2);
                        seslSpinningDatePickerSpinner.requestSendAccessibilityEvent(seslSpinningDatePickerSpinner, accessibilityEventObtain2);
                        break;
                    }
                } else if (i5 == 3) {
                    p4.getClass();
                    if (p4.f4304m.compareTo(p4.f4303l) < 0) {
                        i(i5, i6, f());
                        break;
                    }
                }
                break;
        }
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i5, int i6, Bundle bundle) {
        switch (this.f4081a) {
            case 0:
                D d2 = (D) this.f4085e;
                if (!d2.n0) {
                    int right = ((SeslNumberPicker) d2.f4233b).getRight();
                    int bottom = ((SeslNumberPicker) d2.f4233b).getBottom();
                    if (i5 != -1) {
                        if (i5 != 1) {
                            if (i5 == 2) {
                                EditText editText = d2.f4147e;
                                if (i6 == 1) {
                                    if (((SeslNumberPicker) d2.f4233b).isEnabled() && !editText.isFocused()) {
                                        break;
                                    }
                                } else if (i6 != 2) {
                                    if (i6 != 16) {
                                        if (i6 != 32) {
                                            if (i6 != 64) {
                                                if (i6 != 128) {
                                                    break;
                                                } else if (this.f4084d == i5) {
                                                    this.f4084d = Integer.MIN_VALUE;
                                                    j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
                                                    ((SeslNumberPicker) d2.f4233b).invalidate(0, d2.f4131X, right, d2.f4133Y);
                                                }
                                            } else if (this.f4084d != i5) {
                                                this.f4084d = i5;
                                                j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
                                                ((SeslNumberPicker) d2.f4233b).invalidate(0, d2.f4131X, right, d2.f4133Y);
                                            }
                                        } else if (((SeslNumberPicker) d2.f4233b).isEnabled()) {
                                            d2.f4126U = true;
                                            if (d2.g0) {
                                                d2.m0 = true;
                                            }
                                        }
                                    } else if (((SeslNumberPicker) d2.f4233b).isEnabled()) {
                                        if (d2.g0) {
                                            d2.x();
                                        }
                                    }
                                } else if (((SeslNumberPicker) d2.f4233b).isEnabled() && editText.isFocused()) {
                                    editText.clearFocus();
                                }
                            } else {
                                if (i5 == 3) {
                                    if (i6 != 16) {
                                        if (i6 != 64) {
                                            if (i6 == 128 && this.f4084d == i5) {
                                                this.f4084d = Integer.MIN_VALUE;
                                                j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
                                                ((SeslNumberPicker) d2.f4233b).invalidate(0, d2.f4133Y, right, bottom);
                                            }
                                        } else if (this.f4084d != i5) {
                                            this.f4084d = i5;
                                            j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
                                            ((SeslNumberPicker) d2.f4233b).invalidate(0, d2.f4133Y, right, bottom);
                                        }
                                    } else if (((SeslNumberPicker) d2.f4233b).isEnabled()) {
                                        d2.z(false);
                                        d2.c(true);
                                        j(i5, 1);
                                        d2.z(true);
                                    }
                                }
                                break;
                            }
                        } else if (i6 != 16) {
                            if (i6 != 64) {
                                if (i6 == 128 && this.f4084d == i5) {
                                    this.f4084d = Integer.MIN_VALUE;
                                    j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
                                    ((SeslNumberPicker) d2.f4233b).invalidate(0, 0, right, d2.f4131X);
                                }
                            } else if (this.f4084d != i5) {
                                this.f4084d = i5;
                                j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
                                ((SeslNumberPicker) d2.f4233b).invalidate(0, 0, right, d2.f4131X);
                            }
                        } else if (((SeslNumberPicker) d2.f4233b).isEnabled()) {
                            d2.z(false);
                            d2.c(false);
                            j(i5, 1);
                            d2.z(true);
                        }
                        break;
                    } else if (i6 != 64) {
                        if (i6 != 128) {
                            if (i6 != 4096) {
                                if (i6 == 8192) {
                                    if (((SeslNumberPicker) d2.f4233b).isEnabled()) {
                                        if (d2.f4118Q || d2.f4160o > d2.f4159m) {
                                            d2.z(false);
                                            d2.c(false);
                                            d2.z(true);
                                        }
                                    }
                                }
                            } else if (((SeslNumberPicker) d2.f4233b).isEnabled()) {
                                if (d2.f4118Q || d2.f4160o < d2.n) {
                                    d2.z(false);
                                    d2.c(true);
                                    d2.z(true);
                                }
                            }
                        } else if (this.f4084d == i5) {
                            this.f4084d = Integer.MIN_VALUE;
                            SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
                            Method methodP = i3.x.P(View.class, "clearAccessibilityFocus", new Class[0]);
                            if (methodP != null) {
                                i3.x.j0(seslNumberPicker, methodP, new Object[0]);
                            }
                        }
                    } else if (this.f4084d != i5) {
                        this.f4084d = i5;
                        SeslNumberPicker seslNumberPicker2 = (SeslNumberPicker) d2.f4233b;
                        Method methodP2 = i3.x.P(View.class, "requestAccessibilityFocus", new Class[0]);
                        if (methodP2 != null) {
                            Object objJ0 = i3.x.j0(seslNumberPicker2, methodP2, new Object[0]);
                            if (objJ0 instanceof Boolean) {
                                ((Boolean) objJ0).getClass();
                            }
                        }
                    }
                }
                break;
            default:
                P p4 = (P) this.f4085e;
                if (!p4.f4294f0) {
                    int right2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getRight();
                    int bottom2 = ((SeslSpinningDatePickerSpinner) p4.f4233b).getBottom();
                    if (i5 != -1) {
                        if (i5 != 1) {
                            if (i5 != 2) {
                                if (i5 == 3) {
                                    if (i6 != 16) {
                                        if (i6 != 64) {
                                            if (i6 == 128 && this.f4084d == i5) {
                                                this.f4084d = Integer.MIN_VALUE;
                                                j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
                                                ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, p4.f4274O, right2, bottom2);
                                            }
                                        } else if (this.f4084d != i5) {
                                            this.f4084d = i5;
                                            j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
                                            ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, p4.f4274O, right2, bottom2);
                                        }
                                    } else if (((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled()) {
                                        p4.r(false);
                                        p4.a(true);
                                        j(i5, 1);
                                        p4.r(true);
                                    }
                                }
                                break;
                            } else if (i6 != 16) {
                                if (i6 != 64) {
                                    if (i6 == 128 && this.f4084d == i5) {
                                        this.f4084d = Integer.MIN_VALUE;
                                        j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
                                        ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, p4.f4273N, right2, p4.f4274O);
                                    }
                                } else if (this.f4084d != i5) {
                                    this.f4084d = i5;
                                    j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
                                    ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, p4.f4273N, right2, p4.f4274O);
                                }
                            } else if (((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled()) {
                                p4.s();
                            }
                        } else if (i6 != 16) {
                            if (i6 != 64) {
                                if (i6 == 128 && this.f4084d == i5) {
                                    this.f4084d = Integer.MIN_VALUE;
                                    j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
                                    ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, 0, right2, p4.f4273N);
                                }
                            } else if (this.f4084d != i5) {
                                this.f4084d = i5;
                                j(i5, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
                                ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, 0, right2, p4.f4273N);
                            }
                        } else if (((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled()) {
                            p4.r(false);
                            p4.a(false);
                            j(i5, 1);
                            p4.r(true);
                        }
                        break;
                    } else if (i6 != 64) {
                        if (i6 != 128) {
                            if (i6 != 4096) {
                                if (i6 == 8192) {
                                    if (((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled() && p4.f4304m.compareTo(p4.f4302k) > 0) {
                                        p4.r(false);
                                        p4.a(false);
                                        p4.r(true);
                                    }
                                }
                            } else if (((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled() && p4.f4304m.compareTo(p4.f4303l) < 0) {
                                p4.r(false);
                                p4.a(true);
                                p4.r(true);
                            }
                        } else if (this.f4084d == i5) {
                            this.f4084d = Integer.MIN_VALUE;
                            SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
                            Method methodP3 = i3.x.P(View.class, "clearAccessibilityFocus", new Class[0]);
                            if (methodP3 != null) {
                                i3.x.j0(seslSpinningDatePickerSpinner, methodP3, new Object[0]);
                            }
                        }
                    } else if (this.f4084d != i5) {
                        this.f4084d = i5;
                        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner2 = (SeslSpinningDatePickerSpinner) p4.f4233b;
                        Method methodP4 = i3.x.P(View.class, "requestAccessibilityFocus", new Class[0]);
                        if (methodP4 != null) {
                            Object objJ02 = i3.x.j0(seslSpinningDatePickerSpinner2, methodP4, new Object[0]);
                            if (objJ02 instanceof Boolean) {
                                ((Boolean) objJ02).getClass();
                            }
                        }
                    }
                }
                break;
        }
        return false;
    }

    public A(D d2) {
        this.f4081a = 0;
        this.f4085e = d2;
        this.f4082b = new Rect();
        this.f4083c = new int[2];
        this.f4084d = Integer.MIN_VALUE;
    }
}

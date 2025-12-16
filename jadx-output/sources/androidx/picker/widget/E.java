package androidx.picker.widget;

import android.content.Context;
import android.graphics.Rect;
import android.text.format.DateUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.wssyncmldm.R;
import dalvik.system.PathClassLoader;
import f1.AbstractC0420a;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class E extends S.b {

    /* renamed from: q, reason: collision with root package name */
    public final Rect f4178q;

    /* renamed from: r, reason: collision with root package name */
    public final Calendar f4179r;

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ H f4180s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(H h5, View view) {
        super(view);
        this.f4180s = h5;
        this.f4178q = new Rect();
        this.f4179r = Calendar.getInstance();
    }

    @Override // S.b
    public final int n(float f, float f5) {
        H h5 = this.f4180s;
        int iC = h5.c(f, f5);
        if (h5.f4212h0 && iC < h5.f4188I) {
            return Integer.MIN_VALUE;
        }
        if (h5.f4214i0 && iC > h5.f4189J) {
            return Integer.MIN_VALUE;
        }
        h5.getClass();
        int iB = h5.b() + iC;
        if (h5.f4183C != 3) {
            return iB;
        }
        int i5 = iB + 6;
        return i5 - (i5 % 7);
    }

    @Override // S.b
    public final void o(ArrayList arrayList) {
        H h5 = this.f4180s;
        int iB = h5.b();
        for (int i5 = 1; i5 <= 42; i5++) {
            int i6 = i5 - iB;
            if ((h5.f4183C != 3 || i5 % 7 == 0) && ((!h5.f4212h0 || i6 >= h5.f4188I) && (!h5.f4214i0 || i6 <= h5.f4189J))) {
                arrayList.add(Integer.valueOf(i5));
            }
        }
    }

    @Override // S.b
    public final boolean s(int i5, int i6) {
        if (i6 != 16) {
            return false;
        }
        H h5 = this.f4180s;
        int iB = i5 - h5.b();
        if ((h5.f4212h0 && iB < h5.f4188I) || (h5.f4214i0 && iB > h5.f4189J)) {
            return true;
        }
        if (iB > 0) {
            int i7 = h5.f4187H;
            if (iB <= i7) {
                int i8 = h5.f4213i;
                int i9 = h5.f4211h;
                if (h5.f4202b0 != null) {
                    h5.playSoundEffect(0);
                    ((SeslDatePicker) h5.f4202b0).k(h5, i8, i9, iB);
                }
                h5.f4201a0.y(h5.b() + iB, 1);
            } else if (h5.f4206d0) {
                int i10 = h5.f4211h + 1;
                if (i10 > 11) {
                    h5.k(h5.f4213i + 1, 0, iB - i7, false);
                } else {
                    h5.k(h5.f4213i, i10, iB - i7, false);
                }
            } else {
                Calendar calendar = Calendar.getInstance();
                calendar.clear();
                calendar.set(h5.f4213i, h5.f4211h, h5.f4187H);
                calendar.add(5, iB - h5.f4187H);
                h5.k(calendar.get(1), calendar.get(2), calendar.get(5), false);
            }
        } else if (h5.f4206d0) {
            int i11 = h5.f4211h;
            boolean z4 = h5.f4208e0;
            int i12 = i11 - (!z4);
            if (i12 < 0) {
                h5.k(h5.f4213i - 1, i12, h5.e(11, z4, h5.f4213i - 1) + iB, true);
            } else {
                h5.k(h5.f4213i, i12, h5.e(i12, z4, h5.f4213i) + iB, true);
            }
        } else {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.clear();
            calendar2.set(h5.f4213i, h5.f4211h, 1);
            calendar2.add(5, iB - 1);
            h5.k(calendar2.get(1), calendar2.get(2), calendar2.get(5), true);
        }
        return true;
    }

    @Override // S.b
    public final void t(int i5, AccessibilityEvent accessibilityEvent) {
        H h5 = this.f4180s;
        int iB = i5 - h5.b();
        if (accessibilityEvent.getEventType() == 32768) {
            h5.l0 = iB;
            h5.m0 = false;
        }
        if (accessibilityEvent.getEventType() == 65536) {
            h5.l0 = -1;
            h5.m0 = true;
        }
        if (h5.f4183C != 3) {
            accessibilityEvent.setContentDescription(z(iB));
            return;
        }
        int i6 = (((h5.f4184D - (h5.f4186G - 1)) - 1) + iB) % 7;
        if (i6 == 0) {
            i6 = 7;
        }
        accessibilityEvent.setContentDescription(String.format(h5.getResources().getString(R.string.sesl_date_picker_week_select_content_description), z((iB - i6) + 1), z((7 - i6) + iB)));
    }

    @Override // S.b
    public final void v(int i5, K.h hVar) {
        H h5 = this.f4180s;
        int iB = i5 - h5.b();
        int i6 = h5.E;
        int i7 = (int) (h5.f4210g.getResources().getDisplayMetrics().density * (-1.0f));
        int i8 = h5.f4215j;
        int i9 = h5.f4217k / 7;
        int iB2 = h5.b() + (iB - 1);
        int i10 = iB2 / 7;
        int i11 = iB2 % 7;
        int i12 = (i10 * i8) + i7;
        int i13 = h5.f4183C;
        Rect rect = this.f4178q;
        if (i13 == 3) {
            rect.set(0, i12, h5.f4217k, i8 + i12);
        } else {
            int i14 = (i11 * i9) + i6;
            rect.set(i14, i12, i9 + i14, i8 + i12);
        }
        int i15 = h5.f4183C;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
        if (i15 == 3) {
            int i16 = (((h5.f4184D - (h5.f4186G - 1)) - 1) + iB) % 7;
            if (i16 == 0) {
                i16 = 7;
            }
            accessibilityNodeInfo.setContentDescription(String.format(h5.getResources().getString(R.string.sesl_date_picker_week_select_content_description), z((iB - i16) + 1), z((7 - i16) + iB)));
        } else {
            accessibilityNodeInfo.setContentDescription(z(iB));
        }
        accessibilityNodeInfo.setBoundsInParent(rect);
        hVar.a(16);
        int i17 = h5.f4185F;
        if (i17 == -1 || iB != i17) {
            return;
        }
        hVar.a(4);
        accessibilityNodeInfo.setClickable(true);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(true);
    }

    public final String z(int i5) {
        H h5 = this.f4180s;
        int i6 = h5.f4213i;
        int i7 = h5.f4211h;
        Calendar calendar = this.f4179r;
        calendar.set(i6, i7, i5);
        String dateTime = DateUtils.formatDateTime(h5.f4210g, calendar.getTimeInMillis(), 22);
        if (!h5.f4206d0 || h5.f4209f0 == null) {
            return dateTime;
        }
        int i8 = h5.f4213i;
        int i9 = h5.f4211h;
        boolean z4 = h5.f4208e0;
        if (i5 <= 0) {
            i9 -= !z4;
            z4 = h5.f4216j0;
            if (i9 < 0) {
                i8--;
                i9 = 11;
            }
            i5 += h5.e(i9, z4, i8);
        } else {
            int i10 = h5.f4187H;
            if (i5 > i10) {
                z4 = h5.k0;
                i9 += !z4;
                if (i9 > 11) {
                    i8++;
                    i9 = 0;
                }
                i5 -= i10;
            }
        }
        int i11 = i8;
        int i12 = i5;
        int i13 = i9;
        boolean z5 = z4;
        PathClassLoader pathClassLoader = h5.f4209f0;
        h5.getClass();
        AbstractC0420a.f(pathClassLoader, null, i11, i13, i12, z5);
        PathClassLoader pathClassLoader2 = h5.f4209f0;
        h5.getClass();
        int iK = AbstractC0420a.K(pathClassLoader2, null);
        PathClassLoader pathClassLoader3 = h5.f4209f0;
        h5.getClass();
        int iH = AbstractC0420a.H(pathClassLoader3, null);
        PathClassLoader pathClassLoader4 = h5.f4209f0;
        h5.getClass();
        int iZ = AbstractC0420a.z(pathClassLoader4, null);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(iK, iH, iZ);
        PathClassLoader pathClassLoader5 = h5.f4209f0;
        Context context = h5.getContext();
        Method methodU = L2.b.u(pathClassLoader5, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils", "buildLunarDateString", Calendar.class, Context.class);
        if (methodU != null) {
            Object objJ0 = i3.x.j0(null, methodU, calendar2, context);
            if (objJ0 instanceof String) {
                return (String) objJ0;
            }
        }
        return null;
    }
}

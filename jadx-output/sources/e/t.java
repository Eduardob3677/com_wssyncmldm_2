package e;

import J.InterfaceC0043q;
import J.h0;
import J.q0;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import com.wssyncmldm.R;
import j.InterfaceC0519t;
import j.MenuC0508i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import k.InterfaceC0579c0;
import k.N1;
import z.AbstractC0934b;

/* loaded from: classes.dex */
public final class t implements InterfaceC0043q, InterfaceC0579c0, InterfaceC0519t {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6788c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C f6789d;

    public /* synthetic */ t(C c2, int i5) {
        this.f6788c = i5;
        this.f6789d = c2;
    }

    @Override // J.InterfaceC0043q
    public q0 Y(View view, q0 q0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z4;
        View view2;
        q0 q0VarB;
        boolean z5;
        int iD = q0Var.d();
        C c2 = this.f6789d;
        c2.getClass();
        int iD2 = q0Var.d();
        ActionBarContextView actionBarContextView = c2.f6643v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z4 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) c2.f6643v.getLayoutParams();
            if (c2.f6643v.isShown()) {
                if (c2.f6627e0 == null) {
                    c2.f6627e0 = new Rect();
                    c2.f6628f0 = new Rect();
                }
                Rect rect = c2.f6627e0;
                Rect rect2 = c2.f6628f0;
                rect.set(q0Var.b(), q0Var.d(), q0Var.c(), q0Var.a());
                ViewGroup viewGroup = c2.f6600A;
                Method method = N1.f7721a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception e5) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e5);
                    }
                }
                int i5 = rect.top;
                int i6 = rect.left;
                int i7 = rect.right;
                ViewGroup viewGroup2 = c2.f6600A;
                WeakHashMap weakHashMap = J.Q.f940a;
                q0 q0VarA = J.J.a(viewGroup2);
                int iB = q0VarA == null ? 0 : q0VarA.b();
                int iC = q0VarA == null ? 0 : q0VarA.c();
                if (marginLayoutParams.topMargin == i5 && marginLayoutParams.leftMargin == i6 && marginLayoutParams.rightMargin == i7) {
                    z5 = false;
                } else {
                    marginLayoutParams.topMargin = i5;
                    marginLayoutParams.leftMargin = i6;
                    marginLayoutParams.rightMargin = i7;
                    z5 = true;
                }
                Context context = c2.f6633k;
                if (i5 <= 0 || c2.f6602C != null) {
                    View view3 = c2.f6602C;
                    if (view3 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                        int i8 = marginLayoutParams2.height;
                        int i9 = marginLayoutParams.topMargin;
                        if (i8 != i9 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                            marginLayoutParams2.height = i9;
                            marginLayoutParams2.leftMargin = iB;
                            marginLayoutParams2.rightMargin = iC;
                            c2.f6602C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view4 = new View(context);
                    c2.f6602C = view4;
                    view4.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iB;
                    layoutParams.rightMargin = iC;
                    c2.f6600A.addView(c2.f6602C, -1, layoutParams);
                }
                View view5 = c2.f6602C;
                z = view5 != null;
                if (z && view5.getVisibility() != 0) {
                    View view6 = c2.f6602C;
                    view6.setBackgroundColor((view6.getWindowSystemUiVisibility() & 8192) != 0 ? AbstractC0934b.a(context, R.color.abc_decor_view_status_guard_light) : AbstractC0934b.a(context, R.color.abc_decor_view_status_guard));
                }
                if (!c2.f6606H && z && !c2.f6632j0) {
                    iD2 = 0;
                }
                c2.x();
                View viewFindViewById = c2.f6634l.findViewById(android.R.id.content);
                if (viewFindViewById instanceof ContentFrameLayout) {
                    if (viewFindViewById.getPaddingTop() != 0) {
                        marginLayoutParams.topMargin = 0;
                    }
                    if (viewFindViewById.getPaddingRight() != 0) {
                        marginLayoutParams.rightMargin = 0;
                    }
                    if (viewFindViewById.getPaddingLeft() != 0) {
                        marginLayoutParams.leftMargin = 0;
                    }
                }
                z4 = z;
                z = z5;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z4 = false;
            } else {
                z4 = false;
                z = false;
            }
            if (z) {
                c2.f6643v.setLayoutParams(marginLayoutParams);
                View view7 = c2.f6602C;
                if (view7 != null) {
                    ViewGroup.LayoutParams layoutParams2 = view7.getLayoutParams();
                    if (layoutParams2.height != iD2) {
                        layoutParams2.height = iD2;
                        c2.f6602C.setLayoutParams(layoutParams2);
                    }
                }
            }
        }
        View view8 = c2.f6602C;
        if (view8 != null) {
            view8.setVisibility(z4 ? 0 : 8);
        }
        if (iD != iD2) {
            int iB2 = q0Var.b();
            int iC2 = q0Var.c();
            int iA = q0Var.a();
            h0 h0Var = new h0(q0Var);
            h0Var.e(B.c.b(iB2, iD2, iC2, iA));
            q0VarB = h0Var.b();
            view2 = view;
        } else {
            view2 = view;
            q0VarB = q0Var;
        }
        return J.Q.e(view2, q0VarB);
    }

    @Override // j.InterfaceC0519t
    public void a(MenuC0508i menuC0508i, boolean z4) {
        B b3;
        switch (this.f6788c) {
            case 2:
                this.f6789d.s(menuC0508i);
                break;
            default:
                MenuC0508i menuC0508iK = menuC0508i.k();
                int i5 = 0;
                boolean z5 = menuC0508iK != menuC0508i;
                if (z5) {
                    menuC0508i = menuC0508iK;
                }
                C c2 = this.f6789d;
                B[] bArr = c2.f6610L;
                int length = bArr != null ? bArr.length : 0;
                while (true) {
                    if (i5 >= length) {
                        b3 = null;
                    } else {
                        b3 = bArr[i5];
                        if (b3 == null || b3.f6592h != menuC0508i) {
                            i5++;
                        }
                    }
                }
                if (b3 != null) {
                    if (!z5) {
                        c2.t(b3, z4);
                        break;
                    } else {
                        c2.r(b3.f6586a, b3, menuC0508iK);
                        c2.t(b3, true);
                        break;
                    }
                }
                break;
        }
    }

    @Override // j.InterfaceC0519t
    public boolean b(MenuC0508i menuC0508i) {
        Window.Callback callback;
        switch (this.f6788c) {
            case 2:
                Window.Callback callback2 = this.f6789d.f6634l.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, menuC0508i);
                    break;
                }
                break;
            default:
                if (menuC0508i == menuC0508i.k()) {
                    C c2 = this.f6789d;
                    if (c2.f6604F && (callback = c2.f6634l.getCallback()) != null && !c2.f6615R) {
                        callback.onMenuOpened(108, menuC0508i);
                        break;
                    }
                }
                break;
        }
        return true;
    }
}

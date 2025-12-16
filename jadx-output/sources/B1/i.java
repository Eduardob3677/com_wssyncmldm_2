package B1;

import J.Q;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import w.AbstractC0897a;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f210a;

    /* renamed from: b, reason: collision with root package name */
    public int f211b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f212c;

    /* renamed from: d, reason: collision with root package name */
    public final Runnable f213d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0897a f214e;

    public i(SideSheetBehavior sideSheetBehavior) {
        this.f210a = 1;
        this.f214e = sideSheetBehavior;
        this.f213d = new D1.b(3, this);
    }

    public final void a(int i5) {
        Runnable runnable = this.f213d;
        AbstractC0897a abstractC0897a = this.f214e;
        switch (this.f210a) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) abstractC0897a;
                WeakReference weakReference = bottomSheetBehavior.f5856U;
                if (weakReference != null && weakReference.get() != null) {
                    this.f211b = i5;
                    if (!this.f212c) {
                        View view = (View) bottomSheetBehavior.f5856U.get();
                        WeakHashMap weakHashMap = Q.f940a;
                        view.postOnAnimation((h) runnable);
                        this.f212c = true;
                        break;
                    }
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) abstractC0897a;
                WeakReference weakReference2 = sideSheetBehavior.f6062p;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.f211b = i5;
                    if (!this.f212c) {
                        View view2 = (View) sideSheetBehavior.f6062p.get();
                        WeakHashMap weakHashMap2 = Q.f940a;
                        view2.postOnAnimation((D1.b) runnable);
                        this.f212c = true;
                        break;
                    }
                }
                break;
        }
    }

    public i(BottomSheetBehavior bottomSheetBehavior) {
        this.f210a = 0;
        this.f214e = bottomSheetBehavior;
        this.f213d = new h(0, this);
    }
}

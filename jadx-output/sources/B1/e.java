package B1;

import K.r;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public final class e implements r {

    /* renamed from: c, reason: collision with root package name */
    public final int f201c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f202d;

    public /* synthetic */ e(int i5, Object obj) {
        this.f202d = obj;
        this.f201c = i5;
    }

    @Override // K.r
    public boolean i(View view) {
        ((BottomSheetBehavior) this.f202d).C(this.f201c);
        return true;
    }

    public e(int i5, G.i[] iVarArr) {
        this.f201c = i5;
        this.f202d = iVarArr;
    }
}

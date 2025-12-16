package A1;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.bottomappbar.BottomAppBar$Behavior;

/* loaded from: classes.dex */
public final class a implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f54a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f55b;

    public /* synthetic */ a(int i5, Object obj) {
        this.f54a = i5;
        this.f55b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        switch (this.f54a) {
            case 0:
                ((BottomAppBar$Behavior) this.f55b).getClass();
                throw null;
            default:
                NestedScrollView nestedScrollView = (NestedScrollView) this.f55b;
                nestedScrollView.post(nestedScrollView.g0);
                return;
        }
    }
}

package k;

import android.view.View;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class J0 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f7709a;

    public J0(SearchView searchView) {
        this.f7709a = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z4) {
        SearchView searchView = this.f7709a;
        View.OnFocusChangeListener onFocusChangeListener = searchView.f3382M;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(searchView, z4);
        }
    }
}

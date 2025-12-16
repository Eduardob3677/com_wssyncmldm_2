package k;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* renamed from: k.r0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0621r0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7978c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7979d;

    public /* synthetic */ C0621r0(int i5, Object obj) {
        this.f7978c = i5;
        this.f7979d = obj;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i5, long j3) {
        C0606l0 c0606l0;
        switch (this.f7978c) {
            case 0:
                if (i5 != -1 && (c0606l0 = ((C0633x0) this.f7979d).f8031e) != null) {
                    c0606l0.setListSelectionHidden(false);
                    break;
                }
                break;
            default:
                ((SearchView) this.f7979d).p(i5);
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i5 = this.f7978c;
    }
}

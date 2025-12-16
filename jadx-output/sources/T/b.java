package T;

import android.view.View;
import android.widget.AdapterView;
import androidx.databinding.h;

/* loaded from: classes.dex */
public final class b implements AdapterView.OnItemSelectedListener {

    /* renamed from: c, reason: collision with root package name */
    public final a f2705c;

    /* renamed from: d, reason: collision with root package name */
    public final h f2706d;

    public b(a aVar, h hVar) {
        this.f2705c = aVar;
        this.f2706d = hVar;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i5, long j3) {
        a aVar = this.f2705c;
        if (aVar != null) {
            aVar.onItemSelected(adapterView, view, i5, j3);
        }
        h hVar = this.f2706d;
        if (hVar != null) {
            hVar.onChange();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        h hVar = this.f2706d;
        if (hVar != null) {
            hVar.onChange();
        }
    }
}

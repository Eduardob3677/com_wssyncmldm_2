package F1;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* loaded from: classes.dex */
public final class b extends Z0.j {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f678b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f679c;

    public /* synthetic */ b(int i5, Object obj) {
        this.f678b = i5;
        this.f679c = obj;
    }

    private final void g0(int i5) {
    }

    @Override // Z0.j
    public final void W(int i5) {
        switch (this.f678b) {
            case 0:
                break;
            default:
                J1.k kVar = (J1.k) this.f679c;
                kVar.f1123d = true;
                J1.j jVar = (J1.j) kVar.f1124e.get();
                if (jVar != null) {
                    f fVar = (f) jVar;
                    fVar.v();
                    fVar.invalidateSelf();
                    break;
                }
                break;
        }
    }

    @Override // Z0.j
    public final void X(Typeface typeface, boolean z4) {
        switch (this.f678b) {
            case 0:
                Chip chip = (Chip) this.f679c;
                f fVar = chip.f5920g;
                chip.setText(fVar.f697H0 ? fVar.f694G : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z4) {
                    J1.k kVar = (J1.k) this.f679c;
                    kVar.f1123d = true;
                    J1.j jVar = (J1.j) kVar.f1124e.get();
                    if (jVar != null) {
                        f fVar2 = (f) jVar;
                        fVar2.v();
                        fVar2.invalidateSelf();
                        break;
                    }
                }
                break;
        }
    }
}

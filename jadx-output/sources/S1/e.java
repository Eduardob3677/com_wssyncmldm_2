package S1;

import com.google.android.material.internal.CheckableImageButton;

/* loaded from: classes.dex */
public final class e extends o {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f2477e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(n nVar, int i5) {
        super(nVar);
        this.f2477e = i5;
    }

    @Override // S1.o
    public void r() {
        switch (this.f2477e) {
            case 0:
                n nVar = this.f2520b;
                nVar.f2511q = null;
                CheckableImageButton checkableImageButton = nVar.f2504i;
                checkableImageButton.setOnLongClickListener(null);
                i3.x.b1(checkableImageButton, null);
                break;
        }
    }
}

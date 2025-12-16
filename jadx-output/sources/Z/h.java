package Z;

import androidx.fragment.app.Fragment;
import d3.i;

/* loaded from: classes.dex */
public abstract class h extends RuntimeException {

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f2992c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Fragment fragment, String str) {
        super(str);
        i.e("fragment", fragment);
        this.f2992c = fragment;
    }
}

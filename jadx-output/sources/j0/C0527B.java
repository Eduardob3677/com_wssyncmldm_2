package j0;

import android.database.Observable;

/* renamed from: j0.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0527B extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0528C) ((Observable) this).mObservers.get(size)).a();
        }
    }

    public final void c(int i5, Object obj, int i6) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0528C) ((Observable) this).mObservers.get(size)).b(i5, obj, i6);
        }
    }
}

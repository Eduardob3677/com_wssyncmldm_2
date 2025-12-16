package y;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class D implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f9678c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final Context f9679d;

    public D(Context context) {
        this.f9679d = context;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f9678c.iterator();
    }
}

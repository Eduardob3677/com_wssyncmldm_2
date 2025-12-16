package P1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class n extends t {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f2130c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Matrix f2131d;

    public n(ArrayList arrayList, Matrix matrix) {
        this.f2130c = arrayList;
        this.f2131d = matrix;
    }

    @Override // P1.t
    public final void a(Matrix matrix, O1.a aVar, int i5, Canvas canvas) {
        Iterator it = this.f2130c.iterator();
        while (it.hasNext()) {
            ((t) it.next()).a(this.f2131d, aVar, i5, canvas);
        }
    }
}

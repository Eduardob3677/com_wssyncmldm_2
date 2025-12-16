package D1;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.wssyncmldm.R;
import j0.G;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends G {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f459a;

    /* renamed from: b, reason: collision with root package name */
    public final List f460b;

    public d() {
        Paint paint = new Paint();
        this.f459a = paint;
        this.f460b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // j0.G
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        Paint paint = this.f459a;
        paint.setStrokeWidth(recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width));
        for (f fVar : this.f460b) {
            fVar.getClass();
            ThreadLocal threadLocal = B.a.f180a;
            float f = 1.0f - 0.0f;
            paint.setColor(Color.argb((int) ((Color.alpha(-16776961) * 0.0f) + (Color.alpha(-65281) * f)), (int) ((Color.red(-16776961) * 0.0f) + (Color.red(-65281) * f)), (int) ((Color.green(-16776961) * 0.0f) + (Color.green(-65281) * f)), (int) ((Color.blue(-16776961) * 0.0f) + (Color.blue(-65281) * f))));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).F0()) {
                float fE = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f5915p.e();
                float fA = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f5915p.a();
                fVar.getClass();
                canvas.drawLine(0.0f, fE, 0.0f, fA, paint);
            } else {
                float fB = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f5915p.b();
                float fC = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f5915p.c();
                fVar.getClass();
                canvas.drawLine(fB, 0.0f, fC, 0.0f, paint);
            }
        }
    }
}

package F0;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import androidx.picker.widget.C0165g;
import androidx.picker.widget.H;
import androidx.picker.widget.SeslDatePicker;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final DataSetObservable f661a = new DataSetObservable();

    /* renamed from: b, reason: collision with root package name */
    public DataSetObserver f662b;

    public final void a(ViewGroup viewGroup, int i5, H h5) {
        C0165g c0165g = (C0165g) this;
        PathInterpolator pathInterpolator = SeslDatePicker.u0;
        c0165g.f4516d.getClass();
        ((ViewPager) viewGroup).removeView(h5);
        c0165g.f4515c.remove(i5);
    }

    public abstract int b();

    public final void c() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.f662b;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f661a.notifyChanged();
    }
}

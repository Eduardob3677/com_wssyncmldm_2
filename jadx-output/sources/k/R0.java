package k;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class R0 extends TouchDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final View f7727a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f7728b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f7729c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f7730d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7731e;
    public boolean f;

    public R0(Rect rect, Rect rect2, SearchView.SearchAutoComplete searchAutoComplete) {
        super(rect, searchAutoComplete);
        int scaledTouchSlop = ViewConfiguration.get(searchAutoComplete.getContext()).getScaledTouchSlop();
        this.f7731e = scaledTouchSlop;
        Rect rect3 = new Rect();
        this.f7728b = rect3;
        Rect rect4 = new Rect();
        this.f7730d = rect4;
        Rect rect5 = new Rect();
        this.f7729c = rect5;
        rect3.set(rect);
        rect4.set(rect);
        int i5 = -scaledTouchSlop;
        rect4.inset(i5, i5);
        rect5.set(rect2);
        this.f7727a = searchAutoComplete;
    }

    @Override // android.view.TouchDelegate
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        boolean z5;
        int x4 = (int) motionEvent.getX();
        int y3 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z6 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z5 = this.f;
                if (z5 && !this.f7730d.contains(x4, y3)) {
                    z6 = z5;
                    z4 = false;
                }
            } else {
                if (action == 3) {
                    z5 = this.f;
                    this.f = false;
                }
                z4 = true;
                z6 = false;
            }
            z6 = z5;
            z4 = true;
        } else if (this.f7728b.contains(x4, y3)) {
            this.f = true;
            z4 = true;
        } else {
            z4 = true;
            z6 = false;
        }
        if (!z6) {
            return false;
        }
        Rect rect = this.f7729c;
        View view = this.f7727a;
        if (!z4 || rect.contains(x4, y3)) {
            motionEvent.setLocation(x4 - rect.left, y3 - rect.top);
        } else {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}

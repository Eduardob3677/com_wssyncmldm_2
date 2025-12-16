package C0;

import J.Q;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import java.util.WeakHashMap;

/* renamed from: C0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0013c extends Property {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f264a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0013c(String str, int i5, Class cls) {
        super(cls, str);
        this.f264a = i5;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f264a) {
            case 0:
                return null;
            case 1:
                return null;
            case 2:
                return null;
            case 3:
                return null;
            case 4:
                return null;
            case 5:
                return Float.valueOf(((View) obj).getTransitionAlpha());
            case 6:
                WeakHashMap weakHashMap = Q.f940a;
                return ((View) obj).getClipBounds();
            default:
                return Float.valueOf(((SwitchCompat) obj).f3469A);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f264a) {
            case 0:
                C0016f c0016f = (C0016f) obj;
                PointF pointF = (PointF) obj2;
                c0016f.getClass();
                c0016f.f267a = Math.round(pointF.x);
                int iRound = Math.round(pointF.y);
                c0016f.f268b = iRound;
                int i5 = c0016f.f + 1;
                c0016f.f = i5;
                if (i5 == c0016f.f272g) {
                    int i6 = c0016f.f267a;
                    int i7 = c0016f.f269c;
                    int i8 = c0016f.f270d;
                    C0013c c0013c = A.f247a;
                    c0016f.f271e.setLeftTopRightBottom(i6, iRound, i7, i8);
                    c0016f.f = 0;
                    c0016f.f272g = 0;
                    break;
                }
                break;
            case 1:
                C0016f c0016f2 = (C0016f) obj;
                PointF pointF2 = (PointF) obj2;
                c0016f2.getClass();
                c0016f2.f269c = Math.round(pointF2.x);
                int iRound2 = Math.round(pointF2.y);
                c0016f2.f270d = iRound2;
                int i9 = c0016f2.f272g + 1;
                c0016f2.f272g = i9;
                if (c0016f2.f == i9) {
                    int i10 = c0016f2.f267a;
                    int i11 = c0016f2.f268b;
                    int i12 = c0016f2.f269c;
                    C0013c c0013c2 = A.f247a;
                    c0016f2.f271e.setLeftTopRightBottom(i10, i11, i12, iRound2);
                    c0016f2.f = 0;
                    c0016f2.f272g = 0;
                    break;
                }
                break;
            case 2:
                View view = (View) obj;
                PointF pointF3 = (PointF) obj2;
                int left = view.getLeft();
                int top = view.getTop();
                int iRound3 = Math.round(pointF3.x);
                int iRound4 = Math.round(pointF3.y);
                C0013c c0013c3 = A.f247a;
                view.setLeftTopRightBottom(left, top, iRound3, iRound4);
                break;
            case 3:
                View view2 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                int iRound5 = Math.round(pointF4.x);
                int iRound6 = Math.round(pointF4.y);
                int right = view2.getRight();
                int bottom = view2.getBottom();
                C0013c c0013c4 = A.f247a;
                view2.setLeftTopRightBottom(iRound5, iRound6, right, bottom);
                break;
            case 4:
                View view3 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int iRound7 = Math.round(pointF5.x);
                int iRound8 = Math.round(pointF5.y);
                int width = view3.getWidth() + iRound7;
                int height = view3.getHeight() + iRound8;
                C0013c c0013c5 = A.f247a;
                view3.setLeftTopRightBottom(iRound7, iRound8, width, height);
                break;
            case 5:
                ((View) obj).setTransitionAlpha(((Float) obj2).floatValue());
                break;
            case 6:
                WeakHashMap weakHashMap = Q.f940a;
                ((View) obj).setClipBounds((Rect) obj2);
                break;
            default:
                ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
                break;
        }
    }
}

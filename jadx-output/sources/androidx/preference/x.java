package androidx.preference;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import j0.b0;

/* loaded from: classes.dex */
public final class x extends j0.G {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f4739a;

    /* renamed from: b, reason: collision with root package name */
    public int f4740b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4741c = true;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ z f4742d;

    public x(z zVar) {
        this.f4742d = zVar;
    }

    @Override // j0.G
    public final void c(Canvas canvas, RecyclerView recyclerView) {
        z zVar;
        H h5;
        int i5;
        int i6;
        boolean z4;
        int childCount = recyclerView.getChildCount();
        int paddingLeft = recyclerView.getPaddingLeft() + recyclerView.getLeft();
        int right = recyclerView.getRight() - recyclerView.getPaddingRight();
        int i7 = 0;
        while (true) {
            zVar = this.f4742d;
            if (i7 >= childCount) {
                break;
            }
            View childAt = recyclerView.getChildAt(i7);
            b0 b0VarU = recyclerView.U(childAt);
            if (b0VarU instanceof H) {
                h5 = (H) b0VarU;
                i5 = h5.f4593A;
            } else {
                h5 = null;
                i5 = 0;
            }
            boolean z5 = zVar.getResources().getConfiguration().getLayoutDirection() == 1;
            int height = childAt.getHeight() + ((int) childAt.getY());
            if (this.f4739a != null) {
                b0 b0VarU2 = recyclerView.U(childAt);
                if ((b0VarU2 instanceof H) && ((H) b0VarU2).f4601z) {
                    z4 = this.f4741c;
                    int iIndexOfChild = recyclerView.indexOfChild(childAt);
                    i6 = childCount;
                    if (iIndexOfChild < recyclerView.getChildCount() - 1) {
                        b0 b0VarU3 = recyclerView.U(recyclerView.getChildAt(iIndexOfChild + 1));
                        z4 = (b0VarU3 instanceof H) && ((H) b0VarU3).f4600y;
                    }
                } else {
                    i6 = childCount;
                    z4 = false;
                }
                if (z4) {
                    this.f4739a.setBounds((z5 ? 0 : i5) + paddingLeft, height, (z5 ? -i5 : 0) + right, this.f4740b + height);
                    this.f4739a.draw(canvas);
                }
            } else {
                i6 = childCount;
            }
            if (zVar.mIsRoundedCorner && h5 != null && h5.f4595C) {
                if (h5.f4596D) {
                    zVar.mSubheaderRoundedCorner.setRoundedCorners(h5.f4594B);
                    zVar.mSubheaderRoundedCorner.drawRoundedCorner(childAt, canvas);
                } else {
                    zVar.mRoundedCorner.setRoundedCorners(h5.f4594B);
                    zVar.mRoundedCorner.drawRoundedCorner(childAt, canvas);
                }
            }
            i7++;
            childCount = i6;
        }
        if (zVar.mIsRoundedCorner) {
            zVar.mListRoundedCorner.drawRoundedCorner(canvas, B.c.b(zVar.mLeft, zVar.mTop, zVar.mRight, zVar.mBottom));
        }
    }
}

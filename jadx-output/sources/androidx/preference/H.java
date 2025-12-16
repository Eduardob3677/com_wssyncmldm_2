package androidx.preference;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import j0.b0;

/* loaded from: classes.dex */
public final class H extends b0 {

    /* renamed from: A, reason: collision with root package name */
    public int f4593A;

    /* renamed from: B, reason: collision with root package name */
    public int f4594B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f4595C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f4596D;

    /* renamed from: v, reason: collision with root package name */
    public final Drawable f4597v;

    /* renamed from: w, reason: collision with root package name */
    public final ColorStateList f4598w;

    /* renamed from: x, reason: collision with root package name */
    public final SparseArray f4599x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f4600y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f4601z;

    public H(View view) {
        super(view);
        SparseArray sparseArray = new SparseArray(4);
        this.f4599x = sparseArray;
        this.f4593A = 0;
        this.f4595C = false;
        this.f4596D = false;
        TextView textView = (TextView) view.findViewById(R.id.title);
        sparseArray.put(R.id.title, textView);
        sparseArray.put(R.id.summary, view.findViewById(R.id.summary));
        sparseArray.put(R.id.icon, view.findViewById(R.id.icon));
        sparseArray.put(com.wssyncmldm.R.id.icon_frame, view.findViewById(com.wssyncmldm.R.id.icon_frame));
        sparseArray.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
        this.f4597v = view.getBackground();
        if (textView != null) {
            this.f4598w = textView.getTextColors();
        }
    }

    public final View s(int i5) {
        SparseArray sparseArray = this.f4599x;
        View view = (View) sparseArray.get(i5);
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.f7406a.findViewById(i5);
        if (viewFindViewById != null) {
            sparseArray.put(i5, viewFindViewById);
        }
        return viewFindViewById;
    }
}

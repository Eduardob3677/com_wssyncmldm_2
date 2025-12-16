package k;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class Y0 extends ArrayAdapter {

    /* renamed from: c, reason: collision with root package name */
    public int f7811c;

    /* renamed from: d, reason: collision with root package name */
    public int f7812d;

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i5, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        d3.i.e("parent", viewGroup);
        View dropDownView = super.getDropDownView(i5, view, viewGroup);
        if (view == null) {
            this.f7811c = dropDownView.getPaddingTop();
            this.f7812d = dropDownView.getPaddingBottom();
        }
        int dimensionPixelSize = dropDownView.getResources().getDimensionPixelSize(R.dimen.sesl_popup_menu_first_last_item_vertical_edge_padding);
        int i6 = this.f7811c + dimensionPixelSize;
        int i7 = this.f7812d + dimensionPixelSize;
        int paddingLeft = dropDownView.getPaddingLeft();
        if (i5 != 0) {
            i6 = this.f7811c;
        }
        int paddingRight = dropDownView.getPaddingRight();
        if (i5 != getCount() - 1) {
            i7 = this.f7812d;
        }
        dropDownView.setPadding(paddingLeft, i6, paddingRight, i7);
        return dropDownView;
    }
}

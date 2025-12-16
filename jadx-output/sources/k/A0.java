package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import j.C0505f;
import j.C0510k;
import j.MenuC0508i;

/* loaded from: classes.dex */
public final class A0 extends C0606l0 {

    /* renamed from: o, reason: collision with root package name */
    public final int f7654o;

    /* renamed from: p, reason: collision with root package name */
    public final int f7655p;

    /* renamed from: q, reason: collision with root package name */
    public InterfaceC0635y0 f7656q;

    /* renamed from: r, reason: collision with root package name */
    public C0510k f7657r;

    public A0(Context context, boolean z4) {
        super(context, z4);
        if (1 == AbstractC0637z0.a(context.getResources().getConfiguration())) {
            this.f7654o = 21;
            this.f7655p = 22;
        } else {
            this.f7654o = 22;
            this.f7655p = 21;
        }
    }

    @Override // k.C0606l0, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        C0505f c0505f;
        int headersCount;
        int iPointToPosition;
        int i5;
        if (this.f7656q != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                c0505f = (C0505f) headerViewListAdapter.getWrappedAdapter();
            } else {
                c0505f = (C0505f) adapter;
                headersCount = 0;
            }
            C0510k item = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i5 = iPointToPosition - headersCount) < 0 || i5 >= c0505f.getCount()) ? null : c0505f.getItem(i5);
            C0510k c0510k = this.f7657r;
            if (c0510k != item) {
                MenuC0508i menuC0508i = c0505f.f7221c;
                if (c0510k != null) {
                    this.f7656q.f(menuC0508i, c0510k);
                }
                this.f7657r = item;
                if (item != null) {
                    this.f7656q.a(menuC0508i, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i5, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i5 == this.f7654o) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i5 != this.f7655p) {
            return super.onKeyDown(i5, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (C0505f) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C0505f) adapter).f7221c.c(false);
        return true;
    }

    public void setHoverListener(InterfaceC0635y0 interfaceC0635y0) {
        this.f7656q = interfaceC0635y0;
    }

    @Override // k.C0606l0, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}

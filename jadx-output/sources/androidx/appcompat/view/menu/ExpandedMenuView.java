package androidx.appcompat.view.menu;

import J.r0;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import j.C0510k;
import j.InterfaceC0507h;
import j.InterfaceC0522w;
import j.MenuC0508i;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements InterfaceC0507h, InterfaceC0522w, AdapterView.OnItemClickListener {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f3245d = {R.attr.background, R.attr.divider};

    /* renamed from: c, reason: collision with root package name */
    public MenuC0508i f3246c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        r0 r0VarM = r0.m(context, attributeSet, f3245d, R.attr.listViewStyle, 0);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(r0VarM.g(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(r0VarM.g(1));
        }
        r0VarM.n();
    }

    @Override // j.InterfaceC0522w
    public final void a(MenuC0508i menuC0508i) {
        this.f3246c = menuC0508i;
    }

    @Override // j.InterfaceC0507h
    public final boolean b(C0510k c0510k) {
        return this.f3246c.q(c0510k, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        b((C0510k) getAdapter().getItem(i5));
    }
}

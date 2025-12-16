package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import j.InterfaceC0522w;
import j.MenuC0508i;

/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements InterfaceC0522w {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1));
    }

    @Override // j.InterfaceC0522w
    public final void a(MenuC0508i menuC0508i) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}

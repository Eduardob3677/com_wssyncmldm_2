package com.google.android.material.appbar.model;

import R2.m;
import android.content.Context;
import d3.i;
import i3.InterfaceC0482c;
import i3.InterfaceC0485f;
import kotlin.Metadata;
import y1.AbstractC0928a;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001\u000eB\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\fR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/google/android/material/appbar/model/AppBarModel;", "Ly1/a;", "T", "", "Li3/c;", "kclazz", "Landroid/content/Context;", "context", "<init>", "(Li3/c;Landroid/content/Context;)V", "create", "()Ly1/a;", "Li3/c;", "Landroid/content/Context;", "OnClickListener", "material_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public class AppBarModel<T extends AbstractC0928a> {
    private final Context context;
    private final InterfaceC0482c kclazz;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;", "", "material_release"}, k = 1, mv = {1, 8, 0})
    public interface OnClickListener {
        void onClick();
    }

    public AppBarModel(InterfaceC0482c interfaceC0482c, Context context) {
        i.e("kclazz", interfaceC0482c);
        i.e("context", context);
        this.kclazz = interfaceC0482c;
        this.context = context;
    }

    public T create() {
        return (T) init((AbstractC0928a) ((InterfaceC0485f) m.L0(this.kclazz.k())).i(this.context, null));
    }

    public AbstractC0928a init(AbstractC0928a abstractC0928a) {
        i.e("moduleView", abstractC0928a);
        return abstractC0928a;
    }
}

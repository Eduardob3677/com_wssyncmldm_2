package com.google.android.material.appbar.model;

import R2.u;
import android.content.Context;
import com.google.android.material.appbar.model.view.ViewPagerAppBarView;
import d3.AbstractC0393e;
import d3.i;
import i3.InterfaceC0482c;
import java.util.List;
import kotlin.Metadata;
import y1.AbstractC0928a;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0011B5\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0016\b\u0002\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\t0\u00030\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00028\u00002\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\t0\u00030\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;", "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;", "T", "Lcom/google/android/material/appbar/model/AppBarModel;", "Li3/c;", "kclazz", "Landroid/content/Context;", "context", "", "Ly1/a;", "appBarModels", "<init>", "(Li3/c;Landroid/content/Context;Ljava/util/List;)V", "moduleView", "init", "(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;", "Ljava/util/List;", "Builder", "material_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public class ViewPagerAppBarModel<T extends ViewPagerAppBarView> extends AppBarModel<T> {
    private final List<AppBarModel<? extends AbstractC0928a>> appBarModels;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/material/appbar/model/ViewPagerAppBarModel$Builder;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "material_release"}, k = 1, mv = {1, 8, 0})
    public static final class Builder {
        public Builder(Context context) {
            i.e("context", context);
        }
    }

    public /* synthetic */ ViewPagerAppBarModel(InterfaceC0482c interfaceC0482c, Context context, List list, int i5, AbstractC0393e abstractC0393e) {
        this(interfaceC0482c, context, (i5 & 4) != 0 ? u.f2325c : list);
    }

    @Override // com.google.android.material.appbar.model.AppBarModel
    public T init(T moduleView) {
        i.e("moduleView", moduleView);
        return moduleView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ViewPagerAppBarModel(InterfaceC0482c interfaceC0482c, Context context, List<? extends AppBarModel<? extends AbstractC0928a>> list) {
        super(interfaceC0482c, context);
        i.e("kclazz", interfaceC0482c);
        i.e("context", context);
        i.e("appBarModels", list);
        this.appBarModels = list;
    }
}

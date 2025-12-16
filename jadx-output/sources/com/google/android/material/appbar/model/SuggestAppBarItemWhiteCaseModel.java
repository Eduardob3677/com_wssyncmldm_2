package com.google.android.material.appbar.model;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.material.appbar.model.AppBarModel;
import com.google.android.material.appbar.model.view.SuggestAppBarItemWhiteCaseView;
import d3.i;
import i3.InterfaceC0482c;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0013B9\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;", "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;", "T", "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;", "Li3/c;", "kclazz", "Landroid/content/Context;", "context", "", "title", "Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;", "closeClickListener", "Lcom/google/android/material/appbar/model/ButtonListModel;", "buttonListModel", "<init>", "(Li3/c;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V", "moduleView", "init", "(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;", "Builder", "material_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public class SuggestAppBarItemWhiteCaseModel<T extends SuggestAppBarItemWhiteCaseView> extends SuggestAppBarItemModel<T> {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "material_release"}, k = 1, mv = {1, 8, 0})
    public static final class Builder {
        public Builder(Context context) {
            i.e("context", context);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestAppBarItemWhiteCaseModel(InterfaceC0482c interfaceC0482c, Context context, String str, AppBarModel.OnClickListener onClickListener, ButtonListModel buttonListModel) {
        super(interfaceC0482c, context, str, onClickListener, buttonListModel);
        i.e("kclazz", interfaceC0482c);
        i.e("context", context);
        i.e("buttonListModel", buttonListModel);
    }

    @Override // com.google.android.material.appbar.model.SuggestAppBarItemModel, com.google.android.material.appbar.model.SuggestAppBarModel, com.google.android.material.appbar.model.AppBarModel
    public T init(T moduleView) throws Resources.NotFoundException {
        i.e("moduleView", moduleView);
        moduleView.setModel(this);
        moduleView.setTitle(getTitle());
        moduleView.setCloseClickListener(getCloseClickListener());
        moduleView.setButtonModules(getButtonListModel());
        Context context = moduleView.getContext();
        i.d("context", context);
        moduleView.updateResource(context);
        return moduleView;
    }
}

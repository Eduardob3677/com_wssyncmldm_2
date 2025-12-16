package com.google.android.material.appbar.model;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.material.appbar.model.AppBarModel;
import com.google.android.material.appbar.model.view.SuggestAppBarView;
import d3.i;
import i3.InterfaceC0482c;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0017\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u001cB;\b\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/google/android/material/appbar/model/SuggestAppBarModel;", "Lcom/google/android/material/appbar/model/view/SuggestAppBarView;", "T", "Lcom/google/android/material/appbar/model/AppBarModel;", "Li3/c;", "kclazz", "Landroid/content/Context;", "context", "", "title", "Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;", "closeClickListener", "Lcom/google/android/material/appbar/model/ButtonListModel;", "buttonListModel", "<init>", "(Li3/c;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V", "moduleView", "init", "(Lcom/google/android/material/appbar/model/view/SuggestAppBarView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarView;", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;", "getCloseClickListener", "()Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;", "Lcom/google/android/material/appbar/model/ButtonListModel;", "getButtonListModel", "()Lcom/google/android/material/appbar/model/ButtonListModel;", "Builder", "material_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public class SuggestAppBarModel<T extends SuggestAppBarView> extends AppBarModel<T> {
    private final ButtonListModel buttonListModel;
    private final AppBarModel.OnClickListener closeClickListener;
    private final String title;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/material/appbar/model/SuggestAppBarModel$Builder;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "material_release"}, k = 1, mv = {1, 8, 0})
    public static final class Builder {
        public Builder(Context context) {
            i.e("context", context);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestAppBarModel(InterfaceC0482c interfaceC0482c, Context context, String str, AppBarModel.OnClickListener onClickListener, ButtonListModel buttonListModel) {
        super(interfaceC0482c, context);
        i.e("kclazz", interfaceC0482c);
        i.e("context", context);
        i.e("buttonListModel", buttonListModel);
        this.title = str;
        this.closeClickListener = onClickListener;
        this.buttonListModel = buttonListModel;
    }

    public final ButtonListModel getButtonListModel() {
        return this.buttonListModel;
    }

    public final AppBarModel.OnClickListener getCloseClickListener() {
        return this.closeClickListener;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.android.material.appbar.model.AppBarModel
    public T init(T moduleView) throws Resources.NotFoundException {
        i.e("moduleView", moduleView);
        moduleView.setModel(this);
        moduleView.setTitle(this.title);
        moduleView.setCloseClickListener(this.closeClickListener);
        moduleView.setButtonModules(this.buttonListModel);
        Context context = moduleView.getContext();
        i.d("context", context);
        moduleView.updateResource(context);
        return moduleView;
    }
}

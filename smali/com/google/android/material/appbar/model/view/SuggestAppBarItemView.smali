.class public Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;
.super Lcom/google/android/material/appbar/model/view/SuggestAppBarView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\u00020\n2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015H\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/widget/Button;",
        "button",
        "LQ2/k;",
        "updateButton",
        "(Landroid/widget/Button;)V",
        "",
        "getSuggestButtonTextColor",
        "()I",
        "getButtonTextColor",
        "inflate",
        "()V",
        "updateResource",
        "(Landroid/content/Context;)V",
        "",
        "buttons",
        "updateButtons",
        "(Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "getRootView",
        "()Landroid/view/ViewGroup;",
        "setRootView",
        "(Landroid/view/ViewGroup;)V",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILd3/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->inflate()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILd3/e;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getButtonTextColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f060333

    if-eqz v0, :cond_1

    invoke-static {p0}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f060334

    goto :goto_0

    :cond_1
    invoke-static {p0}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7f060335

    :goto_0
    invoke-static {p0, v1}, Lz/b;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private final getSuggestButtonTextColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f06044b

    if-eqz v0, :cond_1

    invoke-static {p0}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f06044c

    goto :goto_0

    :cond_1
    invoke-static {p0}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7f06044d

    :goto_0
    invoke-static {p0, v1}, Lz/b;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private final updateButton(Landroid/widget/Button;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->getButtonTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x2

    const v0, 0x7f07031d

    invoke-static {p1, v0, p0}, LW1/a;->k(Landroid/widget/TextView;II)V

    return-void
.end method


# virtual methods
.method public final getRootView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public inflate()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7f0a01ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f0801fc

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setTitleView(Landroid/widget/TextView;)V

    const v1, 0x7f0a0266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    invoke-static {}, Lo4/a;->m()I

    move-result v2

    invoke-static {v2, v1}, Lp0/a;->p(ILandroid/view/View;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setClose(Landroid/widget/ImageButton;)V

    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setBottomLayout(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->updateResource(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final setRootView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public final updateButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buttons"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->updateButton(Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateResource(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->updateResource(Landroid/content/Context;)V

    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const v0, 0x7f0604b1

    goto :goto_0

    :cond_1
    const v0, 0x7f0604b2

    :goto_0
    invoke-static {p1, v0}, Lz/b;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const v1, 0x7f07032b

    invoke-static {p1, v1, v0}, LW1/a;->k(Landroid/widget/TextView;II)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->getButtons()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->updateButtons(Ljava/util/List;)V

    return-void
.end method

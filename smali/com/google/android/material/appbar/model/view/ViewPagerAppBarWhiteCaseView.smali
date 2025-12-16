.class public Lcom/google/android/material/appbar/model/view/ViewPagerAppBarWhiteCaseView;
.super Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarWhiteCaseView;",
        "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/content/res/ColorStateList;",
        "getViewPagerBackgroundColorStateList",
        "(Landroid/content/Context;)Landroid/content/res/ColorStateList;",
        "",
        "getViewPagerIndicatorOffWithWhiteCaseColor",
        "(Landroid/content/Context;)I",
        "getViewPagerIndicatorOnWithWhiteCaseColor",
        "LQ2/k;",
        "updateResource",
        "(Landroid/content/Context;)V",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarWhiteCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILd3/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILd3/e;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarWhiteCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getViewPagerBackgroundColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const-string p0, "context"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0604ae

    goto :goto_0

    :cond_0
    const p0, 0x7f0604af

    goto :goto_0

    :cond_1
    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    const p0, 0x7f0604b0

    :goto_0
    invoke-static {p1, p0}, Lz/b;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string p1, "valueOf(\n            Ses\u2026)\n            )\n        )"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getViewPagerIndicatorOffWithWhiteCaseColor(Landroid/content/Context;)I
    .locals 1

    const-string p0, "context"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0602fd

    goto :goto_0

    :cond_0
    const p0, 0x7f0602fa

    goto :goto_0

    :cond_1
    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0602fe

    goto :goto_0

    :cond_2
    const p0, 0x7f0602fb

    :goto_0
    invoke-static {p1, p0}, Lz/b;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private final getViewPagerIndicatorOnWithWhiteCaseColor(Landroid/content/Context;)I
    .locals 1

    const-string p0, "context"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    const p0, 0x7f060301

    goto :goto_0

    :cond_0
    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    const p0, 0x7f060302

    :goto_0
    invoke-static {p1, p0}, Lz/b;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public updateResource(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarWhiteCaseView;->getViewPagerBackgroundColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getIndicator()Lk/f1;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x7f0801fb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarWhiteCaseView;->getViewPagerIndicatorOffWithWhiteCaseColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lk/f1;->setDefaultCircle(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarWhiteCaseView;->getViewPagerIndicatorOnWithWhiteCaseColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Lk/f1;->setSelectCircle(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.class public abstract Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;
.super Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004*\u0001-\u0008\'\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000cH\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0016\u0010\u0010J\u001d\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u0019\u0010\u0010R\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001c\u0010#\u001a\n \"*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001c\u0010%\u001a\n \"*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010$R\u0016\u0010\'\u001a\u00020&8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010(R\u0016\u0010+\u001a\u00020*8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010.\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/\u00a8\u00060"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;",
        "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager",
        "",
        "index",
        "LQ2/k;",
        "moveNextAndRemove",
        "(Landroidx/viewpager2/widget/ViewPager2;I)V",
        "internalRemoveItem",
        "(I)V",
        "count",
        "initIndicator",
        "addIndicator",
        "()V",
        "position",
        "removeIndicator",
        "",
        "animate",
        "removeItem",
        "(IZ)V",
        "",
        "deleteScaleDuration",
        "J",
        "deleteAlphaDuration",
        "isDeleteAnimatorRunning",
        "Z",
        "Landroid/animation/PropertyValuesHolder;",
        "kotlin.jvm.PlatformType",
        "deleteScaleX",
        "Landroid/animation/PropertyValuesHolder;",
        "deleteScaleY",
        "Landroid/animation/ValueAnimator;",
        "deleteScaleAnimator",
        "Landroid/animation/ValueAnimator;",
        "deleteAlphaAnimator",
        "Landroid/animation/AnimatorSet;",
        "deleteAnimator",
        "Landroid/animation/AnimatorSet;",
        "y1/b",
        "pageChangeCallback",
        "Ly1/b;",
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
.field private final deleteAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final deleteAlphaDuration:J

.field private deleteAnimator:Landroid/animation/AnimatorSet;

.field private deleteScaleAnimator:Landroid/animation/ValueAnimator;

.field private final deleteScaleDuration:J

.field private final deleteScaleX:Landroid/animation/PropertyValuesHolder;

.field private final deleteScaleY:Landroid/animation/PropertyValuesHolder;

.field private isDeleteAnimatorRunning:Z

.field private final pageChangeCallback:Ly1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILd3/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleDuration:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaDuration:J

    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleX:Landroid/animation/PropertyValuesHolder;

    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleY:Landroid/animation/PropertyValuesHolder;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v3, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const v0, 0x7f0c0022

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Ly1/b;

    invoke-direct {p1, p0}, Ly1/b;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->pageChangeCallback:Ly1/b;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILd3/e;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->moveNextAndRemove$lambda$11$lambda$10(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V

    return-void
.end method

.method public static final synthetic access$isDeleteAnimatorRunning$p(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->isDeleteAnimatorRunning:Z

    return p0
.end method

.method public static final synthetic access$moveNextAndRemove(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->moveNextAndRemove(Landroidx/viewpager2/widget/ViewPager2;I)V

    return-void
.end method

.method private final internalRemoveItem(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeIndicator(I)V

    return-void
.end method

.method private final moveNextAndRemove(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 3

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Lj0/A;

    move-result-object v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    invoke-virtual {v0}, Lj0/A;->a()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lj0/A;->a()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ne p2, v1, :cond_1

    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    if-ge p2, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->isDeleteAnimatorRunning:Z

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    new-instance v0, LA/p;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p0, v1}, LA/p;-><init>(ILjava/lang/Object;I)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method private static final moveNextAndRemove$lambda$11$lambda$10(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->isDeleteAnimatorRunning:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    return-void
.end method


# virtual methods
.method public final addIndicator()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getIndicator()Lk/f1;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lk/d1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lk/d1;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lk/f1;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lk/d1;->c:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Lk/d1;->e:Z

    invoke-virtual {v0, v1}, Lk/d1;->a(Z)V

    iget-object v1, p0, Lk/f1;->f:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lk/d1;->d:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Lk/d1;->e:Z

    invoke-virtual {v0, v1}, Lk/d1;->a(Z)V

    new-instance v1, LA2/d;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, LA2/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lk/e1;

    invoke-direct {v1, p0, v0}, Lk/e1;-><init>(Lk/f1;Lk/d1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070514

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lk/f1;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lk/f1;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method public final initIndicator(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->addIndicator()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->pageChangeCallback:Ly1/b;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->e:LH0/f;

    iget-object p1, p1, LH0/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final removeIndicator(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getIndicator()Lk/f1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk/f1;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Lj0/A;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj0/A;->a()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, p1}, Lk/f1;->b(I)V

    :cond_0
    return-void
.end method

.method public abstract removeItem(I)V
.end method

.method public final removeItem(IZ)V
    .locals 5

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->internalRemoveItem(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Lj0/A;

    move-result-object v0

    if-eqz v0, :cond_a

    if-ltz p1, :cond_a

    invoke-virtual {v0}, Lj0/A;->a()I

    move-result v0

    if-ge p1, v0, :cond_a

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->Q(I)Lj0/b0;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lj0/b0;->a:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleX:Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleY:Landroid/animation/PropertyValuesHolder;

    filled-new-array {v1, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0023

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v3, v4}, [Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-static {v3}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    goto :goto_1

    :cond_5
    const-string p0, "deleteScaleAnimator"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    new-instance v3, Ly1/c;

    invoke-direct {v3, p0, p2, p1}, Ly1/c;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_7
    const-string p0, "deleteAnimator"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->internalRemoveItem(I)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Index: 0, Size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    return-void
.end method

.class public final Ly1/b;
.super LH0/j;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/b;->a:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    iget-object p0, p0, Ly1/b;->a:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;

    invoke-static {p0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->access$isDeleteAnimatorRunning$p(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getIndicator()Lk/f1;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lk/f1;->setSelectedPosition(I)V

    :goto_0
    return-void
.end method

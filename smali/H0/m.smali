.class public final LH0/m;
.super Lj0/x;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, LH0/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lj0/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lj0/J;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, LH0/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->p:Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LH0/d;

    iget-boolean v0, v0, LH0/d;->m:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj0/x;->e(Lj0/J;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

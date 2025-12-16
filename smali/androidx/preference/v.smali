.class public final Landroidx/preference/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic c:Landroidx/preference/z;


# direct methods
.method public constructor <init>(Landroidx/preference/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/v;->c:Landroidx/preference/z;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 10

    iget-object v0, p0, Landroidx/preference/v;->c:Landroidx/preference/z;

    iget-object v1, v0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lj0/A;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v5, 0x140

    const/4 v6, 0x1

    if-gt v4, v5, :cond_0

    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    const v7, 0x3f8ccccd    # 1.1f

    cmpl-float v5, v5, v7

    if-gez v5, :cond_1

    :cond_0
    const/16 v5, 0x19b

    if-ge v4, v5, :cond_2

    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    const v7, 0x3fa66666    # 1.3f

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_2

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    instance-of v7, v1, Landroidx/preference/D;

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    move-object v7, v1

    check-cast v7, Landroidx/preference/D;

    invoke-static {v0, v7, v5, v4}, Landroidx/preference/z;->access$100(Landroidx/preference/z;Landroidx/preference/D;II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0, v5}, Landroidx/preference/z;->access$202(Landroidx/preference/z;I)I

    move v4, v2

    :goto_1
    iget-object v5, v7, Landroidx/preference/D;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v7, v4}, Landroidx/preference/D;->k(I)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Landroidx/preference/D;->o(Landroidx/preference/Preference;)Z

    move-result v9

    if-eqz v9, :cond_3

    instance-of v5, v5, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lj0/A;->a:Lj0/B;

    invoke-virtual {v5, v4, v8, v6}, Lj0/B;->c(ILjava/lang/Object;I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v1, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1}, Landroidx/preference/z;->access$302(Landroidx/preference/z;I)I

    iget-object v1, v0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {v0, v8}, Landroidx/preference/z;->access$002(Landroidx/preference/z;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_5
    return v2
.end method

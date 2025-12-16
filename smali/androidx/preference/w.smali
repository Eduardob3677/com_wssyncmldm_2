.class public final Landroidx/preference/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/preference/Preference;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/preference/z;


# direct methods
.method public constructor <init>(Landroidx/preference/z;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/w;->e:Landroidx/preference/z;

    iput-object p2, p0, Landroidx/preference/w;->c:Landroidx/preference/Preference;

    iput-object p3, p0, Landroidx/preference/w;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/preference/w;->e:Landroidx/preference/z;

    iget-object v1, v0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lj0/A;

    move-result-object v1

    instance-of v2, v1, Landroidx/preference/D;

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter must implement PreferencePositionCallback"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v2, p0, Landroidx/preference/w;->d:Ljava/lang/String;

    iget-object p0, p0, Landroidx/preference/w;->c:Landroidx/preference/Preference;

    if-eqz p0, :cond_2

    move-object v3, v1

    check-cast v3, Landroidx/preference/D;

    invoke-virtual {v3, p0}, Landroidx/preference/D;->l(Landroidx/preference/Preference;)I

    move-result v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/preference/D;

    invoke-virtual {v3, v2}, Landroidx/preference/D;->m(Ljava/lang/String;)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object p0, v0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->v0(I)V

    goto :goto_1

    :cond_3
    new-instance v3, Landroidx/preference/y;

    iget-object v0, v0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    check-cast v4, Landroidx/preference/D;

    invoke-direct {v3, v4, v0, p0, v2}, Landroidx/preference/y;-><init>(Landroidx/preference/D;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object p0, v1, Lj0/A;->a:Lj0/B;

    invoke-virtual {p0, v3}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.class public final Landroidx/preference/y;
.super Lj0/C;
.source "SourceFile"


# instance fields
.field public final a:Lj0/A;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroidx/preference/Preference;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/preference/D;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/y;->a:Lj0/A;

    iput-object p2, p0, Landroidx/preference/y;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Landroidx/preference/y;->c:Landroidx/preference/Preference;

    iput-object p4, p0, Landroidx/preference/y;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/y;->c()V

    return-void
.end method

.method public final b(ILjava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/y;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/y;->a:Lj0/A;

    iget-object v1, v0, Lj0/A;->a:Lj0/B;

    invoke-virtual {v1, p0}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/preference/y;->c:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/preference/D;

    invoke-virtual {v0, v1}, Landroidx/preference/D;->l(Landroidx/preference/Preference;)I

    move-result v0

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/preference/D;

    iget-object v1, p0, Landroidx/preference/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/D;->m(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Landroidx/preference/y;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->v0(I)V

    :cond_1
    return-void
.end method

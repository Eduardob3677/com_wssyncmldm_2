.class public final LD3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/g;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/io/Serializable;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LD3/e;Lr3/j;LH3/e;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LD3/f;->a:I

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containingDeclaration"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeParameterOwner"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/f;->c:Ljava/lang/Object;

    iput-object p2, p0, LD3/f;->d:Ljava/lang/Object;

    iput p4, p0, LD3/f;->b:I

    invoke-interface {p3}, LH3/e;->u()Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    :cond_0
    iput-object p2, p0, LD3/f;->e:Ljava/io/Serializable;

    iget-object p1, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p1, LD3/e;

    iget-object p1, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p1, p1, LD3/a;->a:Lg4/o;

    new-instance p2, LA3/d;

    const/4 p3, 0x3

    invoke-direct {p2, p3, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, LD3/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/a;Landroidx/room/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LD3/f;->a:I

    iget v0, p2, Landroidx/room/k;->version:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LD3/f;->b:I

    iput-object p1, p0, LD3/f;->c:Ljava/lang/Object;

    iput-object p2, p0, LD3/f;->d:Ljava/lang/Object;

    iput-object p3, p0, LD3/f;->e:Ljava/io/Serializable;

    iput-object p4, p0, LD3/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj0/y;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LD3/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LD3/f;->b:I

    iput-object p1, p0, LD3/f;->c:Ljava/lang/Object;

    new-instance p1, Lj0/c;

    invoke-direct {p1}, Lj0/c;-><init>()V

    iput-object p1, p0, LD3/f;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LD3/f;->e:Ljava/io/Serializable;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "deleting the database file: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "delete failed: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lx3/C;)Lr3/Q;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LD3/f;->f:Ljava/lang/Object;

    check-cast v0, Lg4/j;

    invoke-virtual {v0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE3/I;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p0, LD3/e;

    iget-object p0, p0, LD3/e;->e:Ljava/lang/Object;

    check-cast p0, LD3/g;

    invoke-interface {p0, p1}, LD3/g;->a(Lx3/C;)Lr3/Q;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast v0, Lj0/y;

    if-gez p2, :cond_0

    iget-object p2, v0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LD3/f;->h(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v1, Lj0/c;

    invoke-virtual {v1, p2, p3}, Lj0/c;->e(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, LD3/f;->k(Landroid/view/View;)V

    :cond_1
    iget-object p0, v0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LH0/g;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lj0/K;

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne p3, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pages must fill the whole ViewPager2 (use match_parent)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast v0, Lj0/y;

    if-gez p2, :cond_0

    iget-object p2, v0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LD3/f;->h(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v1, Lj0/c;

    invoke-virtual {v1, p2, p4}, Lj0/c;->e(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, LD3/f;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object p0

    iget-object p4, v0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lj0/b0;->l()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lj0/b0;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p4, p2}, Lh0/c;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reAttach "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v0, p0, Lj0/b0;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lj0/b0;->j:I

    goto :goto_2

    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->l2:Z

    if-nez p0, :cond_6

    :goto_2
    invoke-static {p4, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "No ViewHolder found for child: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p4, p3}, Lh0/c;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(I)V
    .locals 3

    invoke-virtual {p0, p1}, LD3/f;->h(I)I

    move-result p1

    iget-object v0, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v0, Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->f(I)Z

    iget-object p0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p0, Lj0/y;

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lj0/b0;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lj0/b0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called detach on an already detached child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lh0/c;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tmpDetach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lj0/b0;->b(I)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->l2:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_1
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No view at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lh0/c;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, LD3/f;->h(I)I

    move-result p1

    iget-object p0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p0, Lj0/y;

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast v0, Lj0/y;

    iget-object v0, v0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object p0, p0, LD3/f;->e:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public h(I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast v1, Lj0/y;

    iget-object v1, v1, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v3, Lj0/c;

    invoke-virtual {v3, v2}, Lj0/c;->b(I)I

    move-result v4

    sub-int v4, v2, v4

    sub-int v4, p1, v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Lj0/c;->d(I)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return v0
.end method

.method public i(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p0, Lj0/y;

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p0, Lj0/y;

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public k(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LD3/f;->e:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p0, Lj0/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p1, Lj0/b0;->q:I

    const/4 v1, -0x1

    iget-object v2, p1, Lj0/b0;->a:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iput v0, p1, Lj0/b0;->p:I

    goto :goto_0

    :cond_0
    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p1, Lj0/b0;->p:I

    :goto_0
    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iput v1, p1, Lj0/b0;->q:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d2:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public l(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, LD3/f;->e:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public m(Lz0/b;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, LD3/f;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/room/a;

    if-eqz v4, :cond_c

    iget-object v4, v4, Landroidx/room/a;->d:Landroidx/room/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto/16 :goto_7

    :cond_0
    const/4 v6, 0x0

    if-le v3, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    :goto_1
    move v11, v2

    :cond_3
    if-eqz v7, :cond_4

    if-ge v11, v3, :cond_a

    goto :goto_2

    :cond_4
    if-le v11, v3, :cond_a

    :goto_2
    iget-object v12, v4, Landroidx/room/i;->a:Lo/l;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Lo/l;->c(Ljava/lang/Integer;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/l;

    if-nez v12, :cond_5

    :goto_3
    move-object v4, v13

    goto :goto_7

    :cond_5
    iget v14, v12, Lo/l;->e:I

    if-eqz v7, :cond_6

    add-int/lit8 v14, v14, -0x1

    move v15, v9

    goto :goto_4

    :cond_6
    move v15, v14

    move v14, v6

    :goto_4
    if-eq v14, v15, :cond_9

    iget-object v5, v12, Lo/l;->c:[I

    aget v5, v5, v14

    if-eqz v7, :cond_7

    if-gt v5, v3, :cond_8

    if-le v5, v11, :cond_8

    goto :goto_5

    :cond_7
    if-lt v5, v3, :cond_8

    if-ge v5, v11, :cond_8

    :goto_5
    iget-object v11, v12, Lo/l;->d:[Ljava/lang/Object;

    aget-object v11, v11, v14

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v5

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    add-int/2addr v14, v10

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_6
    if-nez v5, :cond_3

    goto :goto_3

    :cond_a
    move-object v4, v8

    :goto_7
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/a;

    invoke-virtual {v3, v1}, Lv0/a;->migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_8

    :cond_b
    iget-object v2, v0, LD3/f;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/room/k;

    invoke-virtual {v2, v1}, Landroidx/room/k;->validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-virtual/range {p0 .. p1}, LD3/f;->o(Lz0/b;)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "A migration from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LD3/f;->e:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast p0, Lj0/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p1, Lj0/b0;->p:I

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p1, Lj0/b0;->q:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d2:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, LJ/Q;->a:Ljava/util/WeakHashMap;

    iget-object p0, p1, Lj0/b0;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    const/4 p0, 0x0

    iput p0, p1, Lj0/b0;->p:I

    :cond_1
    return-void
.end method

.method public o(Lz0/b;)V
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v0}, Lz0/b;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LD3/f;->e:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz0/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LD3/f;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v1, Lj0/c;

    invoke-virtual {v1}, Lj0/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LD3/f;->e:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

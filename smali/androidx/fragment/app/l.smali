.class public final Landroidx/fragment/app/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, LJ/V;->b(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Landroidx/fragment/app/l;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static i(Lo/b;Landroid/view/View;)V
    .locals 4

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LJ/I;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/l;->i(Lo/b;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final l(Landroid/view/ViewGroup;Landroidx/fragment/app/Z;)Landroidx/fragment/app/l;
    .locals 2

    const-string v0, "container"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fragmentManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Z;->E()LZ0/h;

    move-result-object p1

    const-string v0, "fragmentManager.specialEffectsControllerFactory"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f0a024a

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/l;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/l;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/fragment/app/l;

    invoke-direct {v0, p0}, Landroidx/fragment/app/l;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static n(Lo/b;Ljava/util/Collection;)V
    .locals 2

    invoke-virtual {p0}, Lo/b;->entrySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "entries"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lo/h;

    invoke-virtual {p0}, Lo/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "entry"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LJ/I;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LR2/m;->H0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(IILandroidx/fragment/app/g0;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, LF/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    const-string v3, "fragmentStateManager.fragment"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/l;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/u0;->c(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Landroidx/fragment/app/u0;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/u0;-><init>(IILandroidx/fragment/app/g0;LF/f;)V

    iget-object p1, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/t0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/Object;Landroidx/fragment/app/u0;I)V

    iget-object p2, v2, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/t0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/Object;Landroidx/fragment/app/u0;I)V

    iget-object p0, v2, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final c(ILandroidx/fragment/app/g0;)V
    .locals 4

    const-string v0, "finalState"

    invoke-static {p1, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Landroidx/fragment/app/l;->b(IILandroidx/fragment/app/g0;)V

    return-void
.end method

.method public final d(Landroidx/fragment/app/g0;)V
    .locals 3

    const-string v0, "fragmentStateManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/fragment/app/l;->b(IILandroidx/fragment/app/g0;)V

    return-void
.end method

.method public final e(Landroidx/fragment/app/g0;)V
    .locals 3

    const-string v0, "fragmentStateManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Landroidx/fragment/app/l;->b(IILandroidx/fragment/app/g0;)V

    return-void
.end method

.method public final f(Landroidx/fragment/app/g0;)V
    .locals 4

    const-string v0, "fragmentStateManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p1}, Landroidx/fragment/app/l;->b(IILandroidx/fragment/app/g0;)V

    return-void
.end method

.method public final g(Ljava/util/ArrayList;Z)V
    .locals 40

    move-object/from16 v6, p0

    move/from16 v0, p2

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "operation.fragment.mView"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/fragment/app/u0;

    iget-object v11, v10, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v5, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v11}, LW1/a;->b(Landroid/view/View;)I

    move-result v11

    if-ne v11, v8, :cond_0

    iget v10, v10, Landroidx/fragment/app/u0;->a:I

    if-eq v10, v8, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object v10, v3

    check-cast v10, Landroidx/fragment/app/u0;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/fragment/app/u0;

    iget-object v13, v12, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v5, v13}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13}, LW1/a;->b(Landroid/view/View;)I

    move-result v13

    if-eq v13, v8, :cond_2

    iget v12, v12, Landroidx/fragment/app/u0;->a:I

    if-ne v12, v8, :cond_2

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    check-cast v11, Landroidx/fragment/app/u0;

    const-string v12, "FragmentManager"

    invoke-static {v12, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const-string v13, " to "

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "Executing operations from "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, LR2/m;->h1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static/range {p1 .. p1}, LR2/m;->U0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/fragment/app/u0;

    iget-object v8, v8, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Landroidx/fragment/app/u0;

    iget-object v4, v4, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/z;

    iget-object v9, v8, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/z;

    iget v1, v9, Landroidx/fragment/app/z;->b:I

    iput v1, v4, Landroidx/fragment/app/z;->b:I

    iget v1, v9, Landroidx/fragment/app/z;->c:I

    iput v1, v4, Landroidx/fragment/app/z;->c:I

    iget v1, v9, Landroidx/fragment/app/z;->d:I

    iput v1, v4, Landroidx/fragment/app/z;->d:I

    iget v1, v9, Landroidx/fragment/app/z;->e:I

    iput v1, v4, Landroidx/fragment/app/z;->e:I

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/u0;

    new-instance v4, LF/f;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Landroidx/fragment/app/u0;->d()V

    iget-object v8, v3, Landroidx/fragment/app/u0;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroidx/fragment/app/g;

    invoke-direct {v9, v3, v4, v0}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/u0;LF/f;Z)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, LF/f;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Landroidx/fragment/app/u0;->d()V

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/fragment/app/i;

    if-eqz v0, :cond_7

    if-ne v3, v10, :cond_6

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    move v9, v7

    goto :goto_5

    :cond_7
    if-ne v3, v11, :cond_6

    goto :goto_4

    :goto_5
    invoke-direct {v8, v3, v4, v0, v9}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/u0;LF/f;ZZ)V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/fragment/app/d;

    invoke-direct {v4, v15, v3, v6, v7}, Landroidx/fragment/app/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v3, v3, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroidx/fragment/app/i;

    invoke-virtual {v9}, Landroidx/fragment/app/h;->b()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroidx/fragment/app/i;

    invoke-virtual {v9}, Landroidx/fragment/app/i;->c()Landroidx/fragment/app/r0;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/i;

    invoke-virtual {v4}, Landroidx/fragment/app/i;->c()Landroidx/fragment/app/r0;

    move-result-object v9

    if-eqz v3, :cond_e

    if-ne v9, v3, :cond_d

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    iget-object v1, v1, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned Transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition type than other Fragments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_9
    move-object v3, v9

    goto :goto_8

    :cond_f
    iget-object v4, v6, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    if-nez v3, :cond_11

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/i;

    iget-object v3, v1, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()V

    goto :goto_a

    :cond_10
    move-object/from16 v28, v2

    move v6, v7

    move-object v9, v8

    move-object/from16 v29, v10

    move-object/from16 v27, v11

    move-object v8, v12

    move-object/from16 v26, v13

    move-object/from16 v31, v15

    goto/16 :goto_29

    :cond_11
    new-instance v1, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lo/b;

    invoke-direct {v6}, Lo/k;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v28, v2

    const/4 v2, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_b
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v31, v15

    move-object/from16 v15, v20

    check-cast v15, Landroidx/fragment/app/i;

    iget-object v15, v15, Landroidx/fragment/app/i;->e:Ljava/lang/Object;

    if-eqz v15, :cond_1e

    if-eqz v10, :cond_1e

    if-eqz v11, :cond_1e

    invoke-virtual {v3, v15}, Landroidx/fragment/app/r0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/fragment/app/r0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v15, v11, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v32, v5

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v33, v14

    const-string v14, "lastIn.fragment.sharedElementSourceNames"

    invoke-static {v14, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v14, v10, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v34, v8

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v35, v1

    const-string v1, "firstOut.fragment.sharedElementSourceNames"

    invoke-static {v1, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v36, v9

    const-string v9, "firstOut.fragment.sharedElementTargetNames"

    invoke-static {v9, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 v37, v2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v9, :cond_13

    move/from16 v20, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v21, v1

    const/4 v1, -0x1

    if-eq v9, v1, :cond_12

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v9, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const/4 v1, 0x1

    add-int/2addr v2, v1

    move/from16 v9, v20

    move-object/from16 v1, v21

    goto :goto_c

    :cond_13
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "lastIn.fragment.sharedElementTargetNames"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v0, :cond_14

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ly/B;

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ly/B;

    new-instance v2, LQ2/e;

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    const/4 v8, 0x0

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ly/B;

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ly/B;

    new-instance v2, LQ2/e;

    invoke-direct {v2, v8, v8}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    iget-object v8, v2, LQ2/e;->c:Ljava/lang/Object;

    invoke-static {v8}, LB/f;->F(Ljava/lang/Object;)V

    iget-object v2, v2, LQ2/e;->d:Ljava/lang/Object;

    invoke-static {v2}, LB/f;->F(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v2, :cond_15

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v9, v2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr v8, v2

    move/from16 v2, v21

    goto :goto_e

    :cond_15
    const/4 v2, 0x2

    invoke-static {v12, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v2, ">>> entering view names <<<"

    invoke-static {v12, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "Name: "

    if-eqz v8, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v20

    goto :goto_f

    :cond_16
    const-string v2, ">>> exiting view names <<<"

    invoke-static {v12, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v20

    goto :goto_10

    :cond_17
    new-instance v2, Lo/b;

    invoke-direct {v2}, Lo/k;-><init>()V

    iget-object v8, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v9, "firstOut.fragment.mView"

    invoke-static {v9, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v8}, Landroidx/fragment/app/l;->i(Lo/b;Landroid/view/View;)V

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/X;->l(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lo/b;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/firebase-auth-api/X;->l(Ljava/util/Map;Ljava/util/Collection;)Z

    new-instance v8, Lo/b;

    invoke-direct {v8}, Lo/k;-><init>()V

    iget-object v9, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v38, v12

    const-string v12, "lastIn.fragment.mView"

    invoke-static {v12, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8, v9}, Landroidx/fragment/app/l;->i(Lo/b;Landroid/view/View;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/firebase-auth-api/X;->l(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v6}, Lo/b;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/X;->l(Ljava/util/Map;Ljava/util/Collection;)Z

    sget-object v9, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/p0;

    iget v9, v6, Lo/k;->e:I

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    const/4 v12, -0x1

    :goto_11
    if-ge v12, v9, :cond_19

    invoke-virtual {v6, v9}, Lo/k;->j(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    invoke-virtual {v6, v9}, Lo/k;->i(I)Ljava/lang/Object;

    :cond_18
    const/4 v12, -0x1

    add-int/2addr v9, v12

    goto :goto_11

    :cond_19
    invoke-virtual {v6}, Lo/b;->keySet()Ljava/util/Set;

    move-result-object v9

    const-string v12, "sharedElementNameMapping.keys"

    invoke-static {v12, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v9}, Landroidx/fragment/app/l;->n(Lo/b;Ljava/util/Collection;)V

    invoke-virtual {v6}, Lo/b;->values()Ljava/util/Collection;

    move-result-object v9

    const-string v12, "sharedElementNameMapping.values"

    invoke-static {v12, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8, v9}, Landroidx/fragment/app/l;->n(Lo/b;Ljava/util/Collection;)V

    invoke-virtual {v6}, Lo/k;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v15, v31

    move-object/from16 v5, v32

    move-object/from16 v14, v33

    move-object/from16 v8, v34

    move-object/from16 v1, v35

    move-object/from16 v9, v36

    move-object/from16 v12, v38

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_1a
    if-eqz v0, :cond_1b

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ly/B;

    goto :goto_12

    :cond_1b
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ly/B;

    :goto_12
    new-instance v9, Landroidx/fragment/app/f;

    invoke-direct {v9, v11, v10, v0, v8}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;ZLo/b;)V

    invoke-static {v4, v9}, LJ/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lo/b;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    const/4 v12, 0x1

    xor-int/2addr v9, v12

    if-eqz v9, :cond_1c

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v5, v37

    invoke-virtual {v3, v2, v5}, Landroidx/fragment/app/r0;->m(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v29, v2

    goto :goto_13

    :cond_1c
    move-object/from16 v5, v37

    :goto_13
    invoke-virtual {v8}, Lo/b;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v9, 0x1

    xor-int/2addr v2, v9

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1d

    new-instance v2, Landroidx/fragment/app/d;

    move-object/from16 v8, v36

    invoke-direct {v2, v3, v1, v8, v9}, Landroidx/fragment/app/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v4, v2}, LJ/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v1, v35

    const/16 v30, 0x1

    goto :goto_14

    :cond_1d
    move-object/from16 v8, v36

    move-object/from16 v1, v35

    :goto_14
    invoke-virtual {v3, v5, v1, v7}, Landroidx/fragment/app/r0;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v24, v5

    move-object/from16 v25, v13

    invoke-virtual/range {v20 .. v25}, Landroidx/fragment/app/r0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v9, v34

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    :goto_15
    move-object/from16 v15, v31

    move-object/from16 v5, v32

    move-object/from16 v14, v33

    move-object/from16 v12, v38

    move-object/from16 v39, v9

    move-object v9, v8

    move-object/from16 v8, v39

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v32, v5

    move-object/from16 v38, v12

    move-object/from16 v33, v14

    move-object/from16 v39, v9

    move-object v9, v8

    move-object/from16 v8, v39

    goto :goto_15

    :cond_1f
    move-object/from16 v32, v5

    move-object/from16 v38, v12

    move-object/from16 v33, v14

    move-object/from16 v31, v15

    move-object/from16 v39, v9

    move-object v9, v8

    move-object/from16 v8, v39

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/i;

    invoke-virtual {v15}, Landroidx/fragment/app/h;->b()Z

    move-result v19

    move-object/from16 p2, v5

    iget-object v5, v15, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    if-eqz v19, :cond_20

    move-object/from16 v19, v6

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/h;->a()V

    goto :goto_18

    :cond_20
    move-object/from16 v19, v6

    iget-object v6, v15, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Landroidx/fragment/app/r0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v2, :cond_22

    if-eq v5, v10, :cond_21

    if-ne v5, v11, :cond_22

    :cond_21
    const/16 v20, 0x1

    goto :goto_17

    :cond_22
    const/16 v20, 0x0

    :goto_17
    if-nez v6, :cond_24

    if-nez v20, :cond_23

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/h;->a()V

    :cond_23
    :goto_18
    move-object/from16 v5, p2

    move-object/from16 v6, v19

    goto :goto_16

    :cond_24
    move-object/from16 v27, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v2

    iget-object v2, v5, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v35, v14

    move-object/from16 v14, v32

    invoke-static {v14, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v11}, Landroidx/fragment/app/l;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v20, :cond_26

    if-ne v5, v10, :cond_25

    invoke-static {v7}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_25
    invoke-static {v13}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_26
    :goto_19
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v3, v1, v6}, Landroidx/fragment/app/r0;->a(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v20, v1

    :cond_27
    move-object/from16 v32, v14

    goto :goto_1a

    :cond_28
    invoke-virtual {v3, v6, v11}, Landroidx/fragment/app/r0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v6

    move-object/from16 v23, v11

    invoke-virtual/range {v20 .. v25}, Landroidx/fragment/app/r0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget v2, v5, Landroidx/fragment/app/u0;->a:I

    move-object/from16 v20, v1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_27

    move-object/from16 v2, v31

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v32, v14

    iget-object v14, v5, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v31, v2

    iget-object v2, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v6, v2, v1}, Landroidx/fragment/app/r0;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v1, Landroidx/fragment/app/t;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v11}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v1}, LJ/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_1a
    iget v1, v5, Landroidx/fragment/app/u0;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v30, :cond_29

    invoke-virtual {v3, v6, v8}, Landroidx/fragment/app/r0;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_29
    move-object/from16 v1, v29

    goto :goto_1b

    :cond_2a
    move-object/from16 v1, v29

    invoke-virtual {v3, v1, v6}, Landroidx/fragment/app/r0;->m(Landroid/view/View;Ljava/lang/Object;)V

    :goto_1b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v15, Landroidx/fragment/app/i;->d:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v3, v12, v6}, Landroidx/fragment/app/r0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v5, p2

    move-object/from16 v29, v1

    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v11, v27

    move-object/from16 v2, v34

    move-object/from16 v14, v35

    goto/16 :goto_16

    :cond_2b
    move-object/from16 v14, v35

    invoke-virtual {v3, v14, v6}, Landroidx/fragment/app/r0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v5, p2

    move-object/from16 v29, v1

    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v11, v27

    move-object/from16 v2, v34

    goto/16 :goto_16

    :cond_2c
    move-object/from16 v19, v6

    move-object/from16 v27, v11

    invoke-virtual {v3, v12, v14, v2}, Landroidx/fragment/app/r0;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    move-object/from16 v29, v10

    move-object/from16 v8, v38

    :goto_1c
    const/4 v6, 0x0

    goto/16 :goto_29

    :cond_2d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroidx/fragment/app/i;

    invoke-virtual {v11}, Landroidx/fragment/app/h;->b()Z

    move-result v11

    if-nez v11, :cond_2e

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/i;

    iget-object v8, v6, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    iget-object v11, v6, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    move-object/from16 v12, v27

    if-eqz v2, :cond_31

    if-eq v11, v10, :cond_30

    if-ne v11, v12, :cond_31

    :cond_30
    const/4 v14, 0x1

    goto :goto_1f

    :cond_31
    const/4 v14, 0x0

    :goto_1f
    if-nez v8, :cond_33

    if-eqz v14, :cond_32

    goto :goto_20

    :cond_32
    move-object/from16 v8, v38

    goto :goto_21

    :cond_33
    :goto_20
    sget-object v8, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->isLaidOut()Z

    move-result v8

    if-nez v8, :cond_35

    move-object/from16 v8, v38

    const/4 v14, 0x2

    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_34

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "SpecialEffectsController: Container "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " has not been laid out. Completing operation "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-virtual {v6}, Landroidx/fragment/app/h;->a()V

    goto :goto_21

    :cond_35
    move-object/from16 v8, v38

    iget-object v14, v11, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    new-instance v14, Landroidx/fragment/app/t0;

    const/4 v15, 0x2

    invoke-direct {v14, v6, v11, v15}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/Object;Landroidx/fragment/app/u0;I)V

    iget-object v6, v6, Landroidx/fragment/app/h;->b:LF/f;

    invoke-virtual {v3, v1, v6, v14}, Landroidx/fragment/app/r0;->o(Ljava/lang/Object;LF/f;Landroidx/fragment/app/t0;)V

    :goto_21
    move-object/from16 v38, v8

    move-object/from16 v27, v12

    goto :goto_1e

    :cond_36
    move-object/from16 v12, v27

    move-object/from16 v8, v38

    sget-object v5, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->isLaidOut()Z

    move-result v5

    if-nez v5, :cond_37

    move-object/from16 v29, v10

    move-object/from16 v27, v12

    goto/16 :goto_1c

    :cond_37
    const/4 v5, 0x4

    invoke-static {v0, v5}, Landroidx/fragment/app/k0;->a(Ljava/util/ArrayList;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_22
    if-ge v11, v6, :cond_38

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    sget-object v15, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {v14}, LJ/I;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    invoke-static {v14, v15}, LJ/I;->v(Landroid/view/View;Ljava/lang/String;)V

    const/4 v14, 0x1

    add-int/2addr v11, v14

    goto :goto_22

    :cond_38
    const/4 v11, 0x2

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3a

    const-string v6, ">>>>> Beginning transition <<<<<"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v14, " Name: "

    const-string v15, "View: "

    if-eqz v11, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 p2, v6

    const-string v6, "sharedElementFirstOutViews"

    invoke-static {v6, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v11, Landroid/view/View;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, LJ/I;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p2

    goto :goto_23

    :cond_39
    const-string v6, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 p2, v6

    const-string v6, "sharedElementLastInViews"

    invoke-static {v6, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v11, Landroid/view/View;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, LJ/I;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p2

    goto :goto_24

    :cond_3a
    invoke-virtual {v3, v4, v1}, Landroidx/fragment/app/r0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_25
    if-ge v11, v1, :cond_3e

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    sget-object v15, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {v14}, LJ/I;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_3c

    move-object/from16 v29, v10

    move-object/from16 v27, v12

    move-object/from16 v18, v19

    :cond_3b
    :goto_26
    const/4 v10, 0x1

    goto :goto_28

    :cond_3c
    move-object/from16 v27, v12

    const/4 v12, 0x0

    invoke-static {v14, v12}, LJ/I;->v(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v14, v19

    invoke-virtual {v14, v15, v12}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Ljava/lang/String;

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :goto_27
    move-object/from16 v29, v10

    if-ge v14, v1, :cond_3b

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {v10, v15}, LJ/I;->v(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_26

    :cond_3d
    const/4 v10, 0x1

    add-int/2addr v14, v10

    move-object/from16 v10, v29

    goto :goto_27

    :goto_28
    add-int/2addr v11, v10

    move-object/from16 v19, v18

    move-object/from16 v12, v27

    move-object/from16 v10, v29

    goto :goto_25

    :cond_3e
    move-object/from16 v29, v10

    move-object/from16 v27, v12

    new-instance v10, Landroidx/fragment/app/q0;

    move-object/from16 v20, v10

    move/from16 v21, v1

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v6

    invoke-direct/range {v20 .. v25}, Landroidx/fragment/app/q0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4, v10}, LJ/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroidx/fragment/app/k0;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v2, v7, v13}, Landroidx/fragment/app/r0;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v1, v6

    :goto_2a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v13, " has started."

    const-string v2, "context"

    if-eqz v0, :cond_47

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/fragment/app/g;

    invoke-virtual {v14}, Landroidx/fragment/app/h;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v14}, Landroidx/fragment/app/h;->a()V

    goto :goto_2a

    :cond_3f
    invoke-static {v2, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v14, v10}, Landroidx/fragment/app/g;->c(Landroid/content/Context;)Landroidx/fragment/app/H;

    move-result-object v0

    if-nez v0, :cond_40

    invoke-virtual {v14}, Landroidx/fragment/app/h;->a()V

    goto :goto_2a

    :cond_40
    iget-object v0, v0, Landroidx/fragment/app/H;->b:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/animation/Animator;

    if-nez v15, :cond_41

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_41
    iget-object v5, v14, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    iget-object v0, v5, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x2

    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring Animator set on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as this Fragment was involved in a Transition."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-virtual {v14}, Landroidx/fragment/app/h;->a()V

    goto :goto_2a

    :cond_43
    iget v1, v5, Landroidx/fragment/app/u0;->a:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_44

    const/16 v16, 0x1

    goto :goto_2b

    :cond_44
    move/from16 v16, v6

    :goto_2b
    move-object/from16 v2, v31

    if-eqz v16, :cond_45

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_45
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v0, Landroidx/fragment/app/j;

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, p2

    move/from16 v19, v3

    move/from16 v3, v16

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v34, v9

    move-object v9, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/l;Landroid/view/View;ZLandroidx/fragment/app/u0;Landroidx/fragment/app/g;)V

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x2

    invoke-static {v8, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animator from operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    new-instance v0, Landroidx/fragment/app/s;

    invoke-direct {v0, v15, v9}, Landroidx/fragment/app/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v14, Landroidx/fragment/app/h;->b:LF/f;

    invoke-virtual {v1, v0}, LF/f;->b(LF/e;)V

    move-object v4, v6

    move-object/from16 v31, v18

    move-object/from16 v9, v34

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2a

    :cond_47
    move-object v6, v4

    move-object/from16 v18, v31

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g;

    iget-object v4, v3, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/u0;

    iget-object v5, v4, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    const-string v9, "Ignoring Animation set on "

    if-eqz v7, :cond_49

    const/4 v11, 0x2

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as Animations cannot run alongside Transitions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-virtual {v3}, Landroidx/fragment/app/h;->a()V

    goto :goto_2c

    :cond_49
    if-eqz v1, :cond_4b

    const/4 v11, 0x2

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as Animations cannot run alongside Animators."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    invoke-virtual {v3}, Landroidx/fragment/app/h;->a()V

    goto :goto_2c

    :cond_4b
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroidx/fragment/app/g;->c(Landroid/content/Context;)Landroidx/fragment/app/H;

    move-result-object v9

    const-string v11, "Required value was null."

    if-eqz v9, :cond_4f

    iget-object v9, v9, Landroidx/fragment/app/H;->a:Ljava/lang/Cloneable;

    check-cast v9, Landroid/view/animation/Animation;

    if-eqz v9, :cond_4e

    iget v11, v4, Landroidx/fragment/app/u0;->a:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4c

    invoke-virtual {v5, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3}, Landroidx/fragment/app/h;->a()V

    move-object/from16 v14, p0

    goto :goto_2d

    :cond_4c
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v11, Landroidx/fragment/app/I;

    invoke-direct {v11, v9, v6, v5}, Landroidx/fragment/app/I;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v9, Landroidx/fragment/app/k;

    move-object/from16 v14, p0

    invoke-direct {v9, v5, v3, v14, v4}, Landroidx/fragment/app/k;-><init>(Landroid/view/View;Landroidx/fragment/app/g;Landroidx/fragment/app/l;Landroidx/fragment/app/u0;)V

    invoke-virtual {v11, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v5, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4d

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Animation from operation "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_2d
    new-instance v9, Landroidx/fragment/app/e;

    invoke-direct {v9, v5, v3, v14, v4}, Landroidx/fragment/app/e;-><init>(Landroid/view/View;Landroidx/fragment/app/g;Landroidx/fragment/app/l;Landroidx/fragment/app/u0;)V

    iget-object v3, v3, Landroidx/fragment/app/h;->b:LF/f;

    invoke-virtual {v3, v9}, LF/f;->b(LF/e;)V

    goto/16 :goto_2c

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/u0;

    iget-object v2, v1, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/u0;->a:I

    const-string v3, "view"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v2}, LB/f;->a(ILandroid/view/View;)V

    goto :goto_2e

    :cond_51
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    invoke-static {v8, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method public final h()V
    .locals 7

    iget-boolean v0, p0, Landroidx/fragment/app/l;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l;->k()V

    iput-boolean v1, p0, Landroidx/fragment/app/l;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-static {v2}, LR2/m;->h1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/u0;

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/u0;->a()V

    iget-boolean v4, v3, Landroidx/fragment/app/u0;->g:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/l;->o()V

    iget-object v2, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-static {v2}, LR2/m;->h1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "FragmentManager"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "FragmentManager"

    const-string v5, "SpecialEffectsController: Executing pending operations"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/u0;

    invoke-virtual {v5}, Landroidx/fragment/app/u0;->d()V

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Landroidx/fragment/app/l;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/l;->g(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Landroidx/fragment/app/l;->d:Z

    const-string p0, "FragmentManager"

    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Finished executing pending operations"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u0;
    .locals 3

    iget-object p0, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/u0;

    iget-object v2, v1, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v2, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Landroidx/fragment/app/u0;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/fragment/app/u0;

    return-object v0
.end method

.method public final k()V
    .locals 9

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    sget-object v2, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/l;->o()V

    iget-object v3, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/u0;

    invoke-virtual {v4}, Landroidx/fragment/app/u0;->d()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    iget-object v3, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-static {v3}, LR2/m;->h1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/u0;

    const-string v5, "FragmentManager"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    const-string v5, ""

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling running operation "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v4}, Landroidx/fragment/app/u0;->a()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-static {v3}, LR2/m;->h1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/u0;

    const-string v5, "FragmentManager"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_5

    const-string v5, ""

    goto :goto_4

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling pending operation "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/u0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_7
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2

    throw p0
.end method

.method public final m()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/l;->o()V

    iget-object v1, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/fragment/app/u0;

    iget-object v5, v4, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v6, "operation.fragment.mView"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, LW1/a;->b(Landroid/view/View;)I

    move-result v5

    iget v4, v4, Landroidx/fragment/app/u0;->a:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Landroidx/fragment/app/u0;

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/l;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final o()V
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/u0;

    iget v1, v0, Landroidx/fragment/app/u0;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v3, "fragment.requireView()"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown visibility "

    invoke-static {v1, v0}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/u0;->c(II)V

    goto :goto_0

    :cond_3
    return-void
.end method

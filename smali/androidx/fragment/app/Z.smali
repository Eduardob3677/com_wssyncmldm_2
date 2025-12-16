.class public abstract Landroidx/fragment/app/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroidx/activity/result/e;

.field public B:Landroidx/activity/result/e;

.field public C:Ljava/util/ArrayDeque;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Landroidx/fragment/app/c0;

.field public final M:Landroidx/fragment/app/m;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/h0;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/N;

.field public g:Landroidx/activity/v;

.field public final h:Landroidx/fragment/app/Q;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Landroidx/fragment/app/H;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Landroidx/fragment/app/O;

.field public final o:Landroidx/fragment/app/O;

.field public final p:Landroidx/fragment/app/O;

.field public final q:Landroidx/fragment/app/O;

.field public final r:Landroidx/fragment/app/S;

.field public s:I

.field public t:Landroidx/fragment/app/L;

.field public u:Landroidx/fragment/app/J;

.field public v:Landroidx/fragment/app/Fragment;

.field public w:Landroidx/fragment/app/Fragment;

.field public final x:Landroidx/fragment/app/T;

.field public final y:LZ0/h;

.field public z:Landroidx/activity/result/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/h0;

    invoke-direct {v0}, Landroidx/fragment/app/h0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    new-instance v0, Landroidx/fragment/app/N;

    invoke-direct {v0, p0}, Landroidx/fragment/app/N;-><init>(Landroidx/fragment/app/Z;)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->f:Landroidx/fragment/app/N;

    new-instance v0, Landroidx/fragment/app/Q;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Q;-><init>(Landroidx/fragment/app/Z;)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->h:Landroidx/fragment/app/Q;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Z;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Z;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Z;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Landroidx/fragment/app/H;

    invoke-direct {v0, p0}, Landroidx/fragment/app/H;-><init>(Landroidx/fragment/app/Z;)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Z;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/fragment/app/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/O;-><init>(Landroidx/fragment/app/Z;I)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->n:Landroidx/fragment/app/O;

    new-instance v0, Landroidx/fragment/app/O;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/O;-><init>(Landroidx/fragment/app/Z;I)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->o:Landroidx/fragment/app/O;

    new-instance v0, Landroidx/fragment/app/O;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/O;-><init>(Landroidx/fragment/app/Z;I)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->p:Landroidx/fragment/app/O;

    new-instance v0, Landroidx/fragment/app/O;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/O;-><init>(Landroidx/fragment/app/Z;I)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->q:Landroidx/fragment/app/O;

    new-instance v0, Landroidx/fragment/app/S;

    invoke-direct {v0, p0}, Landroidx/fragment/app/S;-><init>(Landroidx/fragment/app/Z;)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->r:Landroidx/fragment/app/S;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Z;->s:I

    new-instance v0, Landroidx/fragment/app/T;

    invoke-direct {v0, p0}, Landroidx/fragment/app/T;-><init>(Landroidx/fragment/app/Z;)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->x:Landroidx/fragment/app/T;

    new-instance v0, LZ0/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LZ0/h;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->y:LZ0/h;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Z;->C:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/fragment/app/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/fragment/app/Z;->M:Landroidx/fragment/app/m;

    return-void
.end method

.method public static G(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/Z;

    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->e()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroidx/fragment/app/Z;->G(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static I(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    iget-object v2, v1, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/fragment/app/Z;->I(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static X(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(I)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v0, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g0;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget v0, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public final B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v0, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g0;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public final C(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Z;->u:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/Z;->u:Landroidx/fragment/app/J;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/J;->b(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final D()Landroidx/fragment/app/T;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->D()Landroidx/fragment/app/T;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->x:Landroidx/fragment/app/T;

    return-object p0
.end method

.method public final E()LZ0/h;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->E()LZ0/h;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->y:LZ0/h;

    return-object p0
.end method

.method public final F(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->W(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public final H()Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->H()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final J(IZ)V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/Z;->s:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/fragment/app/Z;->s:I

    iget-object p1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object p2, p1, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p1, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/g0;->k()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/g0;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/fragment/app/g0;->k()V

    iget-object v3, v2, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v4, :cond_6

    iget-object v4, p1, Landroidx/fragment/app/h0;->c:Ljava/util/HashMap;

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/fragment/app/g0;->n()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroidx/fragment/app/h0;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_6
    invoke-virtual {p1, v2}, Landroidx/fragment/app/h0;->h(Landroidx/fragment/app/g0;)V

    :cond_7
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eq p2, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "[enhanced for loop] expected Active size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroidx/fragment/app/h0;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/g0;

    iget-object v1, p2, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Landroidx/fragment/app/Z;->b:Z

    if-eqz v2, :cond_a

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/fragment/app/Z;->H:Z

    goto :goto_3

    :cond_a
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {p2}, Landroidx/fragment/app/g0;->k()V

    goto :goto_3

    :cond_b
    iget-boolean p1, p0, Landroidx/fragment/app/Z;->D:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-eqz p1, :cond_c

    iget p2, p0, Landroidx/fragment/app/Z;->s:I

    const/4 v1, 0x7

    if-ne p2, v1, :cond_c

    check-cast p1, Landroidx/fragment/app/F;

    iget-object p1, p1, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->D:Z

    :cond_c
    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v1, Landroidx/fragment/app/c0;->f:Z

    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final L()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Z;->M(II)Z

    move-result p0

    return p0
.end method

.method public final M(II)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->x(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Z;->w(Z)V

    iget-object v2, p0, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    if-gez p1, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Z;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/fragment/app/Z;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Landroidx/fragment/app/Z;->b:Z

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/Z;->P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->d()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Z;->Z()V

    iget-boolean p2, p0, Landroidx/fragment/app/Z;->H:Z

    iget-object v2, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    if-eqz p2, :cond_4

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->H:Z

    invoke-virtual {v2}, Landroidx/fragment/app/h0;->d()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g0;

    iget-object v4, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroidx/fragment/app/Z;->b:Z

    if-eqz v5, :cond_3

    iput-boolean v1, p0, Landroidx/fragment/app/Z;->H:Z

    goto :goto_1

    :cond_3
    iput-boolean v0, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {v3}, Landroidx/fragment/app/g0;->k()V

    goto :goto_1

    :cond_4
    iget-object p0, v2, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1
.end method

.method public final N(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_5

    :cond_1
    if-gez p3, :cond_3

    if-eqz p4, :cond_2

    move v3, v1

    goto :goto_5

    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v3, p3, -0x1

    goto :goto_5

    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_4

    iget v4, v4, Landroidx/fragment/app/a;->s:I

    if-ne p3, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v2, :cond_7

    :cond_6
    :goto_3
    move v3, v2

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_8

    :goto_4
    if-lez v2, :cond_6

    iget-object p4, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_6

    iget p4, p4, Landroidx/fragment/app/a;->s:I

    if-ne p3, p4, :cond_6

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    if-gez v3, :cond_b

    return v1

    :cond_b
    iget-object p3, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_6
    if-lt p3, v3, :cond_c

    iget-object p4, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_c
    return v0
.end method

.method public final O(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v2, v0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-static {p1}, Landroidx/fragment/app/Z;->G(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/Z;->D:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->W(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/j0;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/Z;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/j0;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/Z;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/Z;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Q(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v5, v5, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Landroidx/fragment/app/Z;->k:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v6, v6, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v3, v0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v4, v3, Landroidx/fragment/app/h0;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b0;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v4, v3, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " clear Active Fragments: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mActive size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    iget-object v9, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    const/4 v10, 0x0

    const-string v11, "): "

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v10, v7}, Landroidx/fragment/app/h0;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/e0;

    iget-object v12, v0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iget-object v10, v10, Landroidx/fragment/app/e0;->d:Ljava/lang/String;

    iget-object v12, v12, Landroidx/fragment/app/c0;->a:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/Fragment;

    if-eqz v10, :cond_7

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "restoreSaveState: re-attaching retained "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v12, Landroidx/fragment/app/g0;

    invoke-direct {v12, v9, v3, v10, v7}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/H;Landroidx/fragment/app/h0;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    new-instance v9, Landroidx/fragment/app/g0;

    iget-object v10, v0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v10, v10, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Z;->D()Landroidx/fragment/app/T;

    move-result-object v16

    iget-object v13, v0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    iget-object v14, v0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    move-object v12, v9

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v17}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/H;Landroidx/fragment/app/h0;Ljava/lang/ClassLoader;Landroidx/fragment/app/T;Landroid/os/Bundle;)V

    :goto_3
    iget-object v9, v12, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iput-object v7, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v0, v9, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "restoreSaveState: active ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v7, v0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v7, v7, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroidx/fragment/app/g0;->l(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v12}, Landroidx/fragment/app/h0;->g(Landroidx/fragment/app/g0;)V

    iget v7, v0, Landroidx/fragment/app/Z;->s:I

    iput v7, v12, Landroidx/fragment/app/g0;->e:I

    goto/16 :goto_2

    :cond_9
    iget-object v2, v0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v2, v2, Landroidx/fragment/app/c0;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    iget-object v12, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Discarding retained Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " that was not found in the set of active Fragments "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v12, v0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    invoke-virtual {v12, v5}, Landroidx/fragment/app/c0;->f(Landroidx/fragment/app/Fragment;)V

    iput-object v0, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    new-instance v12, Landroidx/fragment/app/g0;

    invoke-direct {v12, v9, v3, v5}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/H;Landroidx/fragment/app/h0;Landroidx/fragment/app/Fragment;)V

    iput v7, v12, Landroidx/fragment/app/g0;->e:I

    invoke-virtual {v12}, Landroidx/fragment/app/g0;->k()V

    iput-boolean v7, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {v12}, Landroidx/fragment/app/g0;->k()V

    goto :goto_4

    :cond_c
    iget-object v2, v1, Landroidx/fragment/app/b0;->d:Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "restoreSaveState: added ("

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v3, v5}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instantiated fragment for ("

    const-string v2, ")"

    invoke-static {v1, v4, v2}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v2, v1, Landroidx/fragment/app/b0;->e:[Landroidx/fragment/app/b;

    if-eqz v2, :cond_17

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Landroidx/fragment/app/b0;->e:[Landroidx/fragment/app/b;

    array-length v5, v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_6
    iget-object v5, v1, Landroidx/fragment/app/b0;->e:[Landroidx/fragment/app/b;

    array-length v9, v5

    if-ge v2, v9, :cond_16

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/fragment/app/a;

    invoke-direct {v9, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/Z;)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_7
    iget-object v13, v5, Landroidx/fragment/app/b;->c:[I

    array-length v14, v13

    if-ge v10, v14, :cond_12

    new-instance v14, Landroidx/fragment/app/i0;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v15, v10, 0x1

    aget v4, v13, v10

    iput v4, v14, Landroidx/fragment/app/i0;->a:I

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Instantiate "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " op #"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " base fragment #"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v13, v15

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Landroidx/lifecycle/q;->values()[Landroidx/lifecycle/q;

    move-result-object v4

    iget-object v8, v5, Landroidx/fragment/app/b;->e:[I

    aget v8, v8, v12

    aget-object v4, v4, v8

    iput-object v4, v14, Landroidx/fragment/app/i0;->h:Landroidx/lifecycle/q;

    invoke-static {}, Landroidx/lifecycle/q;->values()[Landroidx/lifecycle/q;

    move-result-object v4

    iget-object v8, v5, Landroidx/fragment/app/b;->f:[I

    aget v8, v8, v12

    aget-object v4, v4, v8

    iput-object v4, v14, Landroidx/fragment/app/i0;->i:Landroidx/lifecycle/q;

    add-int/lit8 v4, v10, 0x2

    aget v8, v13, v15

    if-eqz v8, :cond_11

    move v8, v7

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    :goto_8
    iput-boolean v8, v14, Landroidx/fragment/app/i0;->c:Z

    add-int/lit8 v8, v10, 0x3

    aget v4, v13, v4

    iput v4, v14, Landroidx/fragment/app/i0;->d:I

    add-int/lit8 v15, v10, 0x4

    aget v8, v13, v8

    iput v8, v14, Landroidx/fragment/app/i0;->e:I

    add-int/lit8 v17, v10, 0x5

    aget v15, v13, v15

    iput v15, v14, Landroidx/fragment/app/i0;->f:I

    add-int/lit8 v10, v10, 0x6

    aget v13, v13, v17

    iput v13, v14, Landroidx/fragment/app/i0;->g:I

    iput v4, v9, Landroidx/fragment/app/j0;->b:I

    iput v8, v9, Landroidx/fragment/app/j0;->c:I

    iput v15, v9, Landroidx/fragment/app/j0;->d:I

    iput v13, v9, Landroidx/fragment/app/j0;->e:I

    invoke-virtual {v9, v14}, Landroidx/fragment/app/j0;->b(Landroidx/fragment/app/i0;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x2

    goto/16 :goto_7

    :cond_12
    iget v4, v5, Landroidx/fragment/app/b;->g:I

    iput v4, v9, Landroidx/fragment/app/j0;->f:I

    iget-object v4, v5, Landroidx/fragment/app/b;->h:Ljava/lang/String;

    iput-object v4, v9, Landroidx/fragment/app/j0;->i:Ljava/lang/String;

    iput-boolean v7, v9, Landroidx/fragment/app/j0;->g:Z

    iget v4, v5, Landroidx/fragment/app/b;->j:I

    iput v4, v9, Landroidx/fragment/app/j0;->j:I

    iget-object v4, v5, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    iput-object v4, v9, Landroidx/fragment/app/j0;->k:Ljava/lang/CharSequence;

    iget v4, v5, Landroidx/fragment/app/b;->l:I

    iput v4, v9, Landroidx/fragment/app/j0;->l:I

    iget-object v4, v5, Landroidx/fragment/app/b;->m:Ljava/lang/CharSequence;

    iput-object v4, v9, Landroidx/fragment/app/j0;->m:Ljava/lang/CharSequence;

    iget-object v4, v5, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    iput-object v4, v9, Landroidx/fragment/app/j0;->n:Ljava/util/ArrayList;

    iget-object v4, v5, Landroidx/fragment/app/b;->o:Ljava/util/ArrayList;

    iput-object v4, v9, Landroidx/fragment/app/j0;->o:Ljava/util/ArrayList;

    iget-boolean v4, v5, Landroidx/fragment/app/b;->p:Z

    iput-boolean v4, v9, Landroidx/fragment/app/j0;->p:Z

    iget v4, v5, Landroidx/fragment/app/b;->i:I

    iput v4, v9, Landroidx/fragment/app/a;->s:I

    const/4 v4, 0x0

    :goto_9
    iget-object v8, v5, Landroidx/fragment/app/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_14

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v10, v9, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/i0;

    invoke-virtual {v3, v8}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    iput-object v8, v10, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {v9, v7}, Landroidx/fragment/app/a;->d(I)V

    const/4 v4, 0x2

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "restoreAllState: back stack #"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " (index "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Landroidx/fragment/app/a;->s:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, LI/b;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, LI/b;-><init>(I)V

    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "  "

    const/4 v12, 0x0

    invoke-virtual {v9, v5, v8, v12}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    goto :goto_a

    :cond_15
    const/4 v12, 0x0

    :goto_a
    iget-object v5, v0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v8, v4

    goto/16 :goto_6

    :cond_16
    const/4 v12, 0x0

    goto :goto_b

    :cond_17
    const/4 v12, 0x0

    iput-object v10, v0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    :goto_b
    iget-object v2, v0, Landroidx/fragment/app/Z;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Landroidx/fragment/app/b0;->f:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Landroidx/fragment/app/b0;->g:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v3, v2}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Z;->q(Landroidx/fragment/app/Fragment;)V

    :cond_18
    iget-object v2, v1, Landroidx/fragment/app/b0;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    move v4, v12

    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_19

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v1, Landroidx/fragment/app/b0;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/c;

    iget-object v6, v0, Landroidx/fragment/app/Z;->j:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_19
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/b0;->j:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroidx/fragment/app/Z;->C:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final R()Landroid/os/Bundle;
    .locals 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/l;

    iget-boolean v5, v2, Landroidx/fragment/app/l;->e:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v3, v2, Landroidx/fragment/app/l;->e:Z

    invoke-virtual {v2}, Landroidx/fragment/app/l;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Z;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/l;

    invoke-virtual {v2}, Landroidx/fragment/app/l;->k()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Z;->x(Z)Z

    iput-boolean v1, p0, Landroidx/fragment/app/Z;->E:Z

    iget-object v2, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iput-boolean v1, v2, Landroidx/fragment/app/c0;->f:Z

    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/g0;

    if-eqz v6, :cond_4

    iget-object v7, v6, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6}, Landroidx/fragment/app/g0;->n()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6, v8}, Landroidx/fragment/app/h0;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v6, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "FragmentManager"

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Saved state of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v1, v1, Landroidx/fragment/app/h0;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p0, "FragmentManager"

    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_6
    iget-object v5, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v6, v5, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, v5, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    monitor-exit v6

    move-object v7, v8

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v5, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v5, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "FragmentManager"

    invoke-static {v10, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding fragment ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object v5, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    new-array v6, v5, [Landroidx/fragment/app/b;

    :goto_5
    if-ge v3, v5, :cond_c

    new-instance v9, Landroidx/fragment/app/b;

    iget-object v10, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/a;

    invoke-direct {v9, v10}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v9, v6, v3

    const-string v9, "FragmentManager"

    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "saveAllState: adding back stack #"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    move-object v6, v8

    :cond_c
    new-instance v3, Landroidx/fragment/app/b0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v8, v3, Landroidx/fragment/app/b0;->g:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/b0;->h:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Landroidx/fragment/app/b0;->i:Ljava/util/ArrayList;

    iput-object v2, v3, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    iput-object v7, v3, Landroidx/fragment/app/b0;->d:Ljava/util/ArrayList;

    iput-object v6, v3, Landroidx/fragment/app/b0;->e:[Landroidx/fragment/app/b;

    iget-object v2, p0, Landroidx/fragment/app/Z;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v3, Landroidx/fragment/app/b0;->f:I

    iget-object v2, p0, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_d

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, v3, Landroidx/fragment/app/b0;->g:Ljava/lang/String;

    :cond_d
    iget-object v2, p0, Landroidx/fragment/app/Z;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroidx/fragment/app/Z;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/Z;->C:Ljava/util/ArrayDeque;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v3, Landroidx/fragment/app/b0;->j:Ljava/util/ArrayList;

    const-string v2, "state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroidx/fragment/app/Z;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-static {v4, v3}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/Z;->k:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fragment_"

    invoke-static {v3, v2}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_f
    :goto_8
    return-object v0

    :goto_9
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final S()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/Z;->M:Landroidx/fragment/app/m;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/Z;->M:Landroidx/fragment/app/m;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->Z()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final T(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->C(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final U(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/q;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/L;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/q;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final V(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/L;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->q(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->q(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final W(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->C(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_1

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    :cond_1
    return-void
.end method

.method public final Y(Ljava/lang/IllegalStateException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LI/b;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LI/b;-><init>(I)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array p0, v4, [Ljava/lang/String;

    check-cast v0, Landroidx/fragment/app/F;

    iget-object v0, v0, Landroidx/fragment/app/F;->g:Landroidx/fragment/app/G;

    invoke-virtual {v0, v6, v5, v2, p0}, Landroidx/fragment/app/G;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/Z;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public final Z()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/Z;->h:Landroidx/fragment/app/Q;

    iput-boolean v2, p0, Landroidx/fragment/app/Q;->a:Z

    iget-object p0, p0, Landroidx/fragment/app/Q;->c:Lc3/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/Z;->h:Landroidx/fragment/app/Q;

    iget-object v1, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-lez v1, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/fragment/app/Z;->I(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Landroidx/fragment/app/Q;->a:Z

    iget-object p0, v0, Landroidx/fragment/app/Q;->c:Lc3/a;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    :cond_4
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, LZ/d;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h0;->g(Landroidx/fragment/app/g0;)V

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/Z;->G(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Z;->D:Z

    :cond_3
    return-object v0
.end method

.method public final b(Landroidx/fragment/app/L;Landroidx/fragment/app/J;Landroidx/fragment/app/Fragment;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-nez v0, :cond_12

    iput-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iput-object p2, p0, Landroidx/fragment/app/Z;->u:Landroidx/fragment/app/J;

    iput-object p3, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Landroidx/fragment/app/Z;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Landroidx/fragment/app/U;

    invoke-direct {v0, p3}, Landroidx/fragment/app/U;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/d0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/d0;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->Z()V

    :cond_2
    instance-of p2, p1, Landroidx/activity/w;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Landroidx/activity/w;

    invoke-interface {p2}, Landroidx/activity/w;->getOnBackPressedDispatcher()Landroidx/activity/v;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Z;->g:Landroidx/activity/v;

    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/Z;->h:Landroidx/fragment/app/Q;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/v;->a(Landroidx/lifecycle/w;Landroidx/fragment/app/Q;)V

    :cond_4
    const/4 p2, 0x0

    if-eqz p3, :cond_6

    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    iget-object p1, p1, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iget-object v0, p1, Landroidx/fragment/app/c0;->b:Ljava/util/HashMap;

    iget-object v1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0;

    if-nez v1, :cond_5

    new-instance v1, Landroidx/fragment/app/c0;

    iget-boolean p1, p1, Landroidx/fragment/app/c0;->d:Z

    invoke-direct {v1, p1}, Landroidx/fragment/app/c0;-><init>(Z)V

    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    goto :goto_1

    :cond_6
    instance-of v0, p1, Landroidx/lifecycle/d0;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/lifecycle/d0;

    invoke-interface {p1}, Landroidx/lifecycle/d0;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object p1

    new-instance v0, LJ/r0;

    sget-object v1, Landroidx/fragment/app/c0;->g:Le4/d;

    invoke-direct {v0, p1, v1}, LJ/r0;-><init>(Landroidx/lifecycle/c0;Landroidx/lifecycle/b0;)V

    const-class p1, Landroidx/fragment/app/c0;

    invoke-virtual {v0, p1}, LJ/r0;->d(Ljava/lang/Class;)Landroidx/lifecycle/Y;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/c0;

    iput-object p1, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    goto :goto_1

    :cond_7
    new-instance p1, Landroidx/fragment/app/c0;

    invoke-direct {p1, p2}, Landroidx/fragment/app/c0;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/Z;->L:Landroidx/fragment/app/c0;

    iget-boolean v0, p0, Landroidx/fragment/app/Z;->E:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/fragment/app/Z;->F:Z

    if-eqz v0, :cond_9

    :cond_8
    const/4 p2, 0x1

    :cond_9
    iput-boolean p2, p1, Landroidx/fragment/app/c0;->f:Z

    iget-object p2, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iput-object p1, p2, Landroidx/fragment/app/h0;->d:Landroidx/fragment/app/c0;

    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of p2, p1, Lx0/f;

    if-eqz p2, :cond_a

    if-nez p3, :cond_a

    check-cast p1, Lx0/f;

    invoke-interface {p1}, Lx0/f;->getSavedStateRegistry()Lx0/d;

    move-result-object p1

    new-instance p2, Landroidx/fragment/app/C;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/C;-><init>(ILjava/lang/Object;)V

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p2}, Lx0/d;->c(Ljava/lang/String;Lx0/c;)V

    invoke-virtual {p1, v0}, Lx0/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->Q(Landroid/os/Bundle;)V

    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of p2, p1, Landroidx/activity/result/i;

    if-eqz p2, :cond_c

    check-cast p1, Landroidx/activity/result/i;

    invoke-interface {p1}, Landroidx/activity/result/i;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p1

    if-eqz p3, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const-string v1, ":"

    invoke-static {p2, v0, v1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_b
    const-string p2, ""

    :goto_2
    const-string v0, "FragmentManager:"

    invoke-static {v0, p2}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "StartActivityForResult"

    invoke-static {p2, v0}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/V;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/fragment/app/V;-><init>(I)V

    new-instance v2, Landroidx/fragment/app/P;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/P;-><init>(Landroidx/fragment/app/Z;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/h;->d(Ljava/lang/String;Lb/a;Landroidx/activity/result/b;)Landroidx/activity/result/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Z;->z:Landroidx/activity/result/e;

    const-string v0, "StartIntentSenderForResult"

    invoke-static {p2, v0}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/V;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/fragment/app/V;-><init>(I)V

    new-instance v2, Landroidx/fragment/app/P;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/P;-><init>(Landroidx/fragment/app/Z;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/h;->d(Ljava/lang/String;Lb/a;Landroidx/activity/result/b;)Landroidx/activity/result/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Z;->A:Landroidx/activity/result/e;

    const-string v0, "RequestPermissions"

    invoke-static {p2, v0}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroidx/fragment/app/V;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/fragment/app/V;-><init>(I)V

    new-instance v1, Landroidx/fragment/app/P;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/P;-><init>(Landroidx/fragment/app/Z;I)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/h;->d(Ljava/lang/String;Lb/a;Landroidx/activity/result/b;)Landroidx/activity/result/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Z;->B:Landroidx/activity/result/e;

    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of p2, p1, Lz/e;

    if-eqz p2, :cond_d

    check-cast p1, Lz/e;

    iget-object p2, p0, Landroidx/fragment/app/Z;->n:Landroidx/fragment/app/O;

    invoke-interface {p1, p2}, Lz/e;->addOnConfigurationChangedListener(LI/a;)V

    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of p2, p1, Lz/f;

    if-eqz p2, :cond_e

    check-cast p1, Lz/f;

    iget-object p2, p0, Landroidx/fragment/app/Z;->o:Landroidx/fragment/app/O;

    invoke-interface {p1, p2}, Lz/f;->addOnTrimMemoryListener(LI/a;)V

    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of p2, p1, Ly/y;

    if-eqz p2, :cond_f

    check-cast p1, Ly/y;

    iget-object p2, p0, Landroidx/fragment/app/Z;->p:Landroidx/fragment/app/O;

    invoke-interface {p1, p2}, Ly/y;->addOnMultiWindowModeChangedListener(LI/a;)V

    :cond_f
    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of p2, p1, Ly/z;

    if-eqz p2, :cond_10

    check-cast p1, Ly/z;

    iget-object p2, p0, Landroidx/fragment/app/Z;->q:Landroidx/fragment/app/O;

    invoke-interface {p1, p2}, Ly/z;->addOnPictureInPictureModeChangedListener(LI/a;)V

    :cond_10
    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of p2, p1, LJ/f;

    if-eqz p2, :cond_11

    if-nez p3, :cond_11

    check-cast p1, LJ/f;

    iget-object p0, p0, Landroidx/fragment/app/Z;->r:Landroidx/fragment/app/S;

    invoke-interface {p1, p0}, LJ/f;->addMenuProvider(LJ/l;)V

    :cond_11
    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/Z;->G(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Z;->D:Z

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/g0;

    iget-object v2, v2, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->E()LZ0/h;

    move-result-object v3

    const-string v4, "factory"

    invoke-static {v4, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x7f0a024a

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/fragment/app/l;

    if-eqz v5, :cond_1

    check-cast v4, Landroidx/fragment/app/l;

    goto :goto_1

    :cond_1
    new-instance v4, Landroidx/fragment/app/l;

    invoke-direct {v4, v2}, Landroidx/fragment/app/l;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v2, v1, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/g0;

    iget-object v2, p0, Landroidx/fragment/app/Z;->l:Landroidx/fragment/app/H;

    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/H;Landroidx/fragment/app/h0;Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object p1, p1, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g0;->l(Ljava/lang/ClassLoader;)V

    iget p0, p0, Landroidx/fragment/app/Z;->s:I

    iput p0, v0, Landroidx/fragment/app/g0;->e:I

    return-object v0
.end method

.method public final g(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v1, v0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-static {p1}, Landroidx/fragment/app/Z;->G(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroidx/fragment/app/Z;->D:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->W(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final h(ZLandroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v0, v0, Lz/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->Y(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/Z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/Z;->h(ZLandroid/content/res/Configuration;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final i(Landroid/view/MenuItem;)Z
    .locals 3

    iget v0, p0, Landroidx/fragment/app/Z;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/Z;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/Z;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/Z;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Landroidx/fragment/app/Z;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/Z;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final k()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Z;->G:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->x(Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/l;

    invoke-virtual {v2}, Landroidx/fragment/app/l;->k()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v2, v1, Landroidx/lifecycle/d0;

    iget-object v3, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    if-eqz v2, :cond_1

    iget-object v0, v3, Landroidx/fragment/app/h0;->d:Landroidx/fragment/app/c0;

    iget-boolean v0, v0, Landroidx/fragment/app/c0;->e:Z

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/Z;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->c:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v3, Landroidx/fragment/app/h0;->d:Landroidx/fragment/app/c0;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroidx/fragment/app/c0;->d(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v1, v0, Lz/f;

    if-eqz v1, :cond_5

    check-cast v0, Lz/f;

    iget-object v1, p0, Landroidx/fragment/app/Z;->o:Landroidx/fragment/app/O;

    invoke-interface {v0, v1}, Lz/f;->removeOnTrimMemoryListener(LI/a;)V

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v1, v0, Lz/e;

    if-eqz v1, :cond_6

    check-cast v0, Lz/e;

    iget-object v1, p0, Landroidx/fragment/app/Z;->n:Landroidx/fragment/app/O;

    invoke-interface {v0, v1}, Lz/e;->removeOnConfigurationChangedListener(LI/a;)V

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v1, v0, Ly/y;

    if-eqz v1, :cond_7

    check-cast v0, Ly/y;

    iget-object v1, p0, Landroidx/fragment/app/Z;->p:Landroidx/fragment/app/O;

    invoke-interface {v0, v1}, Ly/y;->removeOnMultiWindowModeChangedListener(LI/a;)V

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v1, v0, Ly/z;

    if-eqz v1, :cond_8

    check-cast v0, Ly/z;

    iget-object v1, p0, Landroidx/fragment/app/Z;->q:Landroidx/fragment/app/O;

    invoke-interface {v0, v1}, Ly/z;->removeOnPictureInPictureModeChangedListener(LI/a;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v1, v0, LJ/f;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_9

    check-cast v0, LJ/f;

    iget-object v1, p0, Landroidx/fragment/app/Z;->r:Landroidx/fragment/app/S;

    invoke-interface {v0, v1}, LJ/f;->removeMenuProvider(LJ/l;)V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iput-object v0, p0, Landroidx/fragment/app/Z;->u:Landroidx/fragment/app/J;

    iput-object v0, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/Z;->g:Landroidx/activity/v;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/fragment/app/Z;->h:Landroidx/fragment/app/Q;

    iget-object v1, v1, Landroidx/fragment/app/Q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/c;

    invoke-interface {v2}, Landroidx/activity/c;->cancel()V

    goto :goto_3

    :cond_a
    iput-object v0, p0, Landroidx/fragment/app/Z;->g:Landroidx/activity/v;

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Z;->z:Landroidx/activity/result/e;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/activity/result/e;->b()V

    iget-object v0, p0, Landroidx/fragment/app/Z;->A:Landroidx/activity/result/e;

    invoke-virtual {v0}, Landroidx/activity/result/e;->b()V

    iget-object p0, p0, Landroidx/fragment/app/Z;->B:Landroidx/activity/result/e;

    invoke-virtual {p0}, Landroidx/activity/result/e;->b()V

    :cond_c
    return-void
.end method

.method public final l(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v0, v0, Lz/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->Y(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/Z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Z;->l(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final m(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v0, v0, Ly/y;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->Y(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    if-eqz p2, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/Z;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Z;->m(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->e()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/Z;

    invoke-virtual {v0}, Landroidx/fragment/app/Z;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Landroid/view/MenuItem;)Z
    .locals 3

    iget v0, p0, Landroidx/fragment/app/Z;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final p(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/Z;->s:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method public final r(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    instance-of v0, v0, Ly/z;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->Y(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    if-eqz p2, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/Z;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Z;->r(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final s(Landroid/view/Menu;)Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/Z;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final t(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/Z;->b:Z

    iget-object v2, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object v2, v2, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g0;

    if-eqz v3, :cond_0

    iput p1, v3, Landroidx/fragment/app/g0;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Z;->J(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->e()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/l;

    invoke-virtual {v2}, Landroidx/fragment/app/l;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/Z;->b:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->x(Z)Z

    return-void

    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/Z;->b:Z

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    invoke-static {p1, v0}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/g0;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v1, 0x0

    if-lez p4, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v2, p4, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/Z;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v1

    :goto_2
    if-ge p4, p2, :cond_3

    iget-object v2, p0, Landroidx/fragment/app/Z;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v1

    :goto_3
    if-ge p4, p2, :cond_4

    iget-object v2, p0, Landroidx/fragment/app/Z;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/fragment/app/Z;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge v1, p4, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/X;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/Z;->u:Landroidx/fragment/app/J;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/Z;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/Z;->s:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/Z;->E:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/Z;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/Z;->G:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/Z;->D:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/fragment/app/Z;->D:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final v(Landroidx/fragment/app/X;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/Z;->G:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/Z;->E:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/fragment/app/Z;->F:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->S()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final w(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/Z;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/Z;->G:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroidx/fragment/app/Z;->E:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/fragment/app/Z;->F:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(Z)Z
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->w(Z)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/X;

    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/X;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/Z;->M:Landroidx/fragment/app/m;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v1, 0x1

    if-eqz v6, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/Z;->b:Z

    :try_start_3
    iget-object v0, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Z;->P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->d()V

    move v0, v1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->d()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Z;->Z()V

    iget-boolean v2, p0, Landroidx/fragment/app/Z;->H:Z

    if-eqz v2, :cond_5

    iput-boolean p1, p0, Landroidx/fragment/app/Z;->H:Z

    iget-object v2, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v2}, Landroidx/fragment/app/h0;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g0;

    iget-object v4, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroidx/fragment/app/Z;->b:Z

    if-eqz v5, :cond_4

    iput-boolean v1, p0, Landroidx/fragment/app/Z;->H:Z

    goto :goto_3

    :cond_4
    iput-boolean p1, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {v3}, Landroidx/fragment/app/g0;->k()V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    iget-object p0, p0, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    :goto_4
    :try_start_4
    iget-object v0, p0, Landroidx/fragment/app/Z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->e:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/fragment/app/Z;->M:Landroidx/fragment/app/m;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final y(Landroidx/fragment/app/X;Z)V
    .locals 5

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Z;->t:Landroidx/fragment/app/L;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Z;->G:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Z;->w(Z)V

    iget-object p2, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/X;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Landroidx/fragment/app/Z;->b:Z

    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/Z;->I:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/Z;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Z;->P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->d()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Z;->Z()V

    iget-boolean p1, p0, Landroidx/fragment/app/Z;->H:Z

    iget-object v0, p0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/Z;->H:Z

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/g0;

    iget-object v3, v2, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroidx/fragment/app/Z;->b:Z

    if-eqz v4, :cond_4

    iput-boolean p2, p0, Landroidx/fragment/app/Z;->H:Z

    goto :goto_1

    :cond_4
    iput-boolean p1, v3, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {v2}, Landroidx/fragment/app/g0;->k()V

    goto :goto_1

    :cond_5
    iget-object p0, v0, Landroidx/fragment/app/h0;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    iget-boolean v5, v5, Landroidx/fragment/app/j0;->p:Z

    iget-object v6, v0, Landroidx/fragment/app/Z;->K:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroidx/fragment/app/Z;->K:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/Z;->K:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/Z;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v7}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Landroidx/fragment/app/Z;->w:Landroidx/fragment/app/Fragment;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v4, :cond_13

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/a;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_d

    iget-object v14, v0, Landroidx/fragment/app/Z;->K:Ljava/util/ArrayList;

    const/4 v12, 0x0

    :goto_2
    iget-object v8, v13, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_c

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/i0;

    iget v3, v15, Landroidx/fragment/app/i0;->a:I

    if-eq v3, v11, :cond_b

    const/4 v11, 0x2

    const/16 v2, 0x9

    if-eq v3, v11, :cond_5

    const/4 v11, 0x3

    if-eq v3, v11, :cond_4

    const/4 v11, 0x6

    if-eq v3, v11, :cond_4

    const/4 v11, 0x7

    if-eq v3, v11, :cond_3

    const/16 v11, 0x8

    if-eq v3, v11, :cond_1

    goto :goto_3

    :cond_1
    new-instance v3, Landroidx/fragment/app/i0;

    const/4 v11, 0x0

    invoke-direct {v3, v2, v6, v11}, Landroidx/fragment/app/i0;-><init>(ILandroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v15, Landroidx/fragment/app/i0;->c:Z

    add-int/lit8 v12, v12, 0x1

    iget-object v2, v15, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    move-object v6, v2

    :cond_2
    :goto_3
    move-object/from16 v20, v7

    const/4 v1, 0x1

    goto/16 :goto_8

    :cond_3
    move-object/from16 v20, v7

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_4
    iget-object v3, v15, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v15, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    if-ne v3, v6, :cond_2

    new-instance v6, Landroidx/fragment/app/i0;

    invoke-direct {v6, v3, v2}, Landroidx/fragment/app/i0;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v20, v7

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_5
    iget-object v3, v15, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    iget v11, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v2, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v2, :cond_9

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Landroidx/fragment/app/Fragment;

    iget v1, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v1, v11, :cond_8

    if-ne v7, v3, :cond_6

    move/from16 v18, v11

    const/4 v1, 0x1

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    if-ne v7, v6, :cond_7

    new-instance v1, Landroidx/fragment/app/i0;

    move/from16 v18, v11

    const/4 v6, 0x0

    const/16 v11, 0x9

    invoke-direct {v1, v11, v7, v6}, Landroidx/fragment/app/i0;-><init>(ILandroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move v1, v6

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move/from16 v18, v11

    const/4 v1, 0x0

    const/16 v11, 0x9

    :goto_5
    new-instance v11, Landroidx/fragment/app/i0;

    move-object/from16 v21, v6

    const/4 v6, 0x3

    invoke-direct {v11, v6, v7, v1}, Landroidx/fragment/app/i0;-><init>(ILandroidx/fragment/app/Fragment;I)V

    iget v1, v15, Landroidx/fragment/app/i0;->d:I

    iput v1, v11, Landroidx/fragment/app/i0;->d:I

    iget v1, v15, Landroidx/fragment/app/i0;->f:I

    iput v1, v11, Landroidx/fragment/app/i0;->f:I

    iget v1, v15, Landroidx/fragment/app/i0;->e:I

    iput v1, v11, Landroidx/fragment/app/i0;->e:I

    iget v1, v15, Landroidx/fragment/app/i0;->g:I

    iput v1, v11, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v8, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    add-int/2addr v12, v1

    move-object/from16 v6, v21

    goto :goto_6

    :cond_8
    move/from16 v18, v11

    const/4 v1, 0x1

    :goto_6
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, p1

    move/from16 v11, v18

    move-object/from16 v7, v20

    goto :goto_4

    :cond_9
    move-object/from16 v20, v7

    const/4 v1, 0x1

    if-eqz v17, :cond_a

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    :cond_a
    iput v1, v15, Landroidx/fragment/app/i0;->a:I

    iput-boolean v1, v15, Landroidx/fragment/app/i0;->c:Z

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 v20, v7

    move v1, v11

    :goto_7
    iget-object v2, v15, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v12, v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v11, v1

    move-object/from16 v7, v20

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v20, v7

    goto :goto_b

    :cond_d
    move-object/from16 v20, v7

    move v1, v11

    iget-object v2, v0, Landroidx/fragment/app/Z;->K:Ljava/util/ArrayList;

    iget-object v3, v13, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_9
    if-ltz v7, :cond_10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/i0;

    iget v11, v8, Landroidx/fragment/app/i0;->a:I

    if-eq v11, v1, :cond_f

    const/4 v1, 0x3

    if-eq v11, v1, :cond_e

    packed-switch v11, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/i0;->h:Landroidx/lifecycle/q;

    iput-object v11, v8, Landroidx/fragment/app/i0;->i:Landroidx/lifecycle/q;

    goto :goto_a

    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    goto :goto_a

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_a

    :cond_e
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    const/4 v1, 0x3

    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v7, v7, -0x1

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    :goto_b
    if-nez v10, :cond_12

    iget-boolean v1, v13, Landroidx/fragment/app/j0;->g:Z

    if-eqz v1, :cond_11

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v10, 0x1

    :goto_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, v20

    goto/16 :goto_1

    :cond_13
    move-object/from16 v20, v7

    iget-object v1, v0, Landroidx/fragment/app/Z;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_16

    iget v1, v0, Landroidx/fragment/app/Z;->s:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    move/from16 v1, p3

    :goto_e
    if-ge v1, v4, :cond_16

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-object v3, v3, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/i0;

    iget-object v5, v5, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_14

    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/Z;

    if-eqz v6, :cond_14

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Z;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v5

    move-object/from16 v6, v20

    invoke-virtual {v6, v5}, Landroidx/fragment/app/h0;->g(Landroidx/fragment/app/g0;)V

    goto :goto_10

    :cond_14
    move-object/from16 v6, v20

    :goto_10
    move-object/from16 v20, v6

    goto :goto_f

    :cond_15
    move-object/from16 v6, v20

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_16
    move-object/from16 v2, p1

    move/from16 v1, p3

    :goto_11
    const/4 v3, -0x1

    if-ge v1, v4, :cond_1e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    move-object/from16 v6, p2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "Unknown cmd: "

    if-eqz v7, :cond_1c

    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->d(I)V

    iget-object v3, v5, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    :goto_12
    if-ltz v7, :cond_1b

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/i0;

    iget-object v11, v10, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_1a

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    invoke-virtual {v11, v9}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    iget v9, v5, Landroidx/fragment/app/j0;->f:I

    const/16 v12, 0x2002

    const/16 v13, 0x1001

    if-eq v9, v13, :cond_19

    if-eq v9, v12, :cond_17

    const/16 v12, 0x1004

    const/16 v13, 0x2005

    if-eq v9, v13, :cond_19

    const/16 v14, 0x1003

    if-eq v9, v14, :cond_18

    if-eq v9, v12, :cond_17

    const/4 v12, 0x0

    goto :goto_13

    :cond_17
    move v12, v13

    goto :goto_13

    :cond_18
    move v12, v14

    :cond_19
    :goto_13
    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v9, v5, Landroidx/fragment/app/j0;->o:Ljava/util/ArrayList;

    iget-object v12, v5, Landroidx/fragment/app/j0;->n:Ljava/util/ArrayList;

    invoke-virtual {v11, v9, v12}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1a
    iget v9, v10, Landroidx/fragment/app/i0;->a:I

    iget-object v12, v5, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/Z;

    packed-switch v9, :pswitch_data_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v10, Landroidx/fragment/app/i0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v9, v10, Landroidx/fragment/app/i0;->h:Landroidx/lifecycle/q;

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/Z;->U(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/q;)V

    :goto_14
    const/4 v9, 0x1

    goto/16 :goto_15

    :pswitch_7
    invoke-virtual {v12, v11}, Landroidx/fragment/app/Z;->V(Landroidx/fragment/app/Fragment;)V

    goto :goto_14

    :pswitch_8
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/fragment/app/Z;->V(Landroidx/fragment/app/Fragment;)V

    goto :goto_14

    :pswitch_9
    iget v9, v10, Landroidx/fragment/app/i0;->d:I

    iget v13, v10, Landroidx/fragment/app/i0;->e:I

    iget v14, v10, Landroidx/fragment/app/i0;->f:I

    iget v10, v10, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/Z;->T(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/Z;->g(Landroidx/fragment/app/Fragment;)V

    goto :goto_14

    :pswitch_a
    iget v9, v10, Landroidx/fragment/app/i0;->d:I

    iget v13, v10, Landroidx/fragment/app/i0;->e:I

    iget v14, v10, Landroidx/fragment/app/i0;->f:I

    iget v10, v10, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/Z;->c(Landroidx/fragment/app/Fragment;)V

    goto :goto_14

    :pswitch_b
    iget v9, v10, Landroidx/fragment/app/i0;->d:I

    iget v13, v10, Landroidx/fragment/app/i0;->e:I

    iget v14, v10, Landroidx/fragment/app/i0;->f:I

    iget v10, v10, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/Z;->T(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/Z;->F(Landroidx/fragment/app/Fragment;)V

    goto :goto_14

    :pswitch_c
    iget v9, v10, Landroidx/fragment/app/i0;->d:I

    iget v13, v10, Landroidx/fragment/app/i0;->e:I

    iget v14, v10, Landroidx/fragment/app/i0;->f:I

    iget v10, v10, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/fragment/app/Z;->X(Landroidx/fragment/app/Fragment;)V

    goto :goto_14

    :pswitch_d
    iget v9, v10, Landroidx/fragment/app/i0;->d:I

    iget v13, v10, Landroidx/fragment/app/i0;->e:I

    iget v14, v10, Landroidx/fragment/app/i0;->f:I

    iget v10, v10, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/Z;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    goto :goto_14

    :pswitch_e
    iget v9, v10, Landroidx/fragment/app/i0;->d:I

    iget v13, v10, Landroidx/fragment/app/i0;->e:I

    iget v14, v10, Landroidx/fragment/app/i0;->f:I

    iget v10, v10, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/Z;->T(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/Z;->O(Landroidx/fragment/app/Fragment;)V

    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_12

    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_19

    :cond_1c
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroidx/fragment/app/a;->d(I)V

    iget-object v3, v5, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_16
    if-ge v11, v7, :cond_1b

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/i0;

    iget-object v10, v9, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    if-eqz v10, :cond_1d

    const/4 v12, 0x0

    iput-boolean v12, v10, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    invoke-virtual {v10, v12}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    iget v12, v5, Landroidx/fragment/app/j0;->f:I

    invoke-virtual {v10, v12}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v12, v5, Landroidx/fragment/app/j0;->n:Ljava/util/ArrayList;

    iget-object v13, v5, Landroidx/fragment/app/j0;->o:Ljava/util/ArrayList;

    invoke-virtual {v10, v12, v13}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1d
    iget v12, v9, Landroidx/fragment/app/i0;->a:I

    iget-object v13, v5, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/Z;

    packed-switch v12, :pswitch_data_2

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Landroidx/fragment/app/i0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    iget-object v9, v9, Landroidx/fragment/app/i0;->i:Landroidx/lifecycle/q;

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/Z;->U(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/q;)V

    :goto_17
    const/4 v9, 0x0

    goto/16 :goto_18

    :pswitch_11
    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Landroidx/fragment/app/Z;->V(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_12
    const/4 v12, 0x0

    invoke-virtual {v13, v10}, Landroidx/fragment/app/Z;->V(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_13
    const/4 v12, 0x0

    iget v14, v9, Landroidx/fragment/app/i0;->d:I

    iget v15, v9, Landroidx/fragment/app/i0;->e:I

    iget v12, v9, Landroidx/fragment/app/i0;->f:I

    iget v9, v9, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v10, v14, v15, v12, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/Z;->T(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/Z;->c(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_14
    iget v12, v9, Landroidx/fragment/app/i0;->d:I

    iget v14, v9, Landroidx/fragment/app/i0;->e:I

    iget v15, v9, Landroidx/fragment/app/i0;->f:I

    iget v9, v9, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/Z;->g(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_15
    iget v12, v9, Landroidx/fragment/app/i0;->d:I

    iget v14, v9, Landroidx/fragment/app/i0;->e:I

    iget v15, v9, Landroidx/fragment/app/i0;->f:I

    iget v9, v9, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/Z;->T(Landroidx/fragment/app/Fragment;Z)V

    invoke-static {v10}, Landroidx/fragment/app/Z;->X(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_16
    iget v12, v9, Landroidx/fragment/app/i0;->d:I

    iget v14, v9, Landroidx/fragment/app/i0;->e:I

    iget v15, v9, Landroidx/fragment/app/i0;->f:I

    iget v9, v9, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/Z;->F(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_17
    iget v12, v9, Landroidx/fragment/app/i0;->d:I

    iget v14, v9, Landroidx/fragment/app/i0;->e:I

    iget v15, v9, Landroidx/fragment/app/i0;->f:I

    iget v9, v9, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/Z;->O(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_18
    iget v12, v9, Landroidx/fragment/app/i0;->d:I

    iget v14, v9, Landroidx/fragment/app/i0;->e:I

    iget v15, v9, Landroidx/fragment/app/i0;->f:I

    iget v9, v9, Landroidx/fragment/app/i0;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/Z;->T(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/Z;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    :goto_18
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_16

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    :cond_1e
    move-object/from16 v6, p2

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v5, p3

    :goto_1a
    if-ge v5, v4, :cond_23

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    if-eqz v1, :cond_20

    iget-object v8, v7, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_1b
    if-ltz v8, :cond_22

    iget-object v9, v7, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/i0;

    iget-object v9, v9, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_1f

    invoke-virtual {v0, v9}, Landroidx/fragment/app/Z;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/g0;->k()V

    :cond_1f
    add-int/lit8 v8, v8, -0x1

    goto :goto_1b

    :cond_20
    iget-object v7, v7, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_21
    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/i0;

    iget-object v8, v8, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_21

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Z;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/g0;->k()V

    goto :goto_1c

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_23
    iget v5, v0, Landroidx/fragment/app/Z;->s:I

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Landroidx/fragment/app/Z;->J(IZ)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_1d
    if-ge v7, v4, :cond_26

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    iget-object v8, v8, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_24
    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/i0;

    iget-object v9, v9, Landroidx/fragment/app/i0;->b:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_24

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_24

    invoke-static {v9, v0}, Landroidx/fragment/app/l;->l(Landroid/view/ViewGroup;Landroidx/fragment/app/Z;)Landroidx/fragment/app/l;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_26
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/l;

    iput-boolean v1, v5, Landroidx/fragment/app/l;->d:Z

    invoke-virtual {v5}, Landroidx/fragment/app/l;->m()V

    invoke-virtual {v5}, Landroidx/fragment/app/l;->h()V

    goto :goto_1f

    :cond_27
    move/from16 v0, p3

    :goto_20
    if-ge v0, v4, :cond_29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_28

    iget v5, v1, Landroidx/fragment/app/a;->s:I

    if-ltz v5, :cond_28

    iput v3, v1, Landroidx/fragment/app/a;->s:I

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_29
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.class public final LI3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LI3/p;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LI3/p;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, LI3/p;->c:Ljava/lang/Object;

    new-array v1, p1, [Z

    iput-object v1, p0, LI3/p;->d:Ljava/lang/Object;

    new-array p1, p1, [I

    iput-object p1, p0, LI3/p;->e:Ljava/lang/Object;

    const-wide/16 p0, 0x0

    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->fill([JJ)V

    const/4 p0, 0x0

    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public constructor <init>(Ls3/a;ZLD3/e;LA3/a;Z)V
    .locals 1

    const-string v0, "containerContext"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/p;->c:Ljava/lang/Object;

    iput-boolean p2, p0, LI3/p;->a:Z

    iput-object p3, p0, LI3/p;->d:Ljava/lang/Object;

    iput-object p4, p0, LI3/p;->e:Ljava/lang/Object;

    iput-boolean p5, p0, LI3/p;->b:Z

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/util/ArrayList;LA3/d;)V
    .locals 1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p0}, LA3/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, LI3/p;->b(Ljava/lang/Object;Ljava/util/ArrayList;LA3/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Lr3/Q;)LI3/i;
    .locals 4

    instance-of v0, p0, LE3/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lu3/j;

    invoke-virtual {p0}, Lu3/j;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    const-string v0, "this.upperBounds"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk4/c;

    invoke-static {v2}, Li3/x;->o0(Lk4/c;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk4/c;

    invoke-static {v2}, LI3/p;->f(Lk4/c;)LI3/h;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v0, p0

    goto :goto_2

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk4/c;

    const-string v3, "<this>"

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lh4/v;

    invoke-static {v2}, Lh4/c;->e(Lh4/v;)Lh4/v;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk4/c;

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lh4/v;

    invoke-static {v2}, Lh4/c;->e(Lh4/v;)Lh4/v;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk4/c;

    invoke-static {v2}, Li3/x;->w0(Lk4/c;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v1, LI3/h;->e:LI3/h;

    goto :goto_4

    :cond_c
    :goto_3
    sget-object v1, LI3/h;->d:LI3/h;

    :goto_4
    new-instance v2, LI3/i;

    if-eq v0, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_5

    :cond_d
    const/4 p0, 0x0

    :goto_5
    invoke-direct {v2, v1, p0}, LI3/i;-><init>(LI3/h;Z)V

    return-object v2

    :cond_e
    :goto_6
    return-object v1
.end method

.method public static e(Lh4/z;)LQ3/e;
    .locals 2

    sget-object v0, Lh4/X;->a:Lj4/f;

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of v0, p0, Lr3/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lr3/e;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static f(Lk4/c;)LI3/h;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Li3/x;->D0(Lh4/q;)Lh4/z;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v0

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Li3/x;->u0(Lk4/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, LI3/h;->d:LI3/h;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Li3/x;->k1(Lh4/q;)Lh4/z;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {p0}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v0

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_4
    invoke-static {v0}, Li3/x;->u0(Lk4/d;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, LI3/h;->e:LI3/h;

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(LJ1/g;)Z
    .locals 5

    invoke-interface {p1}, LJ1/g;->getId()I

    move-result v0

    iget-object v1, p0, LI3/p;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, LI3/p;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {p0}, LI3/p;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ1/g;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, v3}, LI3/p;->k(LJ1/g;Z)Z

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    return p0
.end method

.method public d(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, LI3/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, LJ1/g;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public g()I
    .locals 1

    iget-boolean v0, p0, LI3/p;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LI3/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public h()[I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LI3/p;->a:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, LI3/p;->b:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, LI3/p;->c:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    iget-object v4, p0, LI3/p;->c:Ljava/lang/Object;

    check-cast v4, [J

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object v5, p0, LI3/p;->d:Ljava/lang/Object;

    check-cast v5, [Z

    aget-boolean v6, v5, v2

    if-eq v4, v6, :cond_3

    iget-object v6, p0, LI3/p;->e:Ljava/lang/Object;

    check-cast v6, [I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    aput v3, v6, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    iget-object v3, p0, LI3/p;->e:Ljava/lang/Object;

    check-cast v3, [I

    aput v1, v3, v2

    :goto_3
    aput-boolean v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, LI3/p;->b:Z

    iput-boolean v1, p0, LI3/p;->a:Z

    iget-object v0, p0, LI3/p;->e:Ljava/lang/Object;

    check-cast v0, [I

    monitor-exit p0

    return-object v0

    :cond_5
    :goto_4
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, LI3/p;->e:Ljava/lang/Object;

    check-cast v0, LF1/g;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, LI3/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, v0, LF1/g;->a:LF1/l;

    iget-object v0, p0, LF1/l;->h:LF1/j;

    if-eqz v0, :cond_1

    iget-object v1, p0, LF1/l;->i:LI3/p;

    invoke-virtual {v1, p0}, LI3/p;->d(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    check-cast v0, LF1/g;

    iget-object p0, v0, LF1/g;->a:LF1/l;

    iget-object v0, p0, LF1/l;->i:LI3/p;

    iget-boolean v0, v0, LI3/p;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LF1/l;->getCheckedChipId()I

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Lk4/c;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, LI3/a;

    iget-object v1, p0, LI3/p;->d:Ljava/lang/Object;

    check-cast v1, LD3/e;

    iget-object v2, v1, LD3/e;->g:Ljava/lang/Object;

    check-cast v2, LQ2/c;

    invoke-interface {v2}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA3/w;

    iget-object v1, v1, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->q:LA3/c;

    const-string v3, "<this>"

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Lh4/v;

    invoke-virtual {v3}, Lh4/v;->t()Ls3/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LA3/c;->b(LA3/w;Ljava/lang/Iterable;)LA3/w;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LI3/a;-><init>(Lk4/c;LA3/w;Lr3/Q;)V

    new-instance p1, LA3/d;

    const/4 v1, 0x7

    invoke-direct {p1, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, p0, p1}, LI3/p;->b(Ljava/lang/Object;Ljava/util/ArrayList;LA3/d;)V

    return-object p0
.end method

.method public k(LJ1/g;Z)Z
    .locals 3

    invoke-interface {p1}, LJ1/g;->getId()I

    move-result v0

    iget-object p0, p0, LI3/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    return p0
.end method

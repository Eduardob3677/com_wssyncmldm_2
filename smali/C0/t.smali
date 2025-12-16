.class public abstract LC0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final w:[I

.field public static final x:LZ0/h;

.field public static final y:Ljava/lang/ThreadLocal;


# instance fields
.field public final c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Landroid/animation/TimeInterpolator;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public i:Lcom/google/firebase/messaging/p;

.field public j:Lcom/google/firebase/messaging/p;

.field public k:LC0/y;

.field public final l:[I

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Ljava/util/ArrayList;

.field public t:Ljava/util/ArrayList;

.field public u:LZ0/j;

.field public v:LZ0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LC0/t;->w:[I

    new-instance v0, LZ0/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LZ0/h;-><init>(I)V

    sput-object v0, LC0/t;->x:LZ0/h;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LC0/t;->y:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LC0/t;->c:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LC0/t;->d:J

    iput-wide v0, p0, LC0/t;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, LC0/t;->f:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LC0/t;->g:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LC0/t;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/firebase/messaging/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/p;-><init>(I)V

    iput-object v1, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    new-instance v1, Lcom/google/firebase/messaging/p;

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/p;-><init>(I)V

    iput-object v1, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iput-object v0, p0, LC0/t;->k:LC0/y;

    sget-object v1, LC0/t;->w:[I

    iput-object v1, p0, LC0/t;->l:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LC0/t;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, LC0/t;->p:I

    iput-boolean v1, p0, LC0/t;->q:Z

    iput-boolean v1, p0, LC0/t;->r:Z

    iput-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC0/t;->t:Ljava/util/ArrayList;

    sget-object v0, LC0/t;->x:LZ0/h;

    iput-object v0, p0, LC0/t;->v:LZ0/h;

    return-void
.end method

.method public static c(Lcom/google/firebase/messaging/p;Landroid/view/View;LC0/z;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Lo/b;

    invoke-virtual {v0, p1, p2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LJ/I;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v1, Lo/b;

    invoke-virtual {v1, p2}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2, v0}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2, p1}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Lo/e;

    iget-boolean p2, p0, Lo/e;->c:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lo/e;->c()V

    :cond_4
    iget-object p2, p0, Lo/e;->d:[J

    iget v3, p0, Lo/e;->f:I

    invoke-static {p2, v3, v1, v2}, Lo/d;->b([JIJ)I

    move-result p2

    if-ltz p2, :cond_5

    invoke-virtual {p0, v1, v2, v0}, Lo/e;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, v0}, Lo/e;->e(JLjava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, p1}, Lo/e;->e(JLjava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static p()Lo/b;
    .locals 2

    sget-object v0, LC0/t;->y:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/b;

    if-nez v1, :cond_0

    new-instance v1, Lo/b;

    invoke-direct {v1}, Lo/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static u(LC0/z;LC0/z;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, LC0/z;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, LC0/z;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, p2

    :goto_1
    return p0
.end method


# virtual methods
.method public A(J)V
    .locals 0

    iput-wide p1, p0, LC0/t;->e:J

    return-void
.end method

.method public B(LZ0/j;)V
    .locals 0

    iput-object p1, p0, LC0/t;->u:LZ0/j;

    return-void
.end method

.method public C(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, LC0/t;->f:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public D(LZ0/h;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, LC0/t;->x:LZ0/h;

    iput-object p1, p0, LC0/t;->v:LZ0/h;

    goto :goto_0

    :cond_0
    iput-object p1, p0, LC0/t;->v:LZ0/h;

    :goto_0
    return-void
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F(J)V
    .locals 0

    iput-wide p1, p0, LC0/t;->d:J

    return-void
.end method

.method public final G()V
    .locals 5

    iget v0, p0, LC0/t;->p:I

    if-nez v0, :cond_1

    iget-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LC0/s;

    invoke-interface {v4, p0}, LC0/s;->d(LC0/t;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, LC0/t;->r:Z

    :cond_1
    iget v0, p0, LC0/t;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LC0/t;->p:I

    return-void
.end method

.method public H(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, LC0/t;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, LC0/t;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-wide v4, p0, LC0/t;->d:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LC0/t;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, LC0/t;->f:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LC0/t;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, LC0/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object p0, p0, LC0/t;->h:Ljava/util/ArrayList;

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    :cond_3
    const-string v1, "tgts("

    invoke-static {p1, v1}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    const/4 v3, 0x0

    if-lez v1, :cond_5

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    if-lez v1, :cond_4

    invoke-static {p1, v2}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    if-lez v3, :cond_6

    invoke-static {p1, v2}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const-string p0, ")"

    invoke-static {p1, p0}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a(LC0/s;)V
    .locals 1

    iget-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, LC0/t;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, LC0/t;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LC0/t;->k()LC0/t;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, LC0/t;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, LC0/t;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC0/s;

    invoke-interface {v2}, LC0/s;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract e(LC0/z;)V
.end method

.method public final f(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, LC0/z;

    invoke-direct {v0, p1}, LC0/z;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, LC0/t;->h(LC0/z;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, LC0/t;->e(LC0/z;)V

    :goto_0
    iget-object v1, v0, LC0/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, LC0/t;->g(LC0/z;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    invoke-static {v1, p1, v0}, LC0/t;->c(Lcom/google/firebase/messaging/p;Landroid/view/View;LC0/z;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    invoke-static {v1, p1, v0}, LC0/t;->c(Lcom/google/firebase/messaging/p;Landroid/view/View;LC0/z;)V

    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, LC0/t;->f(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public g(LC0/z;)V
    .locals 0

    return-void
.end method

.method public abstract h(LC0/z;)V
.end method

.method public final i(Landroid/view/ViewGroup;Z)V
    .locals 7

    invoke-virtual {p0, p2}, LC0/t;->j(Z)V

    iget-object v0, p0, LC0/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, LC0/t;->h:Ljava/util/ArrayList;

    if-gtz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, LC0/t;->f(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, LC0/z;

    invoke-direct {v5, v4}, LC0/z;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, v5}, LC0/t;->h(LC0/z;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5}, LC0/t;->e(LC0/z;)V

    :goto_2
    iget-object v6, v5, LC0/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, LC0/t;->g(LC0/z;)V

    if-eqz p2, :cond_3

    iget-object v6, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    invoke-static {v6, v4, v5}, LC0/t;->c(Lcom/google/firebase/messaging/p;Landroid/view/View;LC0/z;)V

    goto :goto_3

    :cond_3
    iget-object v6, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    invoke-static {v6, v4, v5}, LC0/t;->c(Lcom/google/firebase/messaging/p;Landroid/view/View;LC0/z;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, LC0/z;

    invoke-direct {v0, p1}, LC0/z;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, LC0/t;->h(LC0/z;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v0}, LC0/t;->e(LC0/z;)V

    :goto_5
    iget-object v3, v0, LC0/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, LC0/t;->g(LC0/z;)V

    if-eqz p2, :cond_7

    iget-object v3, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    invoke-static {v3, p1, v0}, LC0/t;->c(Lcom/google/firebase/messaging/p;Landroid/view/View;LC0/z;)V

    goto :goto_6

    :cond_7
    iget-object v3, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    invoke-static {v3, p1, v0}, LC0/t;->c(Lcom/google/firebase/messaging/p;Landroid/view/View;LC0/z;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public final j(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p1, Lo/b;

    invoke-virtual {p1}, Lo/k;->clear()V

    iget-object p1, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Lo/e;

    invoke-virtual {p0}, Lo/e;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p1, Lo/b;

    invoke-virtual {p1}, Lo/k;->clear()V

    iget-object p1, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Lo/e;

    invoke-virtual {p0}, Lo/e;->a()V

    :goto_0
    return-void
.end method

.method public k()LC0/t;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC0/t;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LC0/t;->t:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/firebase/messaging/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/p;-><init>(I)V

    iput-object v1, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    new-instance v1, Lcom/google/firebase/messaging/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/p;-><init>(I)V

    iput-object v1, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iput-object v0, p0, LC0/t;->m:Ljava/util/ArrayList;

    iput-object v0, p0, LC0/t;->n:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public l(Landroid/view/ViewGroup;LC0/z;LC0/z;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public m(Landroid/view/ViewGroup;Lcom/google/firebase/messaging/p;Lcom/google/firebase/messaging/p;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, LC0/t;->p()Lo/b;

    move-result-object v2

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_b

    move-object/from16 v7, p4

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LC0/z;

    move-object/from16 v9, p5

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LC0/z;

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    iget-object v12, v8, LC0/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object v8, v11

    :cond_0
    if-eqz v10, :cond_1

    iget-object v12, v10, LC0/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v10, v11

    :cond_1
    if-nez v8, :cond_3

    if-nez v10, :cond_3

    :cond_2
    move-object/from16 v15, p3

    move/from16 v16, v4

    goto/16 :goto_6

    :cond_3
    if-eqz v8, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v0, v8, v10}, LC0/t;->s(LC0/z;LC0/z;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_4
    invoke-virtual {v0, v1, v8, v10}, LC0/t;->l(Landroid/view/ViewGroup;LC0/z;LC0/z;)Landroid/animation/Animator;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v13, v0, LC0/t;->c:Ljava/lang/String;

    if-eqz v10, :cond_9

    invoke-virtual/range {p0 .. p0}, LC0/t;->q()[Ljava/lang/String;

    move-result-object v8

    iget-object v10, v10, LC0/z;->b:Landroid/view/View;

    if-eqz v8, :cond_8

    array-length v14, v8

    if-lez v14, :cond_8

    new-instance v14, LC0/z;

    invoke-direct {v14, v10}, LC0/z;-><init>(Landroid/view/View;)V

    move-object/from16 v15, p3

    iget-object v5, v15, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v5, Lo/b;

    invoke-virtual {v5, v10, v11}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LC0/z;

    move/from16 v16, v4

    if-eqz v5, :cond_5

    const/4 v11, 0x0

    :goto_1
    array-length v4, v8

    if-ge v11, v4, :cond_5

    iget-object v4, v14, LC0/z;->a:Ljava/util/HashMap;

    aget-object v7, v8, v11

    move-object/from16 v17, v8

    iget-object v8, v5, LC0/z;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p4

    move-object/from16 v8, v17

    goto :goto_1

    :cond_5
    iget v4, v2, Lo/k;->e:I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_7

    invoke-virtual {v2, v5}, Lo/k;->h(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LC0/r;

    iget-object v8, v7, LC0/r;->c:LC0/z;

    if-eqz v8, :cond_6

    iget-object v8, v7, LC0/r;->a:Landroid/view/View;

    if-ne v8, v10, :cond_6

    iget-object v8, v7, LC0/r;->b:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, v7, LC0/r;->c:LC0/z;

    invoke-virtual {v7, v14}, LC0/z;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    move-object v11, v12

    goto :goto_4

    :cond_8
    move-object/from16 v15, p3

    move/from16 v16, v4

    move-object v14, v11

    goto :goto_3

    :goto_4
    move-object v12, v11

    move-object v11, v14

    goto :goto_5

    :cond_9
    move-object/from16 v15, p3

    move/from16 v16, v4

    iget-object v10, v8, LC0/z;->b:Landroid/view/View;

    :goto_5
    if-eqz v12, :cond_a

    new-instance v4, LC0/r;

    sget-object v5, LC0/A;->a:LC0/c;

    new-instance v5, LC0/G;

    invoke-direct {v5, v1}, LC0/G;-><init>(Landroid/view/View;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v10, v4, LC0/r;->a:Landroid/view/View;

    iput-object v13, v4, LC0/r;->b:Ljava/lang/String;

    iput-object v11, v4, LC0/r;->c:LC0/z;

    iput-object v5, v4, LC0/r;->d:LC0/G;

    iput-object v0, v4, LC0/r;->e:LC0/t;

    invoke-virtual {v2, v12, v4}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, LC0/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_c

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, v0, LC0/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    int-to-long v6, v2

    const-wide v8, 0x7fffffffffffffffL

    sub-long/2addr v6, v8

    invoke-virtual {v1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    return-void
.end method

.method public final n()V
    .locals 6

    iget v0, p0, LC0/t;->p:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, LC0/t;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LC0/s;

    invoke-interface {v5, p0}, LC0/s;->c(LC0/t;)V

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    iget-object v3, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    iget-object v3, v3, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v3, Lo/e;

    invoke-virtual {v3}, Lo/e;->f()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    iget-object v3, v3, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v3, Lo/e;

    invoke-virtual {v3, v0}, Lo/e;->g(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    sget-object v4, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_2
    iget-object v3, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iget-object v3, v3, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v3, Lo/e;

    invoke-virtual {v3}, Lo/e;->f()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    iget-object v3, v3, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v3, Lo/e;

    invoke-virtual {v3, v0}, Lo/e;->g(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    sget-object v4, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_3
    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, LC0/t;->r:Z

    :cond_5
    return-void
.end method

.method public final o(Landroid/view/View;Z)LC0/z;
    .locals 5

    iget-object v0, p0, LC0/t;->k:LC0/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LC0/t;->o(Landroid/view/View;Z)LC0/z;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, LC0/t;->m:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LC0/t;->n:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LC0/z;

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v4, LC0/z;->b:Landroid/view/View;

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p0, p0, LC0/t;->n:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p0, p0, LC0/t;->m:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LC0/z;

    :cond_7
    return-object v1
.end method

.method public q()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final r(Landroid/view/View;Z)LC0/z;
    .locals 1

    iget-object v0, p0, LC0/t;->k:LC0/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LC0/t;->r(Landroid/view/View;Z)LC0/z;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, LC0/t;->i:Lcom/google/firebase/messaging/p;

    goto :goto_0

    :cond_1
    iget-object p0, p0, LC0/t;->j:Lcom/google/firebase/messaging/p;

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Lo/b;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC0/z;

    return-object p0
.end method

.method public s(LC0/z;LC0/z;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, LC0/t;->q()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-static {p1, p2, v4}, LC0/t;->u(LC0/z;LC0/z;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, LC0/z;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, LC0/t;->u(LC0/z;LC0/z;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method public final t(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, LC0/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object p0, p0, LC0/t;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, LC0/t;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, LC0/t;->r:Z

    if-nez p1, :cond_2

    iget-object p1, p0, LC0/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LC0/t;->s:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, LC0/t;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC0/s;

    invoke-interface {v3}, LC0/s;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, LC0/t;->q:Z

    :cond_2
    return-void
.end method

.method public w(LC0/s;)V
    .locals 1

    iget-object v0, p0, LC0/t;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LC0/t;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LC0/t;->s:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, LC0/t;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public y(Landroid/view/ViewGroup;)V
    .locals 4

    iget-boolean p1, p0, LC0/t;->q:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, LC0/t;->r:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, LC0/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->resume()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LC0/t;->s:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, LC0/t;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC0/s;

    invoke-interface {v3}, LC0/s;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, LC0/t;->q:Z

    :cond_2
    return-void
.end method

.method public z()V
    .locals 8

    invoke-virtual {p0}, LC0/t;->G()V

    invoke-static {}, LC0/t;->p()Lo/b;

    move-result-object v0

    iget-object v1, p0, LC0/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, LC0/t;->G()V

    if-eqz v2, :cond_0

    new-instance v3, LC0/p;

    invoke-direct {v3, p0, v0}, LC0/p;-><init>(LC0/t;Lo/b;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v3, p0, LC0/t;->e:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    iget-wide v3, p0, LC0/t;->d:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    iget-object v3, p0, LC0/t;->f:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v3, LC0/q;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, LC0/q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, LC0/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, LC0/t;->n()V

    return-void
.end method

.class public abstract LC0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC0/a;

.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LC0/a;

    invoke-direct {v0}, LC0/y;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, LC0/y;->A:Z

    new-instance v1, LC0/j;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LC0/j;-><init>(I)V

    invoke-virtual {v0, v1}, LC0/y;->I(LC0/t;)V

    new-instance v1, LC0/g;

    invoke-direct {v1}, LC0/t;-><init>()V

    invoke-virtual {v0, v1}, LC0/y;->I(LC0/t;)V

    new-instance v1, LC0/j;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LC0/j;-><init>(I)V

    invoke-virtual {v0, v1}, LC0/y;->I(LC0/t;)V

    sput-object v0, LC0/x;->a:LC0/a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LC0/x;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LC0/x;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;LC0/t;)V
    .locals 3

    sget-object v0, LC0/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, LC0/x;->a:LC0/a;

    :cond_0
    invoke-virtual {p1}, LC0/t;->k()LC0/t;

    move-result-object p1

    invoke-static {}, LC0/x;->b()Lo/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC0/t;

    invoke-virtual {v2, p0}, LC0/t;->v(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, LC0/t;->i(Landroid/view/ViewGroup;Z)V

    :cond_2
    const v0, 0x7f0a029a

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LB/f;->F(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_3

    new-instance v0, LC0/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, LC0/w;->c:LC0/t;

    iput-object p0, v0, LC0/w;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    return-void
.end method

.method public static b()Lo/b;
    .locals 3

    sget-object v0, LC0/x;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/b;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lo/b;

    invoke-direct {v1}, Lo/k;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

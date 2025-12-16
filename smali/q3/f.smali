.class public final Lq3/f;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final d:Lq3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, Lq3/f;->d:Lq3/f;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr3/x;

    const-string p0, "module"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lq3/g;->f:LQ3/c;

    invoke-interface {p1, p0}, Lr3/x;->a0(LQ3/c;)Lr3/H;

    move-result-object p0

    check-cast p0, Lu3/y;

    iget-object p0, p0, Lu3/y;->g:Lg4/i;

    sget-object p1, Lu3/y;->j:[Li3/o;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le4/c;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, LR2/m;->M0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le4/c;

    return-object p0
.end method

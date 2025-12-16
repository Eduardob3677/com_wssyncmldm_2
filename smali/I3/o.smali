.class public final LI3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public c:LQ2/e;


# direct methods
.method public constructor <init>(LA3/D;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI3/o;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LI3/o;->b:Ljava/util/ArrayList;

    new-instance p1, LQ2/e;

    const-string p2, "V"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LI3/o;->c:LQ2/e;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[LI3/e;)V
    .locals 3

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LI3/o;->b:Ljava/util/ArrayList;

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, LR2/k;

    new-instance v1, LB3/k;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p2}, LB3/k;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-direct {v0, p2, v1}, LR2/k;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, LR2/z;->y1(I)I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_1

    move p2, v1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LR2/k;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, LR2/y;

    iget-object v2, v0, LR2/y;->d:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LR2/y;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR2/x;

    iget v2, v0, LR2/x;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, LR2/x;->b:Ljava/lang/Object;

    check-cast v0, LI3/e;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p2, LI3/q;

    invoke-direct {p2, v1}, LI3/q;-><init>(Ljava/util/LinkedHashMap;)V

    :goto_1
    new-instance v0, LQ2/e;

    invoke-direct {v0, p1, p2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(LY3/c;)V
    .locals 2

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, LY3/c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.desc"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LQ2/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, LI3/o;->c:LQ2/e;

    return-void
.end method

.method public final varargs c(Ljava/lang/String;[LI3/e;)V
    .locals 3

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LR2/k;

    new-instance v1, LB3/k;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p2}, LB3/k;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-direct {v0, p2, v1}, LR2/k;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, LR2/z;->y1(I)I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_0

    move p2, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LR2/k;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, LR2/y;

    iget-object v2, v0, LR2/y;->d:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LR2/y;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR2/x;

    iget v2, v0, LR2/x;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, LR2/x;->b:Ljava/lang/Object;

    check-cast v0, LI3/e;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p2, LI3/q;

    invoke-direct {p2, v1}, LI3/q;-><init>(Ljava/util/LinkedHashMap;)V

    new-instance v0, LQ2/e;

    invoke-direct {v0, p1, p2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, LI3/o;->c:LQ2/e;

    return-void
.end method

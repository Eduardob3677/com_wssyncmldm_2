.class public final Lp3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/c;


# instance fields
.field public final a:Lg4/o;

.field public final b:Lr3/x;


# direct methods
.method public constructor <init>(Lg4/o;Lu3/C;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "module"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/a;->a:Lg4/o;

    iput-object p2, p0, Lp3/a;->b:Lr3/x;

    return-void
.end method


# virtual methods
.method public final a(LQ3/c;LQ3/f;)Z
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "name"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "name.asString()"

    invoke-static {p2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "Function"

    invoke-static {p0, p2}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KFunction"

    invoke-static {p0, p2}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "SuspendFunction"

    invoke-static {p0, p2}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KSuspendFunction"

    invoke-static {p0, p2}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, Lp3/e;->e:LZ0/h;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, LZ0/h;->g(Ljava/lang/String;LQ3/c;)Lp3/d;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(LQ3/c;)Ljava/util/Collection;
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final c(LQ3/b;)Lr3/e;
    .locals 4

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p1, LQ3/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p1, LQ3/b;->b:LQ3/c;

    invoke-virtual {v0}, LQ3/c;->e()LQ3/c;

    move-result-object v0

    invoke-virtual {v0}, LQ3/c;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, LQ3/b;->i()LQ3/c;

    move-result-object v0

    invoke-virtual {v0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Function"

    invoke-static {v0, v2}, Ls4/h;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, LQ3/b;->h()LQ3/c;

    move-result-object p1

    const-string v2, "classId.packageFqName"

    invoke-static {v2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lp3/e;->e:LZ0/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LZ0/h;->g(Ljava/lang/String;LQ3/c;)Lp3/d;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lp3/a;->b:Lr3/x;

    invoke-interface {v1, p1}, Lr3/x;->a0(LQ3/c;)Lr3/H;

    move-result-object p1

    check-cast p1, Lu3/y;

    iget-object p1, p1, Lu3/y;->g:Lg4/i;

    sget-object v1, Lu3/y;->j:[Li3/o;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, v1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Le4/c;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p1}, LR2/m;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    invoke-static {v1}, LR2/m;->M0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le4/c;

    new-instance v1, Lp3/c;

    iget-object v2, v0, Lp3/d;->a:Lp3/e;

    iget v0, v0, Lp3/d;->b:I

    iget-object p0, p0, Lp3/a;->a:Lg4/o;

    invoke-direct {v1, p0, p1, v2, v0}, Lp3/c;-><init>(Lg4/o;Le4/c;Lp3/e;I)V

    :cond_6
    :goto_2
    return-object v1
.end method

.class public final LE3/e;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LE3/f;


# direct methods
.method public synthetic constructor <init>(LE3/f;I)V
    .locals 0

    iput p2, p0, LE3/e;->d:I

    iput-object p1, p0, LE3/e;->e:LE3/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LE3/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE3/e;->e:LE3/f;

    invoke-virtual {p0}, LE3/f;->a()LQ3/c;

    move-result-object v0

    iget-object v1, p0, LE3/f;->b:Lx3/e;

    if-nez v0, :cond_0

    sget-object p0, Lj4/h;->G:Lj4/h;

    invoke-virtual {v1}, Lx3/e;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LE3/f;->a:LD3/e;

    iget-object v2, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v2, v2, LD3/a;->o:Lr3/x;

    invoke-interface {v2}, Lr3/x;->g()Lo3/i;

    move-result-object v2

    invoke-static {v0, v2}, Lq3/e;->b(LQ3/c;Lo3/i;)Lr3/e;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lx3/o;

    iget-object v1, v1, Lx3/e;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v1}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v1

    invoke-static {v1}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v1}, Lx3/o;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object v1, p0, LD3/a;->k:Ls2/c;

    iget-object v1, v1, Ls2/c;->c:Ljava/lang/Object;

    check-cast v1, Ls2/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ls2/c;->n(Lx3/o;)Lr3/e;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v1, p0, LD3/a;->o:Lr3/x;

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v0

    iget-object p0, p0, LD3/a;->d:LJ3/f;

    invoke-virtual {p0}, LJ3/f;->c()Ld4/i;

    move-result-object p0

    iget-object p0, p0, Ld4/i;->l:Lcom/google/firebase/messaging/p;

    invoke-static {v1, v0, p0}, Lo4/a;->g(Lr3/x;LQ3/b;Lcom/google/firebase/messaging/p;)Lr3/e;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string p0, "resolver"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    invoke-interface {v2}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_0
    iget-object p0, p0, LE3/e;->e:LE3/f;

    iget-object p0, p0, LE3/f;->b:Lx3/e;

    iget-object p0, p0, Lx3/e;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object p0

    invoke-static {p0}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object p0

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LE3/e;->e:LE3/f;

    iget-object v0, p0, LE3/f;->b:Lx3/e;

    invoke-virtual {v0}, Lx3/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH3/a;

    move-object v3, v2

    check-cast v3, Lx3/f;

    iget-object v3, v3, Lx3/f;->a:LQ3/f;

    if-nez v3, :cond_4

    sget-object v3, LA3/z;->b:LQ3/f;

    :cond_4
    invoke-virtual {p0, v2}, LE3/f;->c(LH3/a;)LV3/g;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v4, LQ2/e;

    invoke-direct {v4, v3, v2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v1}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

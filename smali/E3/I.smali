.class public final LE3/I;
.super Lu3/c;
.source "SourceFile"


# instance fields
.field public final m:LD3/e;

.field public final n:Lx3/C;


# direct methods
.method public constructor <init>(LD3/e;Lx3/C;ILr3/j;)V
    .locals 10

    const-string v0, "javaTypeParameter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containingDeclaration"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v2, v0, LD3/a;->a:Lg4/o;

    new-instance v4, LD3/c;

    const/4 v1, 0x0

    invoke-direct {v4, p1, p2, v1}, LD3/c;-><init>(LD3/e;LH3/b;Z)V

    iget-object v1, p2, Lx3/C;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v9, v0, LD3/a;->m:Lr3/O;

    move-object v1, p0

    move-object v3, p4

    move v8, p3

    invoke-direct/range {v1 .. v9}, Lu3/c;-><init>(Lg4/o;Lr3/j;Ls3/h;LQ3/f;IZILr3/O;)V

    iput-object p1, p0, LE3/I;->m:LD3/e;

    iput-object p2, p0, LE3/I;->n:Lx3/C;

    return-void
.end method


# virtual methods
.method public final Q0(Ljava/util/List;)Ljava/util/List;
    .locals 17

    move-object/from16 v6, p0

    iget-object v7, v6, LE3/I;->m:LD3/e;

    iget-object v0, v7, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v14, v0, LD3/a;->r:Ls2/c;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lh4/v;

    sget-object v0, LI3/n;->h:LI3/n;

    const-string v1, "<this>"

    invoke-static {v1, v13}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v13, v0, v1}, Lh4/X;->d(Lh4/v;Lc3/b;Lq4/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v9, LI3/p;

    sget-object v4, LA3/a;->h:LA3/a;

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, LI3/p;-><init>(Ls3/a;ZLD3/e;LA3/a;Z)V

    sget-object v11, LR2/u;->c:LR2/u;

    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object v8, v14

    move-object v10, v13

    move-object v1, v13

    move v13, v0

    invoke-virtual/range {v8 .. v13}, Ls2/c;->i(LI3/p;Lh4/v;Ljava/util/List;LI3/q;Z)Lh4/v;

    move-result-object v13

    if-nez v13, :cond_1

    move-object v13, v1

    :cond_1
    :goto_1
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v15
.end method

.method public final R0()Ljava/util/List;
    .locals 8

    iget-object v0, p0, LE3/I;->n:Lx3/C;

    iget-object v0, v0, Lx3/C;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "typeVariable.bounds"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    new-instance v6, Lx3/q;

    invoke-direct {v6, v5}, Lx3/q;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, LR2/m;->d1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx3/q;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lx3/q;->a:Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-class v2, Ljava/lang/Object;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, LR2/u;->c:LR2/u;

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v2, p0, LE3/I;->m:LD3/e;

    if-eqz v0, :cond_3

    iget-object p0, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->o:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->e()Lh4/z;

    move-result-object p0

    const-string v0, "c.module.builtIns.anyType"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->o:Lr3/x;

    invoke-interface {v0}, Lr3/x;->g()Lo3/i;

    move-result-object v0

    invoke-virtual {v0}, Lo3/i;->o()Lh4/z;

    move-result-object v0

    const-string v1, "c.module.builtIns.nullableAnyType"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx3/q;

    iget-object v5, v2, LD3/e;->h:Ljava/lang/Object;

    check-cast v5, Lcom/google/firebase/messaging/p;

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-static {v6, v3, v3, p0, v7}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p0, v0

    :goto_3
    return-object p0
.end method

.class public final Ll3/D;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/E;


# direct methods
.method public synthetic constructor <init>(Ll3/E;I)V
    .locals 0

    iput p2, p0, Ll3/D;->d:I

    iput-object p1, p0, Ll3/D;->e:Ll3/E;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 15

    const/16 v0, 0x29

    const-string v1, "desc"

    iget-object v2, p0, Ll3/D;->e:Ll3/E;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget p0, p0, Ll3/D;->d:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ll3/u0;->a:LQ3/b;

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object p0

    invoke-static {p0}, Ll3/u0;->c(Lr3/s;)Ll3/r0;

    move-result-object p0

    instance-of v6, p0, Ll3/j;

    iget-object v7, v2, Ll3/E;->d:Ll3/C;

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    check-cast p0, Ll3/j;

    iget-object p0, p0, Ll3/j;->d:LP3/e;

    iget-object v6, p0, LP3/e;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ll3/E;->g()Lm3/e;

    move-result-object v9

    invoke-interface {v9}, Lm3/e;->p()Ljava/lang/reflect/Member;

    move-result-object v9

    invoke-static {v9}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    xor-int/2addr v9, v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "name"

    invoke-static {v10, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LP3/e;->c:Ljava/lang/String;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "<init>"

    invoke-static {v6, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v7, v1, p0, v4}, Ll3/C;->b(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    invoke-virtual {v7}, Ll3/C;->h()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "$default"

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v11, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    const/4 v11, 0x6

    invoke-static {p0, v0, v4, v4, v11}, Ls4/h;->m(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7, v0, v4, p0}, Ll3/C;->n(IILjava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {v10, v6, v1, p0, v9}, Ll3/C;->m(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    instance-of v0, p0, Ll3/i;

    const/4 v12, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ll3/r;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2}, Ll3/r;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li3/k;

    check-cast v2, Ll3/T;

    invoke-virtual {v2}, Ll3/T;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Lm3/a;

    invoke-direct {v0, p0, v1, v12}, Lm3/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;I)V

    goto/16 :goto_6

    :cond_4
    check-cast p0, Ll3/i;

    iget-object p0, p0, Ll3/i;->d:LP3/e;

    iget-object p0, p0, LP3/e;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v7}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v1, p0, v5}, Ll3/C;->b(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Ll3/C;->o(Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_3

    :cond_5
    instance-of v0, p0, Ll3/f;

    if-eqz v0, :cond_7

    check-cast p0, Ll3/f;

    invoke-interface {v7}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    iget-object v14, p0, Ll3/f;->d:Ljava/util/List;

    invoke-static {v14}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-direct {v11, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v0, Lm3/a;

    const/4 v13, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lm3/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    goto/16 :goto_6

    :cond_7
    :goto_2
    move-object p0, v8

    :goto_3
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v0

    invoke-static {v2, p0, v0, v5}, Ll3/E;->o(Ll3/E;Ljava/lang/reflect/Constructor;Lr3/s;Z)Lm3/t;

    move-result-object p0

    goto :goto_5

    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v0

    check-cast v0, LK3/c;

    invoke-virtual {v0}, LK3/c;->t()Ls3/h;

    move-result-object v0

    sget-object v1, Ll3/w0;->a:LQ3/c;

    invoke-interface {v0, v1}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v0

    invoke-interface {v0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lr3/e;

    invoke-interface {v0}, Lr3/e;->N()Z

    move-result v0

    if-nez v0, :cond_a

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ll3/E;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lm3/q;

    invoke-direct {v0, p0}, Lm3/q;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_4

    :cond_9
    new-instance v0, Lm3/s;

    invoke-direct {v0, v5, p0}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    :goto_4
    move-object p0, v0

    goto :goto_5

    :cond_a
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ll3/E;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lm3/r;

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v1

    iget-object v3, v2, Ll3/E;->f:Ljava/lang/Object;

    invoke-static {v3, v1}, Lf1/a;->c(Ljava/lang/Object;Lr3/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lm3/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    new-instance v0, Lm3/s;

    invoke-direct {v0, v3, p0}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_4

    :cond_c
    move-object p0, v8

    :goto_5
    if-eqz p0, :cond_d

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lf1/a;->k(Lm3/e;Lr3/s;Z)Lm3/e;

    move-result-object v8

    :cond_d
    move-object v0, v8

    :goto_6
    return-object v0

    :pswitch_0
    sget-object p0, Ll3/u0;->a:LQ3/b;

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object p0

    invoke-static {p0}, Ll3/u0;->c(Lr3/s;)Ll3/r0;

    move-result-object p0

    instance-of v6, p0, Ll3/i;

    const/4 v10, 0x2

    iget-object v7, v2, Ll3/E;->d:Ll3/C;

    if-eqz v6, :cond_10

    invoke-virtual {v2}, Ll3/r;->m()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v7}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2}, Ll3/r;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li3/k;

    check-cast v2, Ll3/T;

    invoke-virtual {v2}, Ll3/T;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance v0, Lm3/a;

    invoke-direct {v0, p0, v1, v10}, Lm3/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;I)V

    goto/16 :goto_c

    :cond_f
    check-cast p0, Ll3/i;

    iget-object p0, p0, Ll3/i;->d:LP3/e;

    iget-object p0, p0, LP3/e;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v7}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, p0}, Ll3/C;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v1, p0}, Ll3/C;->o(Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_8

    :cond_10
    instance-of v1, p0, Ll3/j;

    if-eqz v1, :cond_11

    check-cast p0, Ll3/j;

    iget-object p0, p0, Ll3/j;->d:LP3/e;

    iget-object v1, p0, LP3/e;->b:Ljava/lang/String;

    iget-object p0, p0, LP3/e;->c:Ljava/lang/String;

    invoke-virtual {v7, v1, p0}, Ll3/C;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_8

    :cond_11
    instance-of v1, p0, Ll3/h;

    if-eqz v1, :cond_12

    check-cast p0, Ll3/h;

    iget-object p0, p0, Ll3/h;->d:Ljava/lang/reflect/Method;

    goto :goto_8

    :cond_12
    instance-of v1, p0, Ll3/g;

    if-eqz v1, :cond_1a

    check-cast p0, Ll3/g;

    iget-object p0, p0, Ll3/g;->d:Ljava/lang/reflect/Constructor;

    :goto_8
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_13

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v0

    invoke-static {v2, p0, v0, v4}, Ll3/E;->o(Ll3/E;Ljava/lang/reflect/Constructor;Lr3/s;Z)Lm3/t;

    move-result-object p0

    goto/16 :goto_a

    :cond_13
    instance-of v1, p0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_19

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    iget-object v1, v2, Ll3/E;->f:Ljava/lang/Object;

    if-nez v0, :cond_15

    invoke-virtual {v2}, Ll3/E;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lm3/p;

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v3

    invoke-static {v1, v3}, Lf1/a;->c(Ljava/lang/Object;Lr3/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lm3/p;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_9

    :cond_14
    new-instance v0, Lm3/s;

    invoke-direct {v0, v4, p0}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    :goto_9
    move-object p0, v0

    goto :goto_a

    :cond_15
    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v0

    check-cast v0, LK3/c;

    invoke-virtual {v0}, LK3/c;->t()Ls3/h;

    move-result-object v0

    sget-object v6, Ll3/w0;->a:LQ3/c;

    invoke-interface {v0, v6}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v2}, Ll3/E;->n()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lm3/q;

    invoke-direct {v0, p0}, Lm3/q;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_9

    :cond_16
    new-instance v0, Lm3/s;

    invoke-direct {v0, v5, p0}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_9

    :cond_17
    invoke-virtual {v2}, Ll3/E;->n()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lm3/r;

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v3

    invoke-static {v1, v3}, Lf1/a;->c(Ljava/lang/Object;Lr3/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lm3/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    new-instance v0, Lm3/s;

    invoke-direct {v0, v3, p0}, Lm3/s;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_9

    :goto_a
    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lf1/a;->k(Lm3/e;Lr3/s;Z)Lm3/e;

    move-result-object v0

    goto :goto_c

    :cond_19
    new-instance v1, LQ2/d;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not compute caller for function: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ll3/E;->p()Lr3/s;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (member = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v3}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1a
    instance-of v0, p0, Ll3/f;

    if-eqz v0, :cond_1c

    check-cast p0, Ll3/f;

    invoke-interface {v7}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    iget-object v12, p0, Ll3/f;->d:Ljava/util/List;

    invoke-static {v12}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-direct {v9, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    new-instance v0, Lm3/a;

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lm3/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    :goto_c
    return-object v0

    :cond_1c
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

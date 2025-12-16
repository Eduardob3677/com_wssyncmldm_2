.class public final Ll3/u;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/w;

.field public final synthetic f:Ll3/z;


# direct methods
.method public synthetic constructor <init>(Ll3/w;Ll3/z;I)V
    .locals 0

    iput p3, p0, Ll3/u;->d:I

    iput-object p1, p0, Ll3/u;->e:Ll3/w;

    iput-object p2, p0, Ll3/u;->f:Ll3/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ll3/z;Ll3/w;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/u;->d:I

    iput-object p1, p0, Ll3/u;->f:Ll3/z;

    iput-object p2, p0, Ll3/u;->e:Ll3/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Ll3/u;->f:Ll3/z;

    iget-object v2, p0, Ll3/u;->e:Ll3/w;

    iget p0, p0, Ll3/u;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {v2}, Ll3/w;->a()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->s()Ljava/util/List;

    move-result-object p0

    const-string v0, "descriptor.declaredTypeParameters"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/Q;

    new-instance v3, Ll3/m0;

    const-string v4, "descriptor"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v1, v2}, Ll3/m0;-><init>(Ll3/n0;Lr3/Q;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_0
    invoke-virtual {v2}, Ll3/w;->a()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object p0

    const-string v3, "descriptor.typeConstructor.supertypes"

    invoke-static {v3, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/v;

    new-instance v5, Ll3/l0;

    const-string v6, "kotlinType"

    invoke-static {v6, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lf4/l;

    invoke-direct {v6, v4, v2, v1, v0}, Lf4/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v5, v4, v6}, Ll3/l0;-><init>(Lh4/v;Lc3/a;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ll3/w;->a()Lr3/e;

    move-result-object p0

    sget-object v0, Lo3/i;->e:LQ3/f;

    sget-object v0, Lo3/m;->a:LQ3/e;

    invoke-static {p0, v0}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lo3/m;->b:LQ3/e;

    invoke-static {p0, v0}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/l0;

    iget-object v0, v0, Ll3/l0;->a:Lh4/v;

    invoke-static {v0}, LT3/e;->c(Lh4/v;)Lr3/e;

    move-result-object v0

    invoke-interface {v0}, Lr3/e;->L()I

    move-result v0

    const-string v1, "getClassDescriptorForType(it.type).kind"

    invoke-static {v0, v1}, LB/f;->E(ILjava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_5
    :goto_3
    new-instance p0, Ll3/l0;

    invoke-virtual {v2}, Ll3/w;->a()Lr3/e;

    move-result-object v0

    invoke-static {v0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object v0

    invoke-virtual {v0}, Lo3/i;->e()Lh4/z;

    move-result-object v0

    const-string v1, "descriptor.builtIns.anyType"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Ll3/v;->d:Ll3/v;

    invoke-direct {p0, v0, v1}, Ll3/l0;-><init>(Lh4/v;Lc3/a;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    invoke-static {v3}, Lq4/k;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, v1, Ll3/z;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v1}, Ll3/z;->q()LQ3/b;

    move-result-object p0

    iget-boolean v3, p0, LQ3/b;->c:Z

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Ll3/z;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v3, 0x24

    if-eqz v2, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v1}, Ls4/h;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v1}, Ls4/h;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_9
    const/4 p0, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v3, v2, v2, p0}, Ls4/h;->m(Ljava/lang/CharSequence;CIZI)I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_a

    goto :goto_5

    :cond_a
    add-int/2addr p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    move-object p0, v1

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, LQ3/b;->j()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "classId.shortClassName.asString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

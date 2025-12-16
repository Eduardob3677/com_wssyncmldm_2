.class public final Ll3/s;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/w;


# direct methods
.method public synthetic constructor <init>(Ll3/w;I)V
    .locals 0

    iput p2, p0, Ll3/s;->d:I

    iput-object p1, p0, Ll3/s;->e:Ll3/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ll3/s;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ll3/s;->e:Ll3/w;

    invoke-virtual {p0}, Ll3/w;->a()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->A0()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "descriptor.sealedSubclasses"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/e;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v2, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ll3/z;

    invoke-direct {v2, v1}, Ll3/z;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :pswitch_0
    iget-object p0, p0, Ll3/s;->e:Ll3/w;

    invoke-virtual {p0}, Ll3/w;->a()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->R()La4/o;

    move-result-object p0

    const-string v0, "descriptor.unsubstitutedInnerClassesScope"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Li3/x;->H(La4/q;La4/f;I)Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lr3/j;

    invoke-static {v3}, LT3/e;->n(Lr3/j;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/j;

    instance-of v3, v2, Lr3/e;

    if-eqz v3, :cond_6

    check-cast v2, Lr3/e;

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_7

    invoke-static {v2}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_8

    new-instance v3, Ll3/z;

    invoke-direct {v3, v2}, Ll3/z;-><init>(Ljava/lang/Class;)V

    goto :goto_6

    :cond_8
    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    return-object p0

    :pswitch_1
    iget-object p0, p0, Ll3/s;->e:Ll3/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/w;->l:[Li3/o;

    const/16 v1, 0xa

    aget-object v1, v0, v1

    iget-object v1, p0, Ll3/w;->f:Ll3/p0;

    invoke-virtual {v1}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-declaredNonStaticMembers>(...)"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object p0, p0, Ll3/w;->g:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-declaredStaticMembers>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Ll3/s;->e:Ll3/w;

    invoke-virtual {p0}, Ll3/w;->a()Lr3/e;

    move-result-object p0

    invoke-static {p0}, Ll3/w0;->d(Ls3/a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Ll3/s;->e:Ll3/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/w;->l:[Li3/o;

    const/16 v1, 0xb

    aget-object v1, v0, v1

    iget-object v1, p0, Ll3/w;->g:Ll3/p0;

    invoke-virtual {v1}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-declaredStaticMembers>(...)"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object p0, p0, Ll3/w;->i:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-inheritedStaticMembers>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Ll3/s;->e:Ll3/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/w;->l:[Li3/o;

    const/16 v1, 0xa

    aget-object v1, v0, v1

    iget-object v1, p0, Ll3/w;->f:Ll3/p0;

    invoke-virtual {v1}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-declaredNonStaticMembers>(...)"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iget-object p0, p0, Ll3/w;->h:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-inheritedNonStaticMembers>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Ll3/s;->e:Ll3/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/w;->l:[Li3/o;

    const/16 v1, 0xe

    aget-object v1, v0, v1

    iget-object v1, p0, Ll3/w;->j:Ll3/p0;

    invoke-virtual {v1}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-allNonStaticMembers>(...)"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object p0, p0, Ll3/w;->k:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-allStaticMembers>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

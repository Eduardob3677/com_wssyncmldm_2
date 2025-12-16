.class public final Ll3/t;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/z;


# direct methods
.method public synthetic constructor <init>(Ll3/z;I)V
    .locals 0

    iput p2, p0, Ll3/t;->d:I

    iput-object p1, p0, Ll3/t;->e:Ll3/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    const-string v1, "descriptor.staticScope"

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Ll3/t;->e:Ll3/z;

    iget p0, p0, Ll3/t;->d:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ll3/w;

    invoke-direct {p0, v4}, Ll3/w;-><init>(Ll3/z;)V

    return-object p0

    :pswitch_0
    iget-object p0, v4, Ll3/z;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ll3/z;->q()LQ3/b;

    move-result-object p0

    iget-boolean v0, p0, LQ3/b;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_1
    invoke-virtual {v4}, Ll3/z;->r()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->X()La4/o;

    move-result-object p0

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v3}, Ll3/C;->g(La4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {v4}, Ll3/z;->r()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->q0()La4/o;

    move-result-object p0

    invoke-virtual {v4, p0, v3}, Ll3/C;->g(La4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget p0, Ll3/z;->f:I

    invoke-virtual {v4}, Ll3/z;->q()LQ3/b;

    move-result-object p0

    iget-object v0, v4, Ll3/z;->e:Ll3/q0;

    invoke-virtual {v0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ll3/A;->b:[Li3/o;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    iget-object v0, v0, Ll3/A;->a:Ll3/p0;

    invoke-virtual {v0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-moduleData>(...)"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lw3/e;

    iget-boolean v1, p0, LQ3/b;->c:Z

    iget-object v0, v0, Lw3/e;->a:Ld4/i;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Ld4/i;->b(LQ3/b;)Lr3/e;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Ld4/i;->b:Lr3/x;

    invoke-static {v0, p0}, Lo4/a;->e(Lr3/x;LQ3/b;)Lr3/e;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_5

    iget-object p0, v4, Ll3/z;->d:Ljava/lang/Class;

    invoke-static {p0}, Lp/a;->f(Ljava/lang/Class;)Lw3/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lw3/b;->b:LK3/b;

    if-eqz v0, :cond_3

    iget-object v0, v0, LK3/b;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LK3/a;

    :cond_3
    if-nez v2, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    sget-object v0, Ll3/x;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_5
    new-instance v0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unknown class: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (kind = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It\'s not a Kotlin class or interface, so the reflection library has no idea what declarations it has. Please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    new-instance v0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unresolved class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    return-object p0

    :pswitch_9
    invoke-virtual {v4}, Ll3/z;->r()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->X()La4/o;

    move-result-object p0

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v0}, Ll3/C;->g(La4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {v4}, Ll3/z;->r()Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->q0()La4/o;

    move-result-object p0

    invoke-virtual {v4, p0, v0}, Ll3/C;->g(La4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {v4}, Ll3/z;->d()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/i;

    new-instance v2, Ll3/E;

    invoke-direct {v2, v4, v1}, Ll3/E;-><init>(Ll3/C;Lr3/s;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

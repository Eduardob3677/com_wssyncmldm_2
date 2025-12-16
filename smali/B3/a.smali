.class public final LB3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB3/a;->c:I

    iput-object p2, p0, LB3/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LB3/a;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Li4/f;

    iget-object p0, p0, LB3/a;->d:Ljava/lang/Object;

    check-cast p0, Lu3/a;

    iget-object v0, p0, Lu3/a;->d:Lu3/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "descriptor"

    invoke-static {p1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lu3/a;->d:Lu3/b;

    iget-object p0, p0, Lu3/b;->d:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/z;

    return-object p0

    :pswitch_0
    check-cast p1, LQ3/f;

    iget-object p0, p0, LB3/a;->d:Ljava/lang/Object;

    check-cast p0, Lo3/i;

    invoke-virtual {p0}, Lo3/i;->k()Lu3/C;

    move-result-object p0

    sget-object v0, Lo3/n;->j:LQ3/c;

    invoke-virtual {p0, v0}, Lu3/C;->a0(LQ3/c;)Lr3/H;

    move-result-object p0

    check-cast p0, Lu3/y;

    iget-object p0, p0, Lu3/y;->i:La4/k;

    if-eqz p0, :cond_2

    sget-object v1, Lz3/b;->c:Lz3/b;

    invoke-virtual {p0, p1, v1}, La4/k;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lr3/e;

    if-eqz v0, :cond_0

    check-cast p0, Lr3/e;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must be a class descriptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Built-in class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LQ3/c;->c(LQ3/f;)LQ3/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    const/16 p0, 0xb

    invoke-static {p0}, Lo3/i;->a(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    check-cast p1, Lr3/c;

    invoke-interface {p1}, Lr3/w;->c()LA3/p;

    move-result-object v0

    invoke-static {v0}, Lr3/n;->e(LA3/p;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, LB3/a;->d:Ljava/lang/Object;

    check-cast p0, Lr3/e;

    if-eqz p0, :cond_3

    sget-object v0, Lr3/n;->l:Lr3/O;

    invoke-static {v0, p1, p0}, Lr3/n;->c(Lr3/O;Lr3/m;Lr3/j;)Lr3/m;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, Lr3/n;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lr3/c;

    if-eqz p1, :cond_5

    iget-object p0, p0, LB3/a;->d:Ljava/lang/Object;

    check-cast p0, LB3/b;

    iget-object p0, p0, LB3/b;->f:Ld4/k;

    invoke-interface {p0, p1}, Ld4/k;->a(Lr3/c;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'descriptor\' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

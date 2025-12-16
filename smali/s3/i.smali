.class public final Ls3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/h;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls3/i;->c:I

    iput-object p2, p0, Ls3/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ls3/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls3/i;->c:I

    invoke-static {p1}, LR2/i;->w0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/i;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(LQ3/c;)Z
    .locals 1

    iget v0, p0, Ls3/i;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lo4/a;->n(Ls3/h;LQ3/c;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p0

    iget-object p0, p0, LR2/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/h;

    invoke-interface {v0, p1}, Ls3/h;->b(LQ3/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    invoke-static {p0, p1}, Lo4/a;->n(Ls3/h;LQ3/c;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(LQ3/c;)Ls3/b;
    .locals 2

    iget v0, p0, Ls3/i;->c:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, LQ3/c;

    invoke-static {p1, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LI3/b;->a:LI3/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p0

    new-instance v0, Lr3/E;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lr3/E;-><init>(LQ3/c;I)V

    invoke-static {p0, v0}, Lr4/m;->m(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p0

    new-instance p1, Lr4/e;

    invoke-direct {p1, p0}, Lr4/e;-><init>(Lr4/f;)V

    invoke-virtual {p1}, Lr4/e;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr4/e;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Ls3/b;

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lo4/a;->c(Ls3/h;LQ3/c;)Ls3/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Ls3/i;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/h;

    invoke-interface {v0}, Ls3/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :pswitch_1
    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, Ls3/i;->c:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, LR2/t;->c:LR2/t;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p0

    sget-object v0, Ls3/k;->d:Ls3/k;

    new-instance v1, Lr4/h;

    sget-object v2, Lr4/p;->l:Lr4/p;

    invoke-direct {v1, p0, v0, v2}, Lr4/h;-><init>(Lr4/k;Lc3/b;Lc3/b;)V

    new-instance p0, Lr4/g;

    invoke-direct {p0, v1}, Lr4/g;-><init>(Lr4/h;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ls3/i;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ls3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

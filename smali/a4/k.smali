.class public final La4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/o;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La4/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La4/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg4/o;Lc3/a;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, La4/k;->b:I

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La4/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, La4/j;-><init>(ILc3/a;)V

    check-cast p1, Lg4/l;

    new-instance p2, Lg4/i;

    invoke-direct {p2, p1, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p2, p0, La4/k;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    invoke-interface {p0}, La4/o;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    invoke-interface {p0}, La4/o;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    return-object p0
.end method

.method public d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    iget v0, p0, La4/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, La4/k;->j(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, La4/k;->j(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    sget-object p1, La4/l;->g:La4/l;

    invoke-static {p0, p1}, Li3/x;->Z0(Ljava/util/Collection;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    invoke-interface {p0}, La4/o;->e()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 2

    iget v0, p0, La4/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, La4/k;->i(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, La4/k;->i(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lr3/j;

    instance-of v1, v1, Lr3/b;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, La4/l;->f:La4/l;

    invoke-static {p1, p0}, Li3/x;->Z0(Ljava/util/Collection;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, p2}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    iget v0, p0, La4/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, La4/k;->k(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, La4/k;->k(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    sget-object p1, La4/l;->h:La4/l;

    invoke-static {p0, p1}, Li3/x;->Z0(Ljava/util/Collection;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()La4/o;
    .locals 1

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object v0

    instance-of v0, v0, La4/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.AbstractScopeAdapter"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, La4/k;

    invoke-virtual {p0}, La4/k;->h()La4/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final i(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, La4/q;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final j(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final k(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, La4/k;->l()La4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final l()La4/o;
    .locals 1

    iget v0, p0, La4/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, La4/k;->c:Ljava/lang/Object;

    check-cast p0, La4/o;

    return-object p0

    :pswitch_0
    iget-object p0, p0, La4/k;->c:Ljava/lang/Object;

    check-cast p0, Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La4/o;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

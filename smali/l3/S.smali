.class public final Ll3/S;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/T;


# direct methods
.method public synthetic constructor <init>(Ll3/T;I)V
    .locals 0

    iput p2, p0, Ll3/S;->d:I

    iput-object p1, p0, Ll3/S;->e:Ll3/T;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ll3/S;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ll3/S;->e:Ll3/T;

    invoke-virtual {p0}, Ll3/T;->a()Lr3/I;

    move-result-object v0

    instance-of v1, v0, Lu3/w;

    iget-object v2, p0, Ll3/T;->a:Ll3/r;

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ll3/r;->k()Lr3/c;

    move-result-object v1

    invoke-static {v1}, Ll3/w0;->g(Lr3/b;)Lu3/w;

    move-result-object v1

    invoke-static {v1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ll3/r;->k()Lr3/c;

    move-result-object v1

    invoke-interface {v1}, Lr3/c;->k0()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-virtual {v2}, Ll3/r;->k()Lr3/c;

    move-result-object p0

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/e;

    invoke-static {p0}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot determine receiver Java type of inherited declaration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    invoke-virtual {v2}, Ll3/r;->g()Lm3/e;

    move-result-object v0

    invoke-interface {v0}, Lm3/e;->o()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Ll3/T;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Ll3/S;->e:Ll3/T;

    invoke-virtual {p0}, Ll3/T;->a()Lr3/I;

    move-result-object p0

    invoke-static {p0}, Ll3/w0;->d(Ls3/a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

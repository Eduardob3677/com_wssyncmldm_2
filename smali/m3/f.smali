.class public final Lm3/f;
.super Lm3/t;
.source "SourceFile"

# interfaces
.implements Lm3/d;


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;I)V
    .locals 3

    iput p3, p0, Lm3/f;->e:I

    packed-switch p3, :pswitch_data_0

    const-string p3, "constructor"

    invoke-static {p3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "constructor.declaringClass"

    invoke-static {v0, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "constructor.genericParameterTypes"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, LR2/i;->l0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Lm3/t;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    iput-object p2, p0, Lm3/f;->f:Ljava/lang/Object;

    return-void

    :pswitch_0
    const-string p3, "constructor"

    invoke-static {p3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "constructor.declaringClass"

    invoke-static {v0, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "constructor.genericParameterTypes"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Lm3/t;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    iput-object p2, p0, Lm3/f;->f:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm3/f;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LW1/a;->j(Lm3/e;[Ljava/lang/Object;)V

    iget-object v0, p0, Lm3/t;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    new-instance v1, Lc1/w;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lc1/w;-><init>(I)V

    iget-object p0, p0, Lm3/f;->f:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lc1/w;->Q(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lc1/w;->R(Ljava/lang/Object;)V

    iget-object p0, v1, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, LW1/a;->j(Lm3/e;[Ljava/lang/Object;)V

    iget-object v0, p0, Lm3/t;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    new-instance v1, Lc1/w;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lc1/w;-><init>(I)V

    iget-object p0, p0, Lm3/f;->f:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lc1/w;->Q(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lc1/w;->R(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lc1/w;->Q(Ljava/lang/Object;)V

    iget-object p0, v1, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

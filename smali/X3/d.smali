.class public final LX3/d;
.super Lq4/k;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQ2/a;Lc3/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LX3/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX3/d;->c:Ljava/io/Serializable;

    iput-object p2, p0, LX3/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    iput p3, p0, LX3/d;->b:I

    iput-object p1, p0, LX3/d;->d:Ljava/lang/Object;

    iput-object p2, p0, LX3/d;->c:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LX3/d;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p1, Lr3/c;

    const-string v0, "current"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LX3/d;->c:Ljava/io/Serializable;

    check-cast v0, LQ2/a;

    iget-object v1, v0, LQ2/a;->d:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object p0, p0, LX3/d;->d:Ljava/lang/Object;

    check-cast p0, Lc3/b;

    invoke-interface {p0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iput-object p1, v0, LQ2/a;->d:Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, LX3/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LX3/d;->d:Ljava/lang/Object;

    check-cast v0, Lc3/b;

    invoke-interface {v0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, LX3/d;->c:Ljava/io/Serializable;

    check-cast p0, [Z

    if-eqz p1, :cond_0

    aput-boolean v0, p0, v1

    :cond_0
    aget-boolean p0, p0, v1

    xor-int/2addr p0, v0

    return p0

    :pswitch_0
    check-cast p1, Lr3/e;

    const-string v0, "javaClassDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LX3/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, LL2/b;->K(Lr3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lq3/p;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, LX3/d;->c:Ljava/io/Serializable;

    check-cast p0, LQ2/a;

    if-eqz v0, :cond_1

    sget-object p1, Lq3/k;->c:Lq3/k;

    iput-object p1, p0, LQ2/a;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lq3/p;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lq3/k;->d:Lq3/k;

    iput-object p1, p0, LQ2/a;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Lq3/p;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lq3/k;->f:Lq3/k;

    iput-object p1, p0, LQ2/a;->d:Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object p0, p0, LQ2/a;->d:Ljava/lang/Object;

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    check-cast p1, Lr3/c;

    const-string v0, "current"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LX3/d;->c:Ljava/io/Serializable;

    check-cast p0, LQ2/a;

    iget-object p0, p0, LQ2/a;->d:Ljava/lang/Object;

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LX3/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LX3/d;->c:Ljava/io/Serializable;

    check-cast p0, [Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LX3/d;->c:Ljava/io/Serializable;

    check-cast p0, LQ2/a;

    iget-object p0, p0, LQ2/a;->d:Ljava/lang/Object;

    check-cast p0, Lq3/k;

    if-nez p0, :cond_0

    sget-object p0, Lq3/k;->e:Lq3/k;

    :cond_0
    return-object p0

    :pswitch_1
    iget-object p0, p0, LX3/d;->c:Ljava/io/Serializable;

    check-cast p0, LQ2/a;

    iget-object p0, p0, LQ2/a;->d:Ljava/lang/Object;

    check-cast p0, Lr3/c;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

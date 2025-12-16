.class public final Ln4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln4/e;


# static fields
.field public static final b:Ln4/l;

.field public static final c:Ln4/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/l;-><init>(I)V

    sput-object v0, Ln4/l;->b:Ln4/l;

    new-instance v0, Ln4/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln4/l;-><init>(I)V

    sput-object v0, Ln4/l;->c:Ln4/l;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln4/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr3/s;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Ln4/l;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LZ0/j;->Q(Ln4/e;Lr3/s;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, LZ0/j;->Q(Ln4/e;Lr3/s;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget p0, p0, Ln4/l;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "should not have varargs or parameters with default values"

    return-object p0

    :pswitch_0
    const-string p0, "second parameter must be of type KProperty<*> or its supertype"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lr3/s;)Z
    .locals 4

    iget p0, p0, Ln4/l;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "functionDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    const-string p1, "functionDescriptor.valueParameters"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/V;

    const-string v1, "it"

    invoke-static {v1, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LX3/f;->a(Lu3/V;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lu3/V;->l:Lh4/v;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0

    :pswitch_0
    const-string p0, "functionDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/V;

    sget-object p1, Lo3/l;->d:LP1/e;

    const-string v0, "secondParameter"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LX3/f;->j(Lr3/j;)Lr3/x;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lo3/m;->Q:LQ3/b;

    invoke-static {v0, p1}, Lo4/a;->e(Lr3/x;LQ3/b;)Lr3/e;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh4/G;->e:Lh4/G;

    new-instance v1, Lh4/E;

    invoke-interface {p1}, Lr3/g;->H()Lh4/J;

    move-result-object v2

    invoke-interface {v2}, Lh4/J;->k()Ljava/util/List;

    move-result-object v2

    const-string v3, "kPropertyClass.typeConstructor.parameters"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "kPropertyClass.typeConstructor.parameters.single()"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lr3/Q;

    invoke-direct {v1, v2}, Lh4/E;-><init>(Lr3/Q;)V

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lh4/d;->q(Lh4/G;Lr3/e;Ljava/util/List;)Lh4/z;

    move-result-object p1

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    check-cast p0, Lu3/W;

    invoke-virtual {p0}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    const-string v1, "secondParameter.type"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lh4/X;->h(Lh4/v;Z)Lh4/Z;

    move-result-object p0

    sget-object v0, Li4/d;->a:Li4/l;

    invoke-virtual {v0, p1, p0}, Li4/l;->b(Lh4/v;Lh4/v;)Z

    move-result v0

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

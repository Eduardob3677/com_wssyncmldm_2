.class public final Ln4/h;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:Ln4/h;

.field public static final f:Ln4/h;

.field public static final g:Ln4/h;

.field public static final h:Ln4/h;

.field public static final i:Ln4/h;

.field public static final j:Ln4/h;

.field public static final k:Ln4/h;

.field public static final l:Ln4/h;

.field public static final m:Ln4/h;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->e:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->f:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->g:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->h:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->i:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->j:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->k:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->l:Ln4/h;

    new-instance v0, Ln4/h;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ln4/h;-><init>(II)V

    sput-object v0, Ln4/h;->m:Ln4/h;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Ln4/h;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "$this$$receiver"

    const-string v3, "$this$null"

    const/4 v4, 0x0

    iget p0, p0, Ln4/h;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lo3/i;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lo3/i;->w()Lh4/z;

    move-result-object p0

    const-string p1, "unitType"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    check-cast p1, Lo3/i;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lo3/k;->l:Lo3/k;

    invoke-virtual {p1, p0}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x3a

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v4

    :pswitch_1
    check-cast p1, Lo3/i;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lo3/k;->h:Lo3/k;

    invoke-virtual {p1, p0}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x3f

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v4

    :pswitch_2
    check-cast p1, Lr3/s;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->F()Lu3/w;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-interface {p1}, Lr3/b;->d0()Lu3/w;

    move-result-object p0

    :cond_2
    sget-object v2, Ln4/r;->b:Ljava/util/List;

    if-eqz p0, :cond_a

    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lu3/w;->e()Lh4/v;

    move-result-object v3

    const-string v5, "receiver.type"

    invoke-static {v5, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lf1/a;->T(Lh4/v;Lh4/v;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-nez v2, :cond_b

    invoke-virtual {p0}, Lu3/w;->Q0()Lb4/d;

    move-result-object p0

    const-string v2, "receiver.value"

    invoke-static {v2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v2, p0, Lb4/c;

    if-nez v2, :cond_5

    :cond_4
    :goto_1
    move p0, v1

    goto :goto_3

    :cond_5
    check-cast p0, Lb4/c;

    iget-object p0, p0, Lb4/c;->c:Lr3/e;

    invoke-interface {p0}, Lr3/w;->y()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p0}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {p0}, LX3/f;->j(Lr3/j;)Lr3/x;

    move-result-object p0

    invoke-static {p0, v2}, Lo4/a;->f(Lr3/x;LQ3/b;)Lr3/g;

    move-result-object p0

    instance-of v2, p0, Lf4/t;

    if-eqz v2, :cond_8

    check-cast p0, Lf4/t;

    goto :goto_2

    :cond_8
    move-object p0, v4

    :goto_2
    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lf4/t;->R0()Lh4/z;

    move-result-object p0

    invoke-static {p1, p0}, Lf1/a;->T(Lh4/v;Lh4/v;)Z

    move-result p0

    :goto_3
    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    move v0, v1

    :cond_b
    :goto_4
    if-nez v0, :cond_c

    const-string v4, "receiver must be a supertype of the return type"

    :cond_c
    return-object v4

    :pswitch_3
    check-cast p1, Lr3/s;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ln4/r;->b:Ljava/util/List;

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    const-string v2, "containingDeclaration"

    invoke-static {v2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v3, p0, Lr3/e;

    if-eqz v3, :cond_d

    check-cast p0, Lr3/e;

    sget-object v3, Lo3/i;->e:LQ3/f;

    sget-object v3, Lo3/m;->a:LQ3/e;

    invoke-static {p0, v3}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result p0

    if-eqz p0, :cond_d

    move p0, v0

    goto :goto_5

    :cond_d
    move p0, v1

    :goto_5
    if-nez p0, :cond_18

    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object p0

    const-string v3, "overriddenDescriptors"

    invoke-static {v3, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/s;

    invoke-interface {v3}, Lr3/j;->l()Lr3/j;

    move-result-object v3

    const-string v5, "it.containingDeclaration"

    invoke-static {v5, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v5, v3, Lr3/e;

    if-eqz v5, :cond_f

    check-cast v3, Lr3/e;

    sget-object v5, Lo3/i;->e:LQ3/f;

    sget-object v5, Lo3/m;->a:LQ3/e;

    invoke-static {v3, v5}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_a

    :cond_10
    :goto_6
    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    instance-of v3, p0, Lr3/e;

    if-eqz v3, :cond_11

    check-cast p0, Lr3/e;

    goto :goto_7

    :cond_11
    move-object p0, v4

    :goto_7
    if-eqz p0, :cond_16

    invoke-static {p0}, LT3/i;->e(Lr3/j;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_8

    :cond_12
    move-object p0, v4

    :goto_8
    if-eqz p0, :cond_16

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0}, Lf1/a;->h0(Lh4/v;)Lh4/Z;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_9

    :cond_13
    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object v3

    if-nez v3, :cond_14

    goto :goto_9

    :cond_14
    move-object v5, p1

    check-cast v5, Lu3/o;

    invoke-virtual {v5}, Lu3/o;->getName()LQ3/f;

    move-result-object v5

    sget-object v6, Ln4/s;->d:LQ3/f;

    invoke-static {v5, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Lo3/i;->e:LQ3/f;

    sget-object v5, Lo3/m;->h:LQ3/e;

    invoke-static {v3, v5}, Lo3/i;->B(Lh4/v;LQ3/e;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-static {v3}, Lo3/i;->E(Lh4/v;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_16

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/V;

    check-cast v0, Lu3/W;

    invoke-virtual {v0}, Lu3/W;->e()Lh4/v;

    move-result-object v0

    const-string v1, "valueParameters[0].type"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lf1/a;->h0(Lh4/v;)Lh4/Z;

    move-result-object v0

    invoke-static {v0, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-interface {p1}, Lr3/b;->v0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-interface {p1}, Lr3/b;->d0()Lu3/w;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_a

    :cond_16
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "must override \'\'equals()\'\' in Any"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LT3/i;->e(Lr3/j;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, LS3/g;->d:LS3/g;

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, p1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lr3/e;

    invoke-interface {p1}, Lr3/e;->q()Lh4/z;

    move-result-object p1

    const-string v1, "containingDeclaration as\u2026ssDescriptor).defaultType"

    invoke-static {v1, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lf1/a;->h0(Lh4/v;)Lh4/Z;

    move-result-object p1

    invoke-virtual {v0, p1}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " or define \'\'equals(other: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Boolean\'\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_a
    return-object v4

    :pswitch_4
    check-cast p1, Lr3/s;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    const-string p1, "valueParameters"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->V0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/V;

    if-eqz p0, :cond_19

    invoke-static {p0}, LX3/f;->a(Lu3/V;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p0, p0, Lu3/V;->l:Lh4/v;

    if-nez p0, :cond_19

    goto :goto_b

    :cond_19
    move v0, v1

    :goto_b
    sget-object p0, Ln4/r;->b:Ljava/util/List;

    if-nez v0, :cond_1a

    const-string v4, "last parameter should not have a default value or be a vararg"

    :cond_1a
    return-object v4

    :pswitch_5
    check-cast p1, Lr3/s;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :pswitch_6
    check-cast p1, Lr3/s;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :pswitch_7
    check-cast p1, Lr3/s;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

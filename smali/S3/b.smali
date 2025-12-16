.class public final LS3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/c;


# static fields
.field public static final b:LS3/b;

.field public static final c:LS3/b;

.field public static final d:LS3/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LS3/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LS3/b;-><init>(I)V

    sput-object v0, LS3/b;->b:LS3/b;

    new-instance v0, LS3/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LS3/b;-><init>(I)V

    sput-object v0, LS3/b;->c:LS3/b;

    new-instance v0, LS3/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LS3/b;-><init>(I)V

    sput-object v0, LS3/b;->d:LS3/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LS3/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lr3/g;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object v0

    const-string v1, "descriptor.name"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LW1/a;->d0(LQ3/f;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Lr3/Q;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    const-string v1, "descriptor.containingDeclaration"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v1, p0, Lr3/e;

    if-eqz v1, :cond_1

    check-cast p0, Lr3/g;

    invoke-static {p0}, LS3/b;->b(Lr3/g;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lr3/C;

    if-eqz v1, :cond_2

    check-cast p0, Lr3/C;

    check-cast p0, Lu3/E;

    iget-object p0, p0, Lu3/E;->g:LQ3/c;

    invoke-virtual {p0}, LQ3/c;->i()LQ3/e;

    move-result-object p0

    const-string v1, "descriptor.fqName.toUnsafe()"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LQ3/e;->e()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LW1/a;->e0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const-string v1, ""

    invoke-static {p0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lr3/g;LS3/g;)Ljava/lang/String;
    .locals 0

    iget p0, p0, LS3/b;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "renderer"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LS3/b;->b(Lr3/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "renderer"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lr3/Q;

    if-eqz p0, :cond_0

    check-cast p1, Lr3/Q;

    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    const-string p1, "classifier.name"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p1

    instance-of p2, p1, Lr3/e;

    if-nez p2, :cond_1

    new-instance p1, LR2/A;

    invoke-direct {p1, p0}, LR2/A;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1}, LW1/a;->e0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    const-string p0, "renderer"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lr3/Q;

    if-eqz p0, :cond_2

    check-cast p1, Lr3/Q;

    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    const-string p1, "classifier.name"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object p0

    const-string p1, "getFqName(classifier)"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LQ3/e;->e()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LW1/a;->e0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

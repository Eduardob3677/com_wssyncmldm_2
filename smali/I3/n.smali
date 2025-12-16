.class public final LI3/n;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:LI3/n;

.field public static final f:LI3/n;

.field public static final g:LI3/n;

.field public static final h:LI3/n;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LI3/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LI3/n;-><init>(II)V

    sput-object v0, LI3/n;->e:LI3/n;

    new-instance v0, LI3/n;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LI3/n;-><init>(II)V

    sput-object v0, LI3/n;->f:LI3/n;

    new-instance v0, LI3/n;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LI3/n;-><init>(II)V

    sput-object v0, LI3/n;->g:LI3/n;

    new-instance v0, LI3/n;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LI3/n;-><init>(II)V

    sput-object v0, LI3/n;->h:LI3/n;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LI3/n;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, LI3/n;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LI3/o;

    const-string p0, "$this$function"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Spliterator"

    const-string v0, "java/util/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_0
    check-cast p1, Lh4/Z;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, LF3/f;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lr3/c;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    return-object p0

    :pswitch_2
    check-cast p1, Lr3/c;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->d0()Lu3/w;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/w;->e()Lh4/v;

    move-result-object p0

    const-string p1, "it.extensionReceiverParameter!!.type"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_3
    check-cast p1, Lh4/Z;

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object p1

    sget-object v0, Lq3/d;->f:LQ3/c;

    invoke-virtual {v0}, LQ3/c;->f()LQ3/f;

    move-result-object v1

    invoke-static {p1, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, LX3/f;->c(Lr3/j;)LQ3/c;

    move-result-object p0

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

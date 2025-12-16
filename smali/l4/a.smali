.class public final Ll4/a;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:Ll4/a;

.field public static final f:Ll4/a;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ll4/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll4/a;-><init>(II)V

    sput-object v0, Ll4/a;->e:Ll4/a;

    new-instance v0, Ll4/a;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll4/a;-><init>(II)V

    sput-object v0, Ll4/a;->f:Ll4/a;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Ll4/a;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Ll4/a;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lh4/Z;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lf4/t;

    if-nez v0, :cond_0

    instance-of p0, p0, Lr3/Q;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lh4/Z;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    instance-of v0, p0, Lr3/Q;

    if-eqz v0, :cond_2

    check-cast p0, Lr3/Q;

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    instance-of p0, p0, Lf4/t;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

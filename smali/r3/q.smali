.class public final Lr3/q;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:Lr3/q;

.field public static final f:Lr3/q;

.field public static final g:Lr3/q;

.field public static final h:Lr3/q;

.field public static final i:Lr3/q;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lr3/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr3/q;-><init>(II)V

    sput-object v0, Lr3/q;->e:Lr3/q;

    new-instance v0, Lr3/q;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr3/q;-><init>(II)V

    sput-object v0, Lr3/q;->f:Lr3/q;

    new-instance v0, Lr3/q;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr3/q;-><init>(II)V

    sput-object v0, Lr3/q;->g:Lr3/q;

    new-instance v0, Lr3/q;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lr3/q;-><init>(II)V

    sput-object v0, Lr3/q;->h:Lr3/q;

    new-instance v0, Lr3/q;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lr3/q;-><init>(II)V

    sput-object v0, Lr3/q;->i:Lr3/q;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lr3/q;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lr3/q;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lr3/j;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lr3/b;

    invoke-interface {p1}, Lr3/b;->u()Ljava/util/List;

    move-result-object p0

    const-string p1, "it as CallableDescriptor).typeParameters"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lr3/j;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lr3/i;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lr3/j;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lr3/b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lr3/C;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lu3/E;

    iget-object p0, p1, Lu3/E;->g:LQ3/c;

    return-object p0

    :pswitch_3
    check-cast p1, LQ3/b;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

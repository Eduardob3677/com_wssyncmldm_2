.class public final Lt3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/b;
.implements Lt3/d;


# static fields
.field public static final b:Lt3/a;

.field public static final c:Lt3/a;

.field public static final d:Lt3/a;

.field public static final e:Lt3/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lt3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/a;-><init>(I)V

    sput-object v0, Lt3/a;->b:Lt3/a;

    new-instance v0, Lt3/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt3/a;-><init>(I)V

    sput-object v0, Lt3/a;->c:Lt3/a;

    new-instance v0, Lt3/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lt3/a;-><init>(I)V

    sput-object v0, Lt3/a;->d:Lt3/a;

    new-instance v0, Lt3/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lt3/a;-><init>(I)V

    sput-object v0, Lt3/a;->e:Lt3/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lt3/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf4/i;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public b(Lf4/i;)Ljava/util/Collection;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public c(Lf4/i;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public d(Lf4/i;Lf4/s;)Z
    .locals 0

    iget p0, p0, Lt3/a;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "classDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, LK3/c;->t()Ls3/h;

    move-result-object p0

    sget-object p1, Lt3/e;->a:LQ3/c;

    invoke-interface {p0, p1}, Ls3/h;->b(LQ3/c;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    const-string p0, "classDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e(LQ3/f;Lf4/i;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "classDescriptor"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

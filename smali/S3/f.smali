.class public final LS3/f;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:LS3/f;

.field public static final f:LS3/f;

.field public static final g:LS3/f;

.field public static final h:LS3/f;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LS3/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LS3/f;-><init>(II)V

    sput-object v0, LS3/f;->e:LS3/f;

    new-instance v0, LS3/f;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LS3/f;-><init>(II)V

    sput-object v0, LS3/f;->f:LS3/f;

    new-instance v0, LS3/f;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LS3/f;-><init>(II)V

    sput-object v0, LS3/f;->g:LS3/f;

    new-instance v0, LS3/f;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LS3/f;-><init>(II)V

    sput-object v0, LS3/f;->h:LS3/f;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LS3/f;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LS3/f;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lh4/v;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :pswitch_0
    check-cast p1, Lu3/V;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "..."

    return-object p0

    :pswitch_1
    check-cast p1, Lh4/v;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :pswitch_2
    check-cast p1, Lu3/V;

    const-string p0, ""

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lh4/H;
.super Lh4/c;
.source "SourceFile"


# static fields
.field public static final b:Lh4/H;

.field public static final c:Lh4/H;

.field public static final d:Lh4/H;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lh4/H;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh4/H;-><init>(I)V

    sput-object v0, Lh4/H;->b:Lh4/H;

    new-instance v0, Lh4/H;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh4/H;-><init>(I)V

    sput-object v0, Lh4/H;->c:Lh4/H;

    new-instance v0, Lh4/H;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lh4/H;-><init>(I)V

    sput-object v0, Lh4/H;->d:Lh4/H;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lh4/H;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lh4/I;Lk4/c;)Lk4/d;
    .locals 0

    iget p0, p0, Lh4/H;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "state"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "type"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lh4/I;->c:Li4/b;

    invoke-interface {p0, p2}, Li4/b;->g(Lk4/c;)Lh4/z;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "state"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "type"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string p0, "state"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "type"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lh4/I;->c:Li4/b;

    invoke-interface {p0, p2}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

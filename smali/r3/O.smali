.class public final Lr3/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/d;


# static fields
.field public static final d:Lr3/O;

.field public static final e:Lr3/O;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lr3/O;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr3/O;-><init>(I)V

    sput-object v0, Lr3/O;->d:Lr3/O;

    new-instance v0, Lr3/O;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr3/O;-><init>(I)V

    sput-object v0, Lr3/O;->e:Lr3/O;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lr3/O;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lh4/v;
    .locals 1

    iget p0, p0, Lr3/O;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

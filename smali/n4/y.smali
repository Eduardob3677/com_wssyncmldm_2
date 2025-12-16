.class public final Ln4/y;
.super Ln4/n;
.source "SourceFile"


# static fields
.field public static final d:Ln4/y;

.field public static final e:Ln4/y;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/y;

    const-string v1, "must have no value parameters"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln4/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln4/y;->d:Ln4/y;

    new-instance v0, Ln4/y;

    const-string v1, "must have a single value parameter"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln4/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln4/y;->e:Ln4/y;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Ln4/y;->c:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ln4/n;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final c(Lr3/s;)Z
    .locals 0

    iget p0, p0, Ln4/y;->c:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "functionDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    const-string p0, "functionDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

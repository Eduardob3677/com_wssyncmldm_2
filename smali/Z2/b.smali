.class public LZ2/b;
.super LY2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LY2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lf3/d;
    .locals 1

    sget-object p0, LZ2/a;->a:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x22

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lf3/b;

    invoke-direct {p0}, Lf3/b;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lg3/a;

    invoke-direct {p0}, Lf3/d;-><init>()V

    :goto_1
    return-object p0
.end method

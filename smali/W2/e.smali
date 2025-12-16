.class public abstract LW2/e;
.super LW2/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(LU2/a;)V
    .locals 0

    invoke-direct {p0, p1}, LW2/a;-><init>(LU2/a;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, LU2/a;->a()LU2/d;

    move-result-object p0

    sget-object p1, LU2/e;->c:LU2/e;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()LU2/d;
    .locals 0

    sget-object p0, LU2/e;->c:LU2/e;

    return-object p0
.end method

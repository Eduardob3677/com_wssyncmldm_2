.class public final LV2/b;
.super LW2/e;
.source "SourceFile"


# instance fields
.field public d:I

.field public final synthetic e:Lc3/c;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU2/a;Lc3/c;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, LV2/b;->e:Lc3/c;

    iput-object p3, p0, LV2/b;->f:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p2, p1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, LW2/e;-><init>(LU2/a;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LV2/b;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, LV2/b;->d:I

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput v1, p0, LV2/b;->d:I

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    iget-object p1, p0, LV2/b;->e:Lc3/c;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {v0, p1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ld3/t;->b(Lc3/c;)V

    iget-object v0, p0, LV2/b;->f:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lc3/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

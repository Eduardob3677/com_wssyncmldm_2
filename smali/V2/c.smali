.class public final LV2/c;
.super LW2/a;
.source "SourceFile"


# instance fields
.field public final d:LU2/d;

.field public transient e:LU2/a;

.field public f:I

.field public final synthetic g:Lc3/c;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU2/a;LU2/d;Lc3/c;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, LV2/c;->g:Lc3/c;

    iput-object p4, p0, LV2/c;->h:Ljava/lang/Object;

    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p3, p1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, LW2/a;-><init>(LU2/a;)V

    iput-object p2, p0, LV2/c;->d:LU2/d;

    return-void
.end method


# virtual methods
.method public final a()LU2/d;
    .locals 0

    iget-object p0, p0, LV2/c;->d:LU2/d;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LV2/c;->f:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, LV2/c;->f:I

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
    iput v1, p0, LV2/c;->f:I

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    iget-object p1, p0, LV2/c;->g:Lc3/c;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {v0, p1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ld3/t;->b(Lc3/c;)V

    iget-object v0, p0, LV2/c;->h:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lc3/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, LV2/c;->e:LU2/a;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    iget-object v1, p0, LV2/c;->d:LU2/d;

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    sget-object v2, LU2/b;->a:LU2/b;

    invoke-interface {v1, v2}, LU2/d;->a(LU2/b;)LU2/c;

    move-result-object v1

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    check-cast v0, Lu4/a;

    :cond_0
    sget-object v0, LW2/b;->c:LW2/b;

    iput-object v0, p0, LV2/c;->e:LU2/a;

    return-void
.end method

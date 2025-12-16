.class public abstract LW2/f;
.super LW2/e;
.source "SourceFile"

# interfaces
.implements Ld3/f;


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(LU2/a;)V
    .locals 0

    invoke-direct {p0, p1}, LW2/e;-><init>(LU2/a;)V

    const/4 p1, 0x2

    iput p1, p0, LW2/f;->d:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, LW2/f;->d:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW2/a;->c:LU2/a;

    if-nez v0, :cond_0

    sget-object v0, Ld3/q;->a:Ld3/r;

    invoke-virtual {v0, p0}, Ld3/r;->f(Ld3/f;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(this)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, LW2/a;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

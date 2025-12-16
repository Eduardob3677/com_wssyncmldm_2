.class public final LR3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final c:LR3/C;

.field public d:LR3/y;

.field public e:I


# direct methods
.method public constructor <init>(LR3/E;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR3/C;

    invoke-direct {v0, p1}, LR3/C;-><init>(LR3/e;)V

    iput-object v0, p0, LR3/D;->c:LR3/C;

    invoke-virtual {v0}, LR3/C;->a()LR3/z;

    move-result-object v0

    new-instance v1, LR3/y;

    invoke-direct {v1, v0}, LR3/y;-><init>(LR3/z;)V

    iput-object v1, p0, LR3/D;->d:LR3/y;

    iget p1, p1, LR3/E;->d:I

    iput p1, p0, LR3/D;->e:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget-object v0, p0, LR3/D;->d:LR3/y;

    invoke-virtual {v0}, LR3/y;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LR3/D;->c:LR3/C;

    invoke-virtual {v0}, LR3/C;->a()LR3/z;

    move-result-object v0

    new-instance v1, LR3/y;

    invoke-direct {v1, v0}, LR3/y;-><init>(LR3/z;)V

    iput-object v1, p0, LR3/D;->d:LR3/y;

    :cond_0
    iget v0, p0, LR3/D;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LR3/D;->e:I

    iget-object p0, p0, LR3/D;->d:LR3/y;

    invoke-virtual {p0}, LR3/y;->a()B

    move-result p0

    return p0
.end method

.method public final hasNext()Z
    .locals 0

    iget p0, p0, LR3/D;->e:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LR3/D;->a()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

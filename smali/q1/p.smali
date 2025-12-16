.class public final Lq1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Le2/c;

.field public final d:Lq1/o;


# direct methods
.method public constructor <init>(Lq1/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq1/p;->a:Z

    iput-boolean v0, p0, Lq1/p;->b:Z

    iput-object p1, p0, Lq1/p;->d:Lq1/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le2/g;
    .locals 3

    iget-boolean v0, p0, Lq1/p;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/p;->a:Z

    iget-object v0, p0, Lq1/p;->c:Le2/c;

    iget-boolean v1, p0, Lq1/p;->b:Z

    iget-object v2, p0, Lq1/p;->d:Lq1/o;

    invoke-virtual {v2, v0, p1, v1}, Lq1/o;->a(Le2/c;Ljava/lang/Object;Z)V

    return-object p0

    :cond_0
    new-instance p0, Le2/b;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Z)Le2/g;
    .locals 3

    iget-boolean v0, p0, Lq1/p;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/p;->a:Z

    iget-object v0, p0, Lq1/p;->c:Le2/c;

    iget-boolean v1, p0, Lq1/p;->b:Z

    iget-object v2, p0, Lq1/p;->d:Lq1/o;

    invoke-virtual {v2, v0, p1, v1}, Lq1/o;->b(Le2/c;IZ)V

    return-object p0

    :cond_0
    new-instance p0, Le2/b;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

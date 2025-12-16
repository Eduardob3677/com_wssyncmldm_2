.class public final LE3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ3/f;

.field public final b:Lx3/o;


# direct methods
.method public constructor <init>(LQ3/f;Lx3/o;)V
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/t;->a:LQ3/f;

    iput-object p2, p0, LE3/t;->b:Lx3/o;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LE3/t;

    if-eqz v0, :cond_0

    check-cast p1, LE3/t;

    iget-object p1, p1, LE3/t;->a:LQ3/f;

    iget-object p0, p0, LE3/t;->a:LQ3/f;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LE3/t;->a:LQ3/f;

    invoke-virtual {p0}, LQ3/f;->hashCode()I

    move-result p0

    return p0
.end method

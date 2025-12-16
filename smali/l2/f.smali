.class public final Ll2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/i;


# instance fields
.field public final a:Ll2/j;

.field public final b:Lu1/i;


# direct methods
.method public constructor <init>(Ll2/j;Lu1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/f;->a:Ll2/j;

    iput-object p2, p0, Ll2/f;->b:Lu1/i;

    return-void
.end method


# virtual methods
.method public final a(Lm2/a;)Z
    .locals 7

    const/4 v0, 0x4

    iget v1, p1, Lm2/a;->b:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Ll2/f;->a:Ll2/j;

    invoke-virtual {v0, p1}, Ll2/j;->a(Lm2/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p1, Lm2/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ll2/a;

    iget-wide v3, p1, Lm2/a;->e:J

    iget-wide v5, p1, Lm2/a;->f:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ll2/a;-><init>(Ljava/lang/String;JJ)V

    iget-object p0, p0, Ll2/f;->b:Lu1/i;

    invoke-virtual {p0, v0}, Lu1/i;->b(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null token"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Ll2/f;->b:Lu1/i;

    invoke-virtual {p0, p1}, Lu1/i;->c(Ljava/lang/Exception;)Z

    const/4 p0, 0x1

    return p0
.end method

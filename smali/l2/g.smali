.class public final Ll2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/i;


# instance fields
.field public final a:Lu1/i;


# direct methods
.method public constructor <init>(Lu1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/g;->a:Lu1/i;

    return-void
.end method


# virtual methods
.method public final a(Lm2/a;)Z
    .locals 2

    const/4 v0, 0x3

    iget v1, p1, Lm2/a;->b:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    :goto_0
    iget-object p0, p0, Ll2/g;->a:Lu1/i;

    iget-object p1, p1, Lm2/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu1/i;->d(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.class public final Lr4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/k;
.implements Lr4/c;


# instance fields
.field public final a:Lr4/k;

.field public final b:I


# direct methods
.method public constructor <init>(Lr4/k;I)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b;->a:Lr4/k;

    iput p2, p0, Lr4/b;->b:I

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "count must be non-negative, but was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lr4/k;
    .locals 2

    iget v0, p0, Lr4/b;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gez v0, :cond_0

    new-instance v0, Lr4/b;

    invoke-direct {v0, p0, v1}, Lr4/b;-><init>(Lr4/k;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/b;

    iget-object p0, p0, Lr4/b;->a:Lr4/k;

    invoke-direct {v1, p0, v0}, Lr4/b;-><init>(Lr4/k;I)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LR2/y;

    invoke-direct {v0, p0}, LR2/y;-><init>(Lr4/b;)V

    return-object v0
.end method

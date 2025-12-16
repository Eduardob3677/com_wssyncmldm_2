.class public abstract Ld3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/f;
.implements Ljava/io/Serializable;


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld3/k;->c:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Ld3/k;->c:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld3/q;->a:Ld3/r;

    invoke-virtual {v0, p0}, Ld3/r;->g(Ld3/k;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(this)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

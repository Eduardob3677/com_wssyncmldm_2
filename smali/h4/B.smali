.class public final Lh4/B;
.super Lh4/o;
.source "SourceFile"


# instance fields
.field public final e:Lh4/G;


# direct methods
.method public constructor <init>(Lh4/z;Lh4/G;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attributes"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lh4/o;-><init>(Lh4/z;)V

    iput-object p2, p0, Lh4/B;->e:Lh4/G;

    return-void
.end method


# virtual methods
.method public final I0()Lh4/G;
    .locals 0

    iget-object p0, p0, Lh4/B;->e:Lh4/G;

    return-object p0
.end method

.method public final U0(Lh4/z;)Lh4/n;
    .locals 1

    new-instance v0, Lh4/B;

    iget-object p0, p0, Lh4/B;->e:Lh4/G;

    invoke-direct {v0, p1, p0}, Lh4/B;-><init>(Lh4/z;Lh4/G;)V

    return-object v0
.end method

.class public final Ll3/a0;
.super Ll3/f0;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# instance fields
.field public final g:Ll3/c0;


# direct methods
.method public constructor <init>(Ll3/c0;)V
    .locals 1

    const-string v0, "property"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ll3/f0;-><init>()V

    iput-object p1, p0, Ll3/a0;->g:Ll3/c0;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll3/a0;->g:Ll3/c0;

    iget-object p0, p0, Ll3/c0;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/a0;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ll3/j0;
    .locals 0

    iget-object p0, p0, Ll3/a0;->g:Ll3/c0;

    return-object p0
.end method

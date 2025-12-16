.class public final Ll3/X;
.super Ll3/f0;
.source "SourceFile"

# interfaces
.implements Li3/m;


# instance fields
.field public final g:Ll3/Z;


# direct methods
.method public constructor <init>(Ll3/Z;)V
    .locals 1

    const-string v0, "property"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ll3/f0;-><init>()V

    iput-object p1, p0, Ll3/X;->g:Ll3/Z;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll3/X;->g:Ll3/Z;

    iget-object p0, p0, Ll3/Z;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/X;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ll3/j0;
    .locals 0

    iget-object p0, p0, Ll3/X;->g:Ll3/Z;

    return-object p0
.end method

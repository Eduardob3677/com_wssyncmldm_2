.class public final Ll3/U;
.super Ll3/f0;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final g:Ll3/W;


# direct methods
.method public constructor <init>(Ll3/W;)V
    .locals 1

    const-string v0, "property"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ll3/f0;-><init>()V

    iput-object p1, p0, Ll3/U;->g:Ll3/W;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Ll3/U;->g:Ll3/W;

    iget-object p0, p0, Ll3/W;->k:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/U;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ll3/j0;
    .locals 0

    iget-object p0, p0, Ll3/U;->g:Ll3/W;

    return-object p0
.end method

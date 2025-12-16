.class public final Ll3/H;
.super Ll3/h0;
.source "SourceFile"

# interfaces
.implements Li3/h;


# instance fields
.field public final g:Ll3/I;


# direct methods
.method public constructor <init>(Ll3/I;)V
    .locals 1

    const-string v0, "property"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ll3/h0;-><init>()V

    iput-object p1, p0, Ll3/H;->g:Ll3/I;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll3/H;->g:Ll3/I;

    iget-object p0, p0, Ll3/I;->l:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/H;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/r;->i([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

.method public final p()Ll3/j0;
    .locals 0

    iget-object p0, p0, Ll3/H;->g:Ll3/I;

    return-object p0
.end method

.class public final LV3/a;
.super LV3/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls3/b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lr3/x;)Lh4/v;
    .locals 1

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ls3/b;

    invoke-interface {p0}, Ls3/b;->e()Lh4/v;

    move-result-object p0

    return-object p0
.end method

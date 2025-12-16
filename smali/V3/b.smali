.class public LV3/b;
.super LV3/g;
.source "SourceFile"


# instance fields
.field public final b:Lc3/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lc3/b;)V
    .locals 0

    invoke-direct {p0, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, LV3/b;->b:Lc3/b;

    return-void
.end method


# virtual methods
.method public final a(Lr3/x;)Lh4/v;
    .locals 1

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LV3/b;->b:Lc3/b;

    invoke-interface {p0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/v;

    invoke-static {p0}, Lo3/i;->y(Lh4/v;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p1

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo3/i;->r(Lr3/g;)Lo3/k;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lo3/m;->V:LQ3/c;

    invoke-virtual {p1}, LQ3/c;->i()LQ3/e;

    move-result-object p1

    invoke-static {p0, p1}, Lo3/i;->B(Lh4/v;LQ3/e;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lo3/m;->W:LQ3/c;

    invoke-virtual {p1}, LQ3/c;->i()LQ3/e;

    move-result-object p1

    invoke-static {p0, p1}, Lo3/i;->B(Lh4/v;LQ3/e;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lo3/m;->X:LQ3/c;

    invoke-virtual {p1}, LQ3/c;->i()LQ3/e;

    move-result-object p1

    invoke-static {p0, p1}, Lo3/i;->B(Lh4/v;LQ3/e;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lo3/m;->Y:LQ3/c;

    invoke-virtual {p1}, LQ3/c;->i()LQ3/e;

    move-result-object p1

    invoke-static {p0, p1}, Lo3/i;->B(Lh4/v;LQ3/e;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

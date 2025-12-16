.class public final LB3/f;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final d:LB3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB3/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, LB3/f;->d:LB3/f;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr3/x;

    const-string p0, "module"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LB3/e;->b:LQ3/f;

    invoke-interface {p1}, Lr3/x;->g()Lo3/i;

    move-result-object p1

    sget-object v0, Lo3/m;->t:LQ3/c;

    invoke-virtual {p1, v0}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object p1

    invoke-static {p0, p1}, Li3/x;->B(LQ3/f;Lr3/e;)Lu3/V;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lu3/W;

    invoke-virtual {p0}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lj4/h;->E:Lj4/h;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    :cond_1
    return-object p0
.end method

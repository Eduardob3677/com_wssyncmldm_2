.class public final LV3/k;
.super LV3/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lr3/x;)Lh4/v;
    .locals 0

    const-string p0, "module"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lo3/k;->l:Lo3/k;

    invoke-virtual {p0, p1}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x3a

    invoke-static {p0}, Lo3/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

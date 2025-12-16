.class public final LV3/j;
.super LV3/g;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, LQ2/k;->a:LQ2/k;

    invoke-direct {p0, v0}, LV3/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LV3/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lr3/x;)Lh4/v;
    .locals 1

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lj4/h;->v:Lj4/h;

    iget-object p0, p0, LV3/j;->b:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LV3/j;->b:Ljava/lang/String;

    return-object p0
.end method

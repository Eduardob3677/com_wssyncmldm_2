.class public final LV3/i;
.super LV3/g;
.source "SourceFile"


# instance fields
.field public final b:LQ3/b;

.field public final c:LQ3/f;


# direct methods
.method public constructor <init>(LQ3/b;LQ3/f;)V
    .locals 1

    new-instance v0, LQ2/e;

    invoke-direct {v0, p1, p2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, LV3/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LV3/i;->b:LQ3/b;

    iput-object p2, p0, LV3/i;->c:LQ3/f;

    return-void
.end method


# virtual methods
.method public final a(Lr3/x;)Lh4/v;
    .locals 3

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LV3/i;->b:LQ3/b;

    invoke-static {p1, v0}, Lo4/a;->e(Lr3/x;LQ3/b;)Lr3/e;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    invoke-static {p1, v2}, LT3/e;->o(Lr3/j;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lr3/e;->q()Lh4/z;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    sget-object p1, Lj4/h;->C:Lj4/h;

    invoke-virtual {v0}, LQ3/b;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enumClassId.toString()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LV3/i;->c:LQ3/f;

    iget-object p0, p0, LQ3/f;->c:Ljava/lang/String;

    const-string v1, "enumEntryName.toString()"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LV3/i;->b:LQ3/b;

    invoke-virtual {v1}, LQ3/b;->j()LQ3/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, LV3/i;->c:LQ3/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

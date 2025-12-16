.class public final LJ3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf4/j;


# instance fields
.field public final b:LY3/b;

.field public final c:LY3/b;

.field public final d:Lw3/b;


# direct methods
.method public constructor <init>(Lw3/b;LL3/C;LP3/g;I)V
    .locals 4

    const-string v0, "kotlinClass"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "packageProto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "abiStability"

    invoke-static {p4, v0}, LB/f;->x(ILjava/lang/String;)V

    iget-object p4, p1, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {p4}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object p4

    invoke-static {p4}, LY3/b;->b(LQ3/b;)LY3/b;

    move-result-object p4

    iget-object v0, p1, Lw3/b;->b:LK3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LK3/a;->j:LK3/a;

    iget-object v2, v0, LK3/b;->d:Ljava/lang/Object;

    check-cast v2, LK3/a;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    iget-object v0, v0, LK3/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, LY3/b;->d(Ljava/lang/String;)LY3/b;

    move-result-object v3

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LJ3/h;->b:LY3/b;

    iput-object v3, p0, LJ3/h;->c:LY3/b;

    iput-object p1, p0, LJ3/h;->d:Lw3/b;

    sget-object p0, LO3/k;->m:LR3/p;

    const-string p1, "packageModuleName"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p3, p0}, LP3/g;->r(I)Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LJ3/h;->b()LQ3/b;

    move-result-object p0

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()LQ3/b;
    .locals 6

    new-instance v0, LQ3/b;

    iget-object p0, p0, LJ3/h;->b:LY3/b;

    iget-object v1, p0, LY3/b;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x2f

    if-ne v2, v3, :cond_1

    sget-object v1, LQ3/c;->c:LQ3/c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LY3/b;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v3, LQ3/c;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    invoke-virtual {p0}, LY3/b;->e()Ljava/lang/String;

    move-result-object p0

    const-string v2, "className.internalName"

    invoke-static {v2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v4}, Ls4/h;->u(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, LJ3/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LJ3/h;->b:LY3/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

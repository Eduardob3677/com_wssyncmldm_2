.class public final LV3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/J;


# instance fields
.field public final a:J

.field public final b:Lr3/x;

.field public final c:Ljava/util/Set;

.field public final d:Lh4/z;

.field public final e:LQ2/h;


# direct methods
.method public constructor <init>(JLr3/x;Ljava/util/Set;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh4/G;->e:Lh4/G;

    const-string v1, "attributes"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, LR2/u;->c:LR2/u;

    const-string v2, "unknown integer literal type"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4, v3, v2}, Lj4/i;->a(IZ[Ljava/lang/String;)Lj4/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, p0, v1, v3}, Lh4/d;->s(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v0

    iput-object v0, p0, LV3/m;->d:Lh4/z;

    new-instance v0, LB3/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    new-instance v1, LQ2/h;

    invoke-direct {v1, v0}, LQ2/h;-><init>(Lc3/a;)V

    iput-object v1, p0, LV3/m;->e:LQ2/h;

    iput-wide p1, p0, LV3/m;->a:J

    iput-object p3, p0, LV3/m;->b:Lr3/x;

    iput-object p4, p0, LV3/m;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final g()Lo3/i;
    .locals 0

    iget-object p0, p0, LV3/m;->b:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()Lr3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LV3/m;->e:LQ2/h;

    invoke-virtual {p0}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntegerLiteralType"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, LV3/l;->d:LV3/l;

    const/4 v6, 0x0

    const/16 v8, 0x1e

    iget-object v3, p0, LV3/m;->c:Ljava/util/Set;

    const-string v4, ","

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

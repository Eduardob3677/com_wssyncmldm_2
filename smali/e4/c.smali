.class public final Le4/c;
.super Lu3/E;
.source "SourceFile"

# interfaces
.implements Lr3/C;


# instance fields
.field public final i:LN3/a;

.field public final j:Lf4/j;

.field public final k:LA3/D;

.field public final l:Lcom/google/firebase/messaging/p;

.field public m:LL3/E;

.field public n:Lf4/q;


# direct methods
.method public constructor <init>(LQ3/c;Lg4/o;Lr3/x;LL3/E;LM3/a;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "storageManager"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "module"

    invoke-static {p2, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p3, p1}, Lu3/E;-><init>(Lr3/x;LQ3/c;)V

    iput-object p5, p0, Le4/c;->i:LN3/a;

    const/4 p1, 0x0

    iput-object p1, p0, Le4/c;->j:Lf4/j;

    new-instance p1, LA3/D;

    iget-object p2, p4, LL3/E;->f:LL3/L;

    const-string p3, "proto.strings"

    invoke-static {p3, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p4, LL3/E;->g:LL3/K;

    const-string v0, "proto.qualifiedNames"

    invoke-static {v0, p3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0, p3}, LA3/D;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p1, p0, Le4/c;->k:LA3/D;

    new-instance p2, Lcom/google/firebase/messaging/p;

    new-instance p3, LA3/d;

    const/16 v0, 0x10

    invoke-direct {p3, v0, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p4, p1, p5, p3}, Lcom/google/firebase/messaging/p;-><init>(LL3/E;LA3/D;LM3/a;LA3/d;)V

    iput-object p2, p0, Le4/c;->l:Lcom/google/firebase/messaging/p;

    iput-object p4, p0, Le4/c;->m:LL3/E;

    return-void
.end method


# virtual methods
.method public final R0(Ld4/i;)V
    .locals 11

    iget-object v0, p0, Le4/c;->m:LL3/E;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Le4/c;->m:LL3/E;

    new-instance v1, Lf4/q;

    iget-object v4, v0, LL3/E;->h:LL3/C;

    const-string v0, "proto.`package`"

    invoke-static {v0, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "scope of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, LB3/k;

    const/16 v0, 0xb

    invoke-direct {v10, v0, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    iget-object v6, p0, Le4/c;->i:LN3/a;

    iget-object v7, p0, Le4/c;->j:Lf4/j;

    iget-object v5, p0, Le4/c;->k:LA3/D;

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lf4/q;-><init>(Lr3/C;LL3/C;LN3/f;LN3/a;Lf4/j;Ld4/i;Ljava/lang/String;Lc3/a;)V

    iput-object v1, p0, Le4/c;->n:Lf4/q;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q0()La4/o;
    .locals 0

    iget-object p0, p0, Le4/c;->n:Lf4/q;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "_memberScope"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "builtins package fragment for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu3/E;->g:LQ3/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LX3/f;->j(Lr3/j;)Lr3/x;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

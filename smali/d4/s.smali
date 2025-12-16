.class public final Ld4/s;
.super Lcom/google/android/gms/internal/firebase-auth-api/X;
.source "SourceFile"


# instance fields
.field public final e:LL3/j;

.field public final f:Ld4/s;

.field public final g:LQ3/b;

.field public final h:LL3/i;

.field public final i:Z


# direct methods
.method public constructor <init>(LL3/j;LN3/f;Ls2/c;Lr3/N;Ld4/s;)V
    .locals 1

    const-string v0, "classProto"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/X;-><init>(LN3/f;Ls2/c;Lr3/N;)V

    iput-object p1, p0, Ld4/s;->e:LL3/j;

    iput-object p5, p0, Ld4/s;->f:Ld4/s;

    iget p3, p1, LL3/j;->g:I

    invoke-static {p2, p3}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object p2

    iput-object p2, p0, Ld4/s;->g:LQ3/b;

    sget-object p2, LN3/e;->f:LN3/c;

    iget p3, p1, LL3/j;->f:I

    invoke-virtual {p2, p3}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LL3/i;

    if-nez p2, :cond_0

    sget-object p2, LL3/i;->d:LL3/i;

    :cond_0
    iput-object p2, p0, Ld4/s;->h:LL3/i;

    sget-object p2, LN3/e;->g:LN3/b;

    iget p1, p1, LL3/j;->f:I

    invoke-virtual {p2, p1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ld4/s;->i:Z

    return-void
.end method


# virtual methods
.method public final j()LQ3/c;
    .locals 1

    iget-object p0, p0, Ld4/s;->g:LQ3/b;

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    const-string v0, "classId.asSingleFqName()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.class public Lh4/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Li4/b;

.field public final d:Li4/e;

.field public final e:Li4/f;

.field public f:I

.field public g:Ljava/util/ArrayDeque;

.field public h:Lq4/h;


# direct methods
.method public constructor <init>(ZZLi4/b;Li4/e;Li4/f;)V
    .locals 1

    const-string v0, "typeSystemContext"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh4/I;->a:Z

    iput-boolean p2, p0, Lh4/I;->b:Z

    iput-object p3, p0, Lh4/I;->c:Li4/b;

    iput-object p4, p0, Lh4/I;->d:Li4/e;

    iput-object p5, p0, Lh4/I;->e:Li4/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lh4/I;->g:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, Lh4/I;->h:Lq4/h;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq4/h;->clear()V

    return-void
.end method

.method public b(Lk4/c;Lk4/c;)Z
    .locals 0

    const-string p0, "subType"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "superType"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lh4/I;->g:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lh4/I;->g:Ljava/util/ArrayDeque;

    :cond_0
    iget-object v0, p0, Lh4/I;->h:Lq4/h;

    if-nez v0, :cond_1

    new-instance v0, Lq4/h;

    invoke-direct {v0}, Lq4/h;-><init>()V

    iput-object v0, p0, Lh4/I;->h:Lq4/h;

    :cond_1
    return-void
.end method

.method public final d(Lk4/c;)Lh4/Z;
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/I;->d:Li4/e;

    invoke-virtual {p0, p1}, Li4/e;->u(Lk4/c;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lk4/c;)Lh4/v;
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/I;->e:Li4/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lh4/v;

    return-object p1
.end method

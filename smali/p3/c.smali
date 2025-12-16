.class public final Lp3/c;
.super Lu3/b;
.source "SourceFile"


# static fields
.field public static final n:LQ3/b;

.field public static final o:LQ3/b;


# instance fields
.field public final g:Lg4/o;

.field public final h:Lr3/C;

.field public final i:Lp3/e;

.field public final j:I

.field public final k:Lp3/b;

.field public final l:Lp3/f;

.field public final m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ3/b;

    sget-object v1, Lo3/n;->j:LQ3/c;

    const-string v2, "Function"

    invoke-static {v2}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    sput-object v0, Lp3/c;->n:LQ3/b;

    new-instance v0, LQ3/b;

    sget-object v1, Lo3/n;->h:LQ3/c;

    const-string v2, "KFunction"

    invoke-static {v2}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    sput-object v0, Lp3/c;->o:LQ3/b;

    return-void
.end method

.method public constructor <init>(Lg4/o;Le4/c;Lp3/e;I)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containingDeclaration"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "functionKind"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Lp3/e;->a(I)LQ3/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lu3/b;-><init>(Lg4/o;LQ3/f;)V

    iput-object p1, p0, Lp3/c;->g:Lg4/o;

    iput-object p2, p0, Lp3/c;->h:Lr3/C;

    iput-object p3, p0, Lp3/c;->i:Lp3/e;

    iput p4, p0, Lp3/c;->j:I

    new-instance p2, Lp3/b;

    invoke-direct {p2, p0}, Lp3/b;-><init>(Lp3/c;)V

    iput-object p2, p0, Lp3/c;->k:Lp3/b;

    new-instance p2, Lp3/f;

    invoke-direct {p2, p1, p0}, La4/h;-><init>(Lg4/o;Lr3/e;)V

    iput-object p2, p0, Lp3/c;->l:Lp3/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lh3/c;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4, p3}, Lh3/a;-><init>(III)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lh3/a;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, Lh3/b;

    iget-boolean p4, p4, Lh3/b;->e:Z

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, Lh3/b;

    invoke-virtual {p4}, Lh3/b;->a()I

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lp3/c;->g:Lg4/o;

    const/4 v2, 0x2

    invoke-static {p0, v2, p4, v0, v1}, Lu3/T;->T0(Lr3/j;ILQ3/f;ILg4/o;)Lu3/T;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, LQ2/k;->a:LQ2/k;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "R"

    invoke-static {p2}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object p4, p0, Lp3/c;->g:Lg4/o;

    const/4 v0, 0x3

    invoke-static {p0, v0, p2, p3, p4}, Lu3/T;->T0(Lr3/j;ILQ3/f;ILg4/o;)Lu3/T;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lp3/c;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A0()Ljava/util/Collection;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final D0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H()Lh4/J;
    .locals 0

    iget-object p0, p0, Lp3/c;->k:Lp3/b;

    return-object p0
.end method

.method public final J(Li4/f;)La4/o;
    .locals 0

    iget-object p0, p0, Lp3/c;->l:Lp3/f;

    return-object p0
.end method

.method public final L()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final N()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final S()Lr3/S;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic W()Lu3/k;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic X()La4/o;
    .locals 0

    sget-object p0, La4/n;->b:La4/n;

    return-object p0
.end method

.method public final c()LA3/p;
    .locals 1

    sget-object p0, Lr3/n;->e:LA3/p;

    const-string v0, "PUBLIC"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic k()Ljava/util/Collection;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final l()Lr3/j;
    .locals 0

    iget-object p0, p0, Lp3/c;->h:Lr3/C;

    return-object p0
.end method

.method public final m()Lr3/N;
    .locals 0

    sget-object p0, Lr3/N;->a:Lr3/M;

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lp3/c;->m:Ljava/util/List;

    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 0

    sget-object p0, Ls3/g;->a:Ls3/f;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

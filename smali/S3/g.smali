.class public final LS3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/i;


# static fields
.field public static final c:LS3/g;

.field public static final d:LS3/g;

.field public static final e:LS3/g;


# instance fields
.field public final a:LS3/k;

.field public final b:LQ2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0}, LS3/i;->e()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v2, LS3/g;

    invoke-direct {v2, v0}, LS3/g;-><init>(LS3/k;)V

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0}, LS3/i;->e()V

    sget-object v2, LR2/w;->c:LR2/w;

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v3, LS3/g;

    invoke-direct {v3, v0}, LS3/g;-><init>(LS3/k;)V

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0}, LS3/i;->e()V

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    invoke-interface {v0}, LS3/i;->k()V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v3, LS3/g;

    invoke-direct {v3, v0}, LS3/g;-><init>(LS3/k;)V

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    sget-object v3, LS3/b;->c:LS3/b;

    invoke-interface {v0, v3}, LS3/i;->h(LS3/c;)V

    sget-object v4, LS3/o;->d:LS3/o;

    invoke-interface {v0, v4}, LS3/i;->l(LS3/o;)V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v5, LS3/g;

    invoke-direct {v5, v0}, LS3/g;-><init>(LS3/k;)V

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0}, LS3/i;->e()V

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    invoke-interface {v0, v3}, LS3/i;->h(LS3/c;)V

    invoke-interface {v0}, LS3/i;->i()V

    sget-object v2, LS3/o;->e:LS3/o;

    invoke-interface {v0, v2}, LS3/i;->l(LS3/o;)V

    invoke-interface {v0}, LS3/i;->a()V

    invoke-interface {v0}, LS3/i;->c()V

    invoke-interface {v0}, LS3/i;->k()V

    invoke-interface {v0}, LS3/i;->d()V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v2, LS3/g;

    invoke-direct {v2, v0}, LS3/g;-><init>(LS3/k;)V

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    sget-object v2, LS3/h;->d:Ljava/util/Set;

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v2, LS3/g;

    invoke-direct {v2, v0}, LS3/g;-><init>(LS3/k;)V

    sput-object v2, LS3/g;->c:LS3/g;

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    sget-object v2, LS3/h;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v2, LS3/g;

    invoke-direct {v2, v0}, LS3/g;-><init>(LS3/k;)V

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0, v3}, LS3/i;->h(LS3/c;)V

    invoke-interface {v0, v4}, LS3/i;->l(LS3/o;)V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v2, LS3/g;

    invoke-direct {v2, v0}, LS3/g;-><init>(LS3/k;)V

    sput-object v2, LS3/g;->d:LS3/g;

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0}, LS3/i;->b()V

    sget-object v2, LS3/b;->b:LS3/b;

    invoke-interface {v0, v2}, LS3/i;->h(LS3/c;)V

    sget-object v2, LS3/h;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v2, LS3/g;

    invoke-direct {v2, v0}, LS3/g;-><init>(LS3/k;)V

    sput-object v2, LS3/g;->e:LS3/g;

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    invoke-interface {v0}, LS3/i;->j()V

    sget-object v2, LS3/h;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, LS3/i;->m(Ljava/util/Set;)V

    iput-boolean v1, v0, LS3/k;->a:Z

    new-instance v1, LS3/g;

    invoke-direct {v1, v0}, LS3/g;-><init>(LS3/k;)V

    return-void
.end method

.method public constructor <init>(LS3/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS3/g;->a:LS3/k;

    new-instance p1, LB3/k;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    new-instance v0, LQ2/h;

    invoke-direct {v0, p1}, LQ2/h;-><init>(Lc3/a;)V

    iput-object v0, p0, LS3/g;->b:LQ2/h;

    return-void
.end method

.method public static X(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static j0(Lh4/v;)Z
    .locals 1

    invoke-static {p0}, Lo3/f;->n(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/N;

    invoke-virtual {v0}, Lh4/N;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final n(LS3/g;Lr3/K;Ljava/lang/StringBuilder;)V
    .locals 7

    invoke-virtual {p0}, LS3/g;->r()Z

    move-result v0

    const-string v1, "property.typeParameters"

    const/4 v2, 0x1

    if-nez v0, :cond_8

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v3, v0, LS3/k;->g:LS3/j;

    sget-object v4, LS3/k;->W:[Li3/o;

    const/4 v5, 0x5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_7

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v3

    sget-object v6, LS3/h;->i:LS3/h;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p2, p1, v3}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-interface {p1}, Lr3/K;->r0()Lu3/t;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v6, Ls3/d;->d:Ls3/d;

    invoke-virtual {p0, p2, v3, v6}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    :cond_1
    invoke-interface {p1}, Lr3/K;->i0()Lu3/t;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v6, Ls3/d;->l:Ls3/d;

    invoke-virtual {p0, p2, v3, v6}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    :cond_2
    iget-object v3, v0, LS3/k;->G:LS3/j;

    const/16 v6, 0x1f

    aget-object v4, v4, v6

    invoke-virtual {v3, v4, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS3/p;

    sget-object v3, LS3/p;->d:LS3/p;

    if-ne v0, v3, :cond_4

    invoke-interface {p1}, Lr3/K;->r()Lu3/L;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, Ls3/d;->g:Ls3/d;

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    :cond_3
    invoke-interface {p1}, Lr3/K;->f()Lu3/M;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v3, Ls3/d;->h:Ls3/d;

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-virtual {v0}, Lu3/M;->w0()Ljava/util/List;

    move-result-object v0

    const-string v3, "setter.valueParameters"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/V;

    const-string v3, "it"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Ls3/d;->k:Ls3/d;

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    :cond_4
    :goto_0
    invoke-interface {p1}, Lr3/b;->v0()Ljava/util/List;

    move-result-object v0

    const-string v3, "property.contextReceiverParameters"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, LS3/g;->C(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-interface {p1}, Lr3/w;->c()LA3/p;

    move-result-object v0

    const-string v3, "property.visibility"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, LS3/g;->h0(LA3/p;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v3, LS3/h;->p:LS3/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lr3/U;->P()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    const-string v3, "const"

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LS3/g;->K(Lr3/w;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, LS3/g;->M(Lr3/c;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, LS3/g;->S(Lr3/c;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v3, LS3/h;->q:LS3/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lr3/U;->C0()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    const-string v3, "lateinit"

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LS3/g;->J(Lr3/c;Ljava/lang/StringBuilder;)V

    :cond_7
    invoke-virtual {p0, p1, p2, v5}, LS3/g;->e0(Lr3/U;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, Lr3/b;->u()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0, v2}, LS3/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p2, p1}, LS3/g;->V(Ljava/lang/StringBuilder;Lr3/b;)V

    :cond_8
    invoke-virtual {p0, p1, p2, v2}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lr3/T;->e()Lh4/v;

    move-result-object v0

    const-string v2, "property.type"

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p1}, LS3/g;->W(Ljava/lang/StringBuilder;Lr3/b;)V

    invoke-virtual {p0, p1, p2}, LS3/g;->H(Lr3/U;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Lr3/b;->u()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, LS3/g;->i0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public static v(Lr3/w;)I
    .locals 6

    instance-of v0, p0, Lr3/e;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Lr3/e;

    invoke-interface {p0}, Lr3/e;->L()I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    instance-of v4, v0, Lr3/e;

    if-eqz v4, :cond_2

    check-cast v0, Lr3/e;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return v3

    :cond_3
    instance-of v4, p0, Lr3/c;

    if-nez v4, :cond_4

    return v3

    :cond_4
    check-cast p0, Lr3/c;

    invoke-interface {p0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "this.overriddenDescriptors"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    const/4 v5, 0x3

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lr3/e;->i()I

    move-result v4

    if-eq v4, v3, :cond_5

    return v5

    :cond_5
    invoke-interface {v0}, Lr3/e;->L()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-interface {p0}, Lr3/w;->c()LA3/p;

    move-result-object v0

    sget-object v2, Lr3/n;->a:LA3/p;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p0}, Lr3/w;->i()I

    move-result p0

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    return v1
.end method

.method public static synthetic y(LS3/g;Ls3/b;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LS3/g;->x(Ls3/b;Ls3/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Lr3/h;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-interface {p1}, Lr3/h;->s()Ljava/util/List;

    move-result-object v0

    const-string v1, "classifier.declaredTypeParameters"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/g;->H()Lh4/J;

    move-result-object v1

    invoke-interface {v1}, Lh4/J;->k()Ljava/util/List;

    move-result-object v1

    const-string v2, "classifier.typeConstructor.parameters"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LS3/g;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lr3/h;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string p1, " /*captured type parameters: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LS3/g;->c0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p0, "*/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final B(LV3/g;)Ljava/lang/String;
    .locals 6

    instance-of v0, p1, LV3/b;

    if-eqz v0, :cond_0

    check-cast p1, LV3/b;

    iget-object p1, p1, LV3/g;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, LS3/e;

    const/4 p1, 0x1

    invoke-direct {v4, p0, p1}, LS3/e;-><init>(LS3/g;I)V

    const-string v2, "{"

    const-string v3, "}"

    const-string v1, ", "

    const/16 v5, 0x18

    invoke-static/range {v0 .. v5}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, LV3/a;

    if-eqz v0, :cond_1

    check-cast p1, LV3/a;

    iget-object p1, p1, LV3/g;->a:Ljava/lang/Object;

    check-cast p1, Ls3/b;

    invoke-static {p0, p1}, LS3/g;->y(LS3/g;Ls3/b;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "@"

    invoke-static {p0, p1}, Ls4/h;->p(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of p0, p1, LV3/r;

    if-eqz p0, :cond_5

    check-cast p1, LV3/r;

    iget-object p0, p1, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, LV3/q;

    instance-of p1, p0, LV3/o;

    const-string v0, "::class"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, LV3/o;

    iget-object p0, p0, LV3/o;->a:Lh4/v;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    instance-of p1, p0, LV3/p;

    if-eqz p1, :cond_4

    check-cast p0, LV3/p;

    iget-object p1, p0, LV3/p;->a:LV3/f;

    iget-object p1, p1, LV3/f;->a:LQ3/b;

    invoke-virtual {p1}, LQ3/b;->b()LQ3/c;

    move-result-object p1

    invoke-virtual {p1}, LQ3/c;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LV3/p;->a:LV3/f;

    iget p0, p0, LV3/f;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kotlin.Array<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1, v0}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {p1}, LV3/g;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final C(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "context("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/w;

    sget-object v4, Ls3/d;->i:Ls3/d;

    invoke-virtual {p0, p1, v3, v4}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-virtual {v3}, Lu3/w;->e()Lh4/v;

    move-result-object v3

    const-string v4, "contextReceiver.type"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, LS3/g;->G(Lh4/v;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LR2/n;->x0(Ljava/util/List;)I

    move-result v3

    if-ne v1, v3, :cond_0

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final D(Ljava/lang/StringBuilder;Lh4/z;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    instance-of v1, p2, Lh4/m;

    invoke-static {p2}, Lh4/c;->i(Lh4/v;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    instance-of v0, p2, Lj4/f;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Lj4/f;

    iget-object v1, v1, Lj4/f;->f:Lj4/h;

    iget-boolean v1, v1, Lj4/h;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, LS3/g;->a:LS3/k;

    if-eqz v1, :cond_2

    iget-object v1, v3, LS3/k;->T:LS3/j;

    sget-object v4, LS3/k;->W:[Li3/o;

    const/16 v5, 0x2d

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v3}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lj4/i;->a:Lj4/i;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lj4/f;

    iget-object v0, v0, Lj4/f;->f:Lj4/h;

    iget-boolean v0, v0, Lj4/h;->d:Z

    :cond_1
    invoke-virtual {p2}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    invoke-static {v1, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lj4/g;

    iget-object v0, v0, Lj4/g;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, LS3/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, v3, LS3/k;->V:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v3}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p2

    check-cast v0, Lj4/f;

    iget-object v0, v0, Lj4/f;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, LS3/g;->Z(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lh4/v;->J0()Lh4/J;

    move-result-object v1

    invoke-virtual {p2}, Lh4/v;->J0()Lh4/J;

    move-result-object v3

    invoke-interface {v3}, Lh4/J;->i()Lr3/g;

    move-result-object v3

    instance-of v4, v3, Lr3/h;

    if-eqz v4, :cond_5

    move-object v0, v3

    check-cast v0, Lr3/h;

    :cond_5
    invoke-static {p2, v0, v2}, Lp0/a;->c(Lh4/z;Lr3/h;I)LJ/r0;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, LS3/g;->a0(Lh4/J;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, LS3/g;->Z(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, v0}, LS3/g;->U(Ljava/lang/StringBuilder;LJ/r0;)V

    :goto_2
    invoke-virtual {p2}, Lh4/v;->K0()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    instance-of p0, p2, Lh4/m;

    if-eqz p0, :cond_8

    const-string p0, " & Any"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    return-void
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LS3/g;->s()LS3/s;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "<font color=red><b>"

    const-string v0, "</b></font>"

    invoke-static {p0, p1, v0}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Lo3/i;)Ljava/lang/String;
    .locals 5

    const-string v0, "lowerRendered"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "upperRendered"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, LW1/a;->m0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "("

    if-eqz v0, :cond_1

    invoke-static {p2, v1}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ")!"

    invoke-static {v1, p1, p0}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "!"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, LS3/g;->p()LS3/c;

    move-result-object v0

    sget-object v2, Lo3/m;->B:LQ3/c;

    invoke-virtual {p3, v2}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object v2

    invoke-interface {v0, v2, p0}, LS3/c;->a(Lr3/g;LS3/g;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Collection"

    invoke-static {v0, v2}, Ls4/h;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(Mutable)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, p2, v0, v3}, LW1/a;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    const-string v2, "MutableMap.MutableEntry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Map.Entry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Mutable)Map.(Mutable)Entry"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, p2, v3, v0}, LW1/a;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, LS3/g;->p()LS3/c;

    move-result-object v0

    const-string v2, "Array"

    invoke-virtual {p3, v2}, Lo3/i;->j(Ljava/lang/String;)Lr3/e;

    move-result-object p3

    invoke-interface {v0, p3, p0}, LS3/c;->a(Lr3/g;LS3/g;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, Ls4/h;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Array<"

    invoke-virtual {p0, v0}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Array<out "

    invoke-virtual {p0, v2}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Array<(out) "

    invoke-virtual {p0, v3}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p2, v2, p0}, LW1/a;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final G(Lh4/v;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, LS3/g;->j0(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lh4/X;->f(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of p1, p1, Lh4/m;

    if-eqz p1, :cond_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final H(Lr3/U;Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v1, v0, LS3/k;->u:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lr3/U;->g0()LV3/g;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, LS3/g;->B(LV3/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final I(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, LS3/g;->s()LS3/s;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, LS3/g;->a:LS3/k;

    iget-object v0, p0, LS3/k;->U:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "<b>"

    const-string v0, "</b>"

    invoke-static {p0, p1, v0}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final J(Lr3/c;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, LS3/h;->k:LS3/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LS3/g;->u()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lr3/c;->k0()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lr3/c;->k0()I

    move-result p0

    invoke-static {p0}, Lh0/c;->j(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo4/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final K(Lr3/w;Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-interface {p1}, Lr3/w;->D()Z

    move-result v0

    const-string v1, "external"

    invoke-virtual {p0, p2, v0, v1}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, LS3/h;->n:LS3/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lr3/w;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "expect"

    invoke-virtual {p0, p2, v0, v3}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v3, LS3/h;->o:LS3/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lr3/w;->j0()Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    const-string p1, "actual"

    invoke-virtual {p0, p2, v1, p1}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final L(ILjava/lang/StringBuilder;I)V
    .locals 4

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v1, v0, LS3/k;->p:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object p3

    sget-object v0, LS3/h;->g:LS3/h;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {p1}, Lh0/c;->k(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo4/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final M(Lr3/c;Ljava/lang/StringBuilder;)V
    .locals 5

    invoke-static {p1}, LT3/e;->t(Lr3/j;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lr3/w;->i()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v2, v0, LS3/k;->A:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS3/n;

    sget-object v2, LS3/n;->c:LS3/n;

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lr3/w;->i()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lr3/w;->i()I

    move-result v0

    const-string v1, "callable.modality"

    invoke-static {v0, v1}, LB/f;->E(ILjava/lang/String;)V

    invoke-static {p1}, LS3/g;->v(Lr3/w;)I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, LS3/g;->L(ILjava/lang/StringBuilder;I)V

    :cond_2
    return-void
.end method

.method public final N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final O(LQ3/f;Z)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, LW1/a;->d0(LQ3/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v1, v0, LS3/k;->U:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LS3/g;->s()LS3/s;

    move-result-object p0

    sget-object v0, LS3/s;->d:LS3/q;

    if-ne p0, v0, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "<b>"

    const-string p2, "</b>"

    invoke-static {p0, p1, p2}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final P(Lr3/j;Ljava/lang/StringBuilder;Z)V
    .locals 1

    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object p1

    const-string v0, "descriptor.name"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final Q(Ljava/lang/StringBuilder;Lh4/v;)V
    .locals 4

    invoke-virtual {p2}, Lh4/v;->M0()Lh4/Z;

    move-result-object v0

    instance-of v1, v0, Lh4/a;

    if-eqz v1, :cond_0

    check-cast v0, Lh4/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-object p2, p0, LS3/g;->a:LS3/k;

    iget-object v1, p2, LS3/k;->Q:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x29

    aget-object v3, v2, v3

    invoke-virtual {v1, v3, p2}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lh4/a;->d:Lh4/z;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v3}, LS3/g;->R(Ljava/lang/StringBuilder;Lh4/v;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lh4/a;->e:Lh4/z;

    invoke-virtual {p0, p1, v0}, LS3/g;->R(Ljava/lang/StringBuilder;Lh4/v;)V

    const/16 v0, 0x28

    aget-object v0, v2, v0

    iget-object v1, p2, LS3/k;->P:LS3/j;

    invoke-virtual {v1, v0, p2}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, LS3/g;->s()LS3/s;

    move-result-object p2

    sget-object v0, LS3/s;->d:LS3/q;

    if-ne p2, v0, :cond_2

    const-string p2, "<font color=\"808080\"><i>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, " /* = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v3}, LS3/g;->R(Ljava/lang/StringBuilder;Lh4/v;)V

    const-string p2, " */"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LS3/g;->s()LS3/s;

    move-result-object p0

    if-ne p0, v0, :cond_3

    const-string p0, "</i></font>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, LS3/g;->R(Ljava/lang/StringBuilder;Lh4/v;)V

    return-void
.end method

.method public final R(Ljava/lang/StringBuilder;Lh4/v;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lh4/x;

    iget-object v4, v0, LS3/g;->a:LS3/k;

    if-eqz v3, :cond_1

    invoke-virtual {v4}, LS3/k;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lh4/x;

    iget-object v3, v3, Lh4/x;->f:Lg4/i;

    iget-object v5, v3, Lg4/h;->e:Ljava/lang/Object;

    sget-object v6, Lg4/k;->c:Lg4/k;

    if-eq v5, v6, :cond_0

    iget-object v3, v3, Lg4/h;->e:Ljava/lang/Object;

    sget-object v5, Lg4/k;->d:Lg4/k;

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "<Not computed yet>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lh4/v;->M0()Lh4/Z;

    move-result-object v2

    instance-of v3, v2, Lh4/q;

    if-eqz v3, :cond_2

    check-cast v2, Lh4/q;

    invoke-virtual {v2, v0, v0}, Lh4/q;->R0(LS3/g;LS3/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :cond_2
    instance-of v3, v2, Lh4/z;

    if-eqz v3, :cond_22

    check-cast v2, Lh4/z;

    sget-object v3, Lh4/X;->b:Lj4/f;

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "???"

    if-nez v3, :cond_21

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v3

    sget-object v6, Lh4/X;->a:Lj4/f;

    iget-object v6, v6, Lj4/f;->d:Lh4/J;

    if-ne v3, v6, :cond_3

    goto/16 :goto_d

    :cond_3
    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v3

    instance-of v6, v3, Lj4/g;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    check-cast v3, Lj4/g;

    iget-object v3, v3, Lj4/g;->a:Lj4/h;

    sget-object v6, Lj4/h;->l:Lj4/h;

    if-ne v3, v6, :cond_5

    iget-object v3, v4, LS3/k;->t:LS3/j;

    sget-object v6, LS3/k;->W:[Li3/o;

    const/16 v8, 0x12

    aget-object v6, v6, v8

    invoke-virtual {v3, v6, v4}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    invoke-static {v3, v2}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lj4/g;

    iget-object v2, v2, Lj4/g;->b:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, LS3/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :cond_5
    invoke-static {v2}, Lh4/c;->i(Lh4/v;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1, v2}, LS3/g;->D(Ljava/lang/StringBuilder;Lh4/z;)V

    goto/16 :goto_e

    :cond_6
    invoke-static {v2}, LS3/g;->j0(Lh4/v;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget-object v6, v0, LS3/g;->b:LQ2/h;

    invoke-virtual {v6}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LS3/g;

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v2, v8}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v3, :cond_7

    move v6, v9

    goto :goto_1

    :cond_7
    move v6, v7

    :goto_1
    invoke-static {v2}, Lo3/f;->j(Lh4/v;)Lh4/v;

    move-result-object v10

    invoke-static {v2}, Lo3/f;->h(Lh4/v;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v9

    const-string v13, ") "

    const-string v14, ", "

    if-eqz v12, :cond_9

    const-string v12, "context("

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, LR2/n;->x0(Ljava/util/List;)I

    move-result v12

    invoke-interface {v11, v7, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lh4/v;

    invoke-virtual {v0, v1, v15}, LS3/g;->Q(Ljava/lang/StringBuilder;Lh4/v;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-static {v11}, LR2/m;->U0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh4/v;

    invoke-virtual {v0, v1, v11}, LS3/g;->Q(Ljava/lang/StringBuilder;Lh4/v;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {v2}, Lo3/f;->o(Lh4/v;)Z

    move-result v11

    invoke-virtual {v2}, Lh4/v;->K0()Z

    move-result v12

    if-nez v12, :cond_b

    if-eqz v6, :cond_a

    if-eqz v10, :cond_a

    goto :goto_3

    :cond_a
    move v15, v7

    goto :goto_4

    :cond_b
    :goto_3
    move v15, v9

    :goto_4
    const-string v8, "("

    if-eqz v15, :cond_10

    if-eqz v11, :cond_c

    const/16 v6, 0x28

    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    if-eqz v6, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-static/range {p1 .. p1}, Ls4/h;->i(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    :cond_d
    invoke-static/range {p1 .. p1}, Ls4/h;->i(Ljava/lang/CharSequence;)I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v6, 0x29

    if-eq v3, v6, :cond_f

    invoke-static/range {p1 .. p1}, Ls4/h;->i(Ljava/lang/CharSequence;)I

    move-result v3

    const-string v6, "()"

    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Char sequence is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_6
    const-string v3, "suspend"

    invoke-virtual {v0, v1, v11, v3}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v3, ")"

    if-eqz v10, :cond_17

    invoke-static {v10}, LS3/g;->j0(Lh4/v;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v10}, Lh4/v;->K0()Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_11
    invoke-static {v10}, Lo3/f;->o(Lh4/v;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v10}, Lh4/v;->t()Ls3/h;

    move-result-object v6

    invoke-interface {v6}, Ls3/h;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_7

    :cond_12
    instance-of v6, v10, Lh4/m;

    if-eqz v6, :cond_13

    goto :goto_7

    :cond_13
    move v6, v7

    goto :goto_8

    :cond_14
    :goto_7
    move v6, v9

    :goto_8
    if-eqz v6, :cond_15

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v0, v1, v10}, LS3/g;->Q(Ljava/lang/StringBuilder;Lh4/v;)V

    if-eqz v6, :cond_16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lo3/f;->n(Lh4/v;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v2}, Lh4/v;->t()Ls3/h;

    move-result-object v6

    sget-object v8, Lo3/m;->p:LQ3/c;

    invoke-interface {v6, v8}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v2}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v9, :cond_18

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_18
    invoke-static {v2}, Lo3/f;->l(Lh4/v;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v7

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh4/N;

    if-lez v6, :cond_19

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v6, v4, LS3/k;->S:LS3/j;

    sget-object v11, LS3/k;->W:[Li3/o;

    const/16 v16, 0x2b

    aget-object v11, v11, v16

    invoke-virtual {v6, v11, v4}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v10}, Lh4/N;->b()Lh4/v;

    move-result-object v6

    const-string v11, "typeProjection.type"

    invoke-static {v11, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lo3/f;->f(Lh4/v;)LQ3/f;

    move-result-object v6

    goto :goto_a

    :cond_1a
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_1b

    invoke-virtual {v0, v6, v7}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v6, "typeProjection"

    invoke-static {v6, v10}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v10, LS3/e;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, LS3/e;-><init>(LS3/g;I)V

    const/16 v21, 0x3c

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v6

    move-object/from16 v20, v10

    invoke-static/range {v16 .. v21}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v10, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v8

    goto :goto_9

    :cond_1c
    :goto_b
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LS3/g;->s()LS3/s;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_1e

    if-ne v4, v9, :cond_1d

    const-string v4, "&rarr;"

    goto :goto_c

    :cond_1d
    new-instance v0, LA0/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    const-string v4, "->"

    invoke-virtual {v0, v4}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lo3/f;->n(Lh4/v;)Z

    invoke-virtual {v2}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, LR2/m;->U0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/N;

    invoke-virtual {v2}, Lh4/N;->b()Lh4/v;

    move-result-object v2

    const-string v4, "arguments.last().type"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, LS3/g;->Q(Ljava/lang/StringBuilder;Lh4/v;)V

    if-eqz v15, :cond_1f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    if-eqz v12, :cond_22

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_20
    invoke-virtual {v0, v1, v2}, LS3/g;->D(Ljava/lang/StringBuilder;Lh4/z;)V

    goto :goto_e

    :cond_21
    :goto_d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    :goto_e
    return-void
.end method

.method public final S(Lr3/c;Ljava/lang/StringBuilder;)V
    .locals 5

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, LS3/h;->h:LS3/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v2, v0, LS3/k;->A:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS3/n;

    sget-object v2, LS3/n;->d:LS3/n;

    if-eq v0, v2, :cond_1

    const-string v0, "override"

    invoke-virtual {p0, p2, v1, v0}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, LS3/g;->u()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final T(LQ3/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p2}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LQ3/c;->i()LQ3/e;

    move-result-object p1

    const-string p2, "fqName.toUnsafe()"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, LQ3/e;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LW1/a;->e0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final U(Ljava/lang/StringBuilder;LJ/r0;)V
    .locals 2

    iget-object v0, p2, LJ/r0;->e:Ljava/lang/Object;

    check-cast v0, LJ/r0;

    iget-object v1, p2, LJ/r0;->c:Ljava/lang/Object;

    check-cast v1, Lr3/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, LS3/g;->U(Ljava/lang/StringBuilder;LJ/r0;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lr3/j;->getName()LQ3/f;

    move-result-object v0

    const-string v1, "possiblyInnerType.classifierDescriptor.name"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lr3/g;->H()Lh4/J;

    move-result-object v0

    const-string v1, "possiblyInnerType.classi\u2026escriptor.typeConstructor"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LS3/g;->a0(Lh4/J;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p2, p2, LJ/r0;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, LS3/g;->Z(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final V(Ljava/lang/StringBuilder;Lr3/b;)V
    .locals 1

    invoke-interface {p2}, Lr3/b;->d0()Lu3/w;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Ls3/d;->i:Ls3/d;

    invoke-virtual {p0, p1, p2, v0}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-virtual {p2}, Lu3/w;->e()Lh4/v;

    move-result-object p2

    const-string v0, "receiver.type"

    invoke-static {v0, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, LS3/g;->G(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final W(Ljava/lang/StringBuilder;Lr3/b;)V
    .locals 4

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v1, v0, LS3/k;->E:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lr3/b;->d0()Lu3/w;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, " on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lu3/w;->e()Lh4/v;

    move-result-object p2

    const-string v0, "receiver.type"

    invoke-static {v0, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final Y(Lh4/v;)Ljava/lang/String;
    .locals 5

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LS3/g;->a:LS3/k;

    iget-object v2, v1, LS3/k;->x:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/b;

    invoke-interface {v1, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/v;

    invoke-virtual {p0, v0, p1}, LS3/g;->Q(Ljava/lang/StringBuilder;Lh4/v;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final Z(Ljava/util/List;)Ljava/lang/String;
    .locals 7

    const-string v0, "typeArguments"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {p0, v0}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, LS3/e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, LS3/e;-><init>(LS3/g;I)V

    const/4 v3, 0x0

    const/16 v5, 0x3c

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    const-string p1, ">"

    invoke-virtual {p0, p1}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final a()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->a()V

    return-void
.end method

.method public final a0(Lh4/J;)Ljava/lang/String;
    .locals 3

    const-string v0, "typeConstructor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v1, v0, Lr3/Q;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lr3/e;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lf4/t;

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "klass"

    invoke-static {p1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lj4/i;->f(Lr3/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, LS3/g;->p()LS3/c;

    move-result-object p1

    invoke-interface {p1, v0, p0}, LS3/c;->a(Lr3/g;LS3/g;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    instance-of p0, p1, Lh4/u;

    if-eqz p0, :cond_4

    check-cast p1, Lh4/u;

    sget-object p0, LS3/f;->f:LS3/f;

    invoke-virtual {p1, p0}, Lh4/u;->c(Lc3/b;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected classifier: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->b()V

    return-void
.end method

.method public final b0(Lr3/Q;Ljava/lang/StringBuilder;Z)V
    .locals 7

    if-eqz p3, :cond_0

    const-string v0, "<"

    invoke-virtual {p0, v0}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, LS3/g;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lr3/Q;->z0()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p1}, Lr3/Q;->n0()Z

    move-result v0

    const-string v1, "reified"

    invoke-virtual {p0, p2, v0, v1}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, Lr3/Q;->A()I

    move-result v0

    invoke-static {v0}, Lh0/c;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0, p2, v1, v0}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    invoke-virtual {p0, p1, p2, p3}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v4, 0x8d

    const-string v5, " : "

    if-le v1, v3, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    if-ne v1, v3, :cond_7

    :cond_4
    invoke-interface {p1}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/v;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lo3/i;->x(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lh4/v;->K0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-static {v4}, Lo3/i;->a(I)V

    throw v0

    :cond_7
    if-eqz p3, :cond_b

    invoke-interface {p1}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lo3/i;->x(Lh4/v;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lh4/v;->K0()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v3, " & "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0, v1}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_1

    :cond_a
    invoke-static {v4}, Lo3/i;->a(I)V

    throw v0

    :cond_b
    :goto_3
    if-eqz p3, :cond_c

    const-string p1, ">"

    invoke-virtual {p0, p1}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->c()V

    return-void
.end method

.method public final c0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/Q;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, LS3/g;->b0(Lr3/Q;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->d()V

    return-void
.end method

.method public final d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 4

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v1, v0, LS3/k;->v:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "<"

    invoke-virtual {p0, v0}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, LS3/g;->c0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p2, ">"

    invoke-virtual {p0, p2}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->e()V

    return-void
.end method

.method public final e0(Lr3/U;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-nez p3, :cond_0

    instance-of p3, p1, Lu3/V;

    if-nez p3, :cond_2

    :cond_0
    invoke-interface {p1}, Lr3/U;->T()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "var"

    goto :goto_0

    :cond_1
    const-string p1, "val"

    :goto_0
    invoke-virtual {p0, p1}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->f()Z

    move-result p0

    return p0
.end method

.method public final f0(Lu3/V;ZLjava/lang/StringBuilder;Z)V
    .locals 10

    if-eqz p4, :cond_0

    const-string v0, "value-parameter"

    invoke-virtual {p0, v0}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, LS3/g;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lu3/V;->h:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0}, LS3/g;->z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V

    iget-boolean v1, p1, Lu3/V;->j:Z

    const-string v2, "crossinline"

    invoke-virtual {p0, p3, v1, v2}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p1, Lu3/V;->k:Z

    const-string v2, "noinline"

    invoke-virtual {p0, p3, v1, v2}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, p0, LS3/g;->a:LS3/k;

    iget-object v2, v1, LS3/k;->r:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0x10

    aget-object v4, v3, v4

    invoke-virtual {v2, v4, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lu3/V;->S0()Lr3/b;

    move-result-object v2

    instance-of v6, v2, Lu3/k;

    if-eqz v6, :cond_2

    move-object v0, v2

    check-cast v0, Lu3/k;

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lu3/k;->G:Z

    if-ne v0, v5, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    if-eqz v0, :cond_4

    const/16 v2, 0x11

    aget-object v2, v3, v2

    iget-object v6, v1, LS3/k;->s:LS3/j;

    invoke-virtual {v6, v2, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v6, "actual"

    invoke-virtual {p0, p3, v2, v6}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_4
    move-object v2, p1

    check-cast v2, Lu3/W;

    invoke-virtual {v2}, Lu3/W;->e()Lh4/v;

    move-result-object v2

    const-string v6, "variable.type"

    invoke-static {v6, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p1, Lu3/V;->l:Lh4/v;

    if-nez v6, :cond_5

    move-object v7, v2

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    if-eqz v6, :cond_6

    move v8, v5

    goto :goto_2

    :cond_6
    move v8, v4

    :goto_2
    const-string v9, "vararg"

    invoke-virtual {p0, p3, v8, v9}, LS3/g;->N(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_7

    if-eqz p4, :cond_8

    invoke-virtual {p0}, LS3/g;->r()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-virtual {p0, p1, p3, v0}, LS3/g;->e0(Lr3/U;Ljava/lang/StringBuilder;Z)V

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, p3, p4}, LS3/g;->P(Lr3/j;Ljava/lang/StringBuilder;Z)V

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0, v7}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3}, LS3/g;->H(Lr3/U;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, LS3/g;->u()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v6, :cond_a

    const-string p2, " /*"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object p0, v1, LS3/k;->y:LS3/j;

    const/16 p2, 0x17

    aget-object p4, v3, p2

    invoke-virtual {p0, p4, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc3/b;

    if-eqz p0, :cond_c

    invoke-virtual {v1}, LS3/k;->g()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lu3/V;->R0()Z

    move-result p0

    goto :goto_3

    :cond_b
    invoke-static {p1}, LX3/f;->a(Lu3/V;)Z

    move-result p0

    :goto_3
    if-eqz p0, :cond_c

    move v4, v5

    :cond_c
    if-eqz v4, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, " = "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v1, LS3/k;->y:LS3/j;

    aget-object p2, v3, p2

    invoke-virtual {p4, p2, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc3/b;

    invoke-static {p2}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    return-void
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->g()Z

    move-result p0

    return p0
.end method

.method public final g0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 7

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v1, v0, LS3/k;->D:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS3/o;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p3, 0x2

    if-ne v0, p3, :cond_1

    :cond_0
    move p3, v2

    goto :goto_0

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    if-nez p3, :cond_0

    :cond_3
    move p3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, LS3/g;->t()LS3/d;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "builder"

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu3/V;

    invoke-virtual {p0}, LS3/g;->t()LS3/d;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "parameter"

    invoke-static {v6, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, p3, p1, v2}, LS3/g;->f0(Lu3/V;ZLjava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, LS3/g;->t()LS3/d;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v0, -0x1

    if-eq v3, v5, :cond_4

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, LS3/g;->t()LS3/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final h(LS3/c;)V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0, p1}, LS3/k;->h(LS3/c;)V

    return-void
.end method

.method public final h0(LA3/p;Ljava/lang/StringBuilder;)Z
    .locals 5

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, LS3/h;->f:LS3/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v2, v0, LS3/k;->n:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0xc

    aget-object v4, v3, v4

    invoke-virtual {v2, v4, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p1, LA3/p;->a:Lr3/f0;

    invoke-virtual {p1}, Lr3/f0;->c()Lr3/f0;

    move-result-object p1

    invoke-static {p1}, Lr3/n;->f(Lr3/f0;)LA3/p;

    move-result-object p1

    :cond_1
    const/16 v2, 0xd

    aget-object v2, v3, v2

    iget-object v3, v0, LS3/k;->o:LS3/j;

    invoke-virtual {v3, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lr3/n;->j:LA3/p;

    invoke-static {p1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p1, p1, LA3/p;->a:Lr3/f0;

    invoke-virtual {p1}, Lr3/f0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->i()V

    return-void
.end method

.method public final i0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, LS3/g;->a:LS3/k;

    iget-object v1, v0, LS3/k;->v:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/Q;

    invoke-interface {v2}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v3

    const-string v4, "typeParameter.upperBounds"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, LR2/m;->I0(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lr3/j;->getName()LQ3/f;

    move-result-object v6

    const-string v7, "typeParameter.name"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v6, v0}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "it"

    invoke-static {v6, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "where"

    invoke-virtual {p0, v0}, LS3/g;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x7c

    move-object v2, p1

    invoke-static/range {v1 .. v6}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->j()V

    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, LS3/k;->k()V

    return-void
.end method

.method public final l(LS3/o;)V
    .locals 0

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0, p1}, LS3/k;->l(LS3/o;)V

    return-void
.end method

.method public final m(Ljava/util/Set;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LS3/g;->a:LS3/k;

    invoke-virtual {p0, p1}, LS3/k;->m(Ljava/util/Set;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LS3/g;->s()LS3/s;

    move-result-object p0

    invoke-virtual {p0, p1}, LS3/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p()LS3/c;
    .locals 3

    iget-object p0, p0, LS3/g;->a:LS3/k;

    iget-object v0, p0, LS3/k;->b:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS3/c;

    return-object p0
.end method

.method public final q()Ljava/util/Set;
    .locals 3

    iget-object p0, p0, LS3/g;->a:LS3/k;

    iget-object v0, p0, LS3/k;->e:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final r()Z
    .locals 3

    iget-object p0, p0, LS3/g;->a:LS3/k;

    iget-object v0, p0, LS3/k;->f:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final s()LS3/s;
    .locals 3

    iget-object p0, p0, LS3/g;->a:LS3/k;

    iget-object v0, p0, LS3/k;->C:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS3/s;

    return-object p0
.end method

.method public final t()LS3/d;
    .locals 3

    iget-object p0, p0, LS3/g;->a:LS3/k;

    iget-object v0, p0, LS3/k;->B:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS3/d;

    return-object p0
.end method

.method public final u()Z
    .locals 3

    iget-object p0, p0, LS3/g;->a:LS3/k;

    iget-object v0, p0, LS3/k;->j:LS3/j;

    sget-object v1, LS3/k;->W:[Li3/o;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final w(Lr3/j;)Ljava/lang/String;
    .locals 7

    const-string v0, "declarationDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ls2/c;

    invoke-direct {v1, p0}, Ls2/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v0}, Lr3/j;->F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LS3/g;->a:LS3/k;

    iget-object v2, v1, LS3/k;->c:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-virtual {v2, v5, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, p1, Lr3/C;

    if-nez v2, :cond_4

    instance-of v2, p1, Lr3/H;

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v5, v2, Lr3/x;

    if-nez v5, :cond_4

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LS3/g;->s()LS3/s;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_2

    if-ne v6, v4, :cond_1

    const-string v4, "<i>defined in</i>"

    goto :goto_0

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    const-string v4, "defined in"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v4

    const-string v5, "getFqName(containingDeclaration)"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v4, LQ3/e;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p0, "root package"

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, LQ3/e;->e()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, LW1/a;->e0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, LS3/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x2

    aget-object p0, v3, p0

    iget-object v3, v1, LS3/k;->d:LS3/j;

    invoke-virtual {v3, p0, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    instance-of p0, v2, Lr3/C;

    if-eqz p0, :cond_4

    instance-of p0, p1, Lr3/k;

    if-eqz p0, :cond_4

    check-cast p1, Lr3/k;

    invoke-interface {p1}, Lr3/k;->m()Lr3/N;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final x(Ls3/b;Ls3/d;)Ljava/lang/String;
    .locals 12

    const-string v0, "annotation"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Ls3/d;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1}, Ls3/b;->e()Lh4/v;

    move-result-object p2

    invoke-virtual {p0, p2}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LS3/g;->a:LS3/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x25

    aget-object v4, v2, v3

    iget-object v5, v1, LS3/k;->M:LS3/j;

    invoke-virtual {v5, v4, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LS3/a;

    iget-boolean v4, v4, LS3/a;->c:Z

    if-eqz v4, :cond_e

    invoke-interface {p1}, Ls3/b;->b()Ljava/util/Map;

    move-result-object v4

    const/16 v6, 0x20

    aget-object v2, v2, v6

    iget-object v6, v1, LS3/k;->H:LS3/j;

    invoke-virtual {v6, v2, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    invoke-static {p1}, LX3/f;->d(Ls3/b;)Lr3/e;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v6

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lr3/e;->W()Lu3/k;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lu3/v;

    invoke-virtual {p1}, Lu3/v;->w0()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lu3/V;

    invoke-virtual {v7}, Lu3/V;->R0()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/V;

    check-cast v2, Lu3/o;

    invoke-virtual {v2}, Lu3/o;->getName()LQ3/f;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, LR2/u;->c:LR2/u;

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, LQ3/f;

    const-string v10, "it"

    invoke-static {v10, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v8, v9

    if-eqz v8, :cond_6

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LQ3/f;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = ..."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LQ3/f;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LV3/g;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0, v7}, LS3/g;->B(LV3/g;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    const-string v7, "..."

    :goto_6
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-static {v2, v4}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v8, :cond_b

    invoke-static {p1}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Comparable;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Ljava/lang/Comparable;

    const-string v4, "<this>"

    invoke-static {v4, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v4, v2

    if-le v4, v8, :cond_c

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, LR2/i;->g0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_7
    sget-object v2, LS3/k;->W:[Li3/o;

    aget-object v2, v2, v3

    invoke-virtual {v5, v2, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS3/a;

    iget-boolean v1, v1, LS3/a;->d:Z

    if-nez v1, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_e

    :cond_d
    const-string v4, ")"

    const/4 v5, 0x0

    const-string v3, "("

    const/16 v6, 0x70

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    :cond_e
    invoke-virtual {p0}, LS3/g;->u()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p2}, Lh4/c;->i(Lh4/v;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {p2}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of p0, p0, Lr3/A;

    if-eqz p0, :cond_10

    :cond_f
    const-string p0, " /* annotation class not found */"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final z(Ljava/lang/StringBuilder;Ls3/a;Ls3/d;)V
    .locals 6

    invoke-virtual {p0}, LS3/g;->q()Ljava/util/Set;

    move-result-object v0

    sget-object v1, LS3/h;->i:LS3/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Lh4/v;

    iget-object v1, p0, LS3/g;->a:LS3/k;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, LS3/k;->n()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, LS3/k;->J:LS3/j;

    sget-object v2, LS3/k;->W:[Li3/o;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    iget-object v2, v1, LS3/k;->L:LS3/j;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0x24

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/b;

    invoke-interface {p2}, Ls3/a;->t()Ls3/h;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls3/b;

    invoke-interface {v3}, Ls3/b;->a()LQ3/c;

    move-result-object v4

    invoke-static {v0, v4}, LR2/m;->H0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ls3/b;->a()LQ3/c;

    move-result-object v4

    sget-object v5, Lo3/m;->r:LQ3/c;

    invoke-static {v4, v5}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    invoke-virtual {p0, v3, p3}, LS3/g;->x(Ls3/b;Ls3/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, LS3/k;->W:[Li3/o;

    const/16 v4, 0x21

    aget-object v3, v3, v4

    iget-object v4, v1, LS3/k;->I:LS3/j;

    invoke-virtual {v4, v3, v1}, LS3/j;->a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void
.end method

.class public final Lu3/S;
.super Lu3/v;
.source "SourceFile"

# interfaces
.implements Lu3/P;


# static fields
.field public static final J:Lu3/Q;


# instance fields
.field public final G:Lg4/o;

.field public final H:Lf4/t;

.field public I:Lu3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lu3/S;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "withDispatchReceiver"

    const-string v4, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    new-instance v0, Lu3/Q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu3/S;->J:Lu3/Q;

    return-void
.end method

.method public constructor <init>(Lg4/o;Lf4/t;Lu3/k;Lu3/P;Ls3/h;ILr3/N;)V
    .locals 7

    sget-object v2, LQ3/h;->e:LQ3/f;

    move-object v0, p0

    move v1, p6

    move-object v3, p2

    move-object v4, p4

    move-object v5, p7

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lu3/v;-><init>(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)V

    iput-object p1, p0, Lu3/S;->G:Lg4/o;

    iput-object p2, p0, Lu3/S;->H:Lf4/t;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lu3/v;->u:Z

    new-instance p2, LB3/c;

    const/16 p4, 0x10

    invoke-direct {p2, p0, p4, p3}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->d(Lc3/a;)Lg4/h;

    iput-object p3, p0, Lu3/S;->I:Lu3/k;

    return-void
.end method


# virtual methods
.method public final bridge synthetic P0()Lr3/k;
    .locals 0

    invoke-virtual {p0}, Lu3/S;->b1()Lu3/P;

    move-result-object p0

    return-object p0
.end method

.method public final S0(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/v;
    .locals 8

    const-string p2, "newOwner"

    invoke-static {p2, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "kind"

    invoke-static {p1, p2}, LB/f;->x(ILjava/lang/String;)V

    const-string p2, "annotations"

    invoke-static {p2, p6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x1

    if-eq p1, v6, :cond_0

    const/4 p2, 0x4

    :cond_0
    new-instance p1, Lu3/S;

    iget-object v3, p0, Lu3/S;->I:Lu3/k;

    iget-object v1, p0, Lu3/S;->G:Lg4/o;

    iget-object v2, p0, Lu3/S;->H:Lf4/t;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p6

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lu3/S;-><init>(Lg4/o;Lf4/t;Lu3/k;Lu3/P;Ls3/h;ILr3/N;)V

    return-object p1
.end method

.method public final V()Z
    .locals 0

    iget-object p0, p0, Lu3/S;->I:Lu3/k;

    iget-boolean p0, p0, Lu3/k;->G:Z

    return p0
.end method

.method public final Y()Lr3/e;
    .locals 1

    iget-object p0, p0, Lu3/S;->I:Lu3/k;

    invoke-virtual {p0}, Lu3/k;->Y()Lr3/e;

    move-result-object p0

    const-string v0, "underlyingConstructorDescriptor.constructedClass"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/b;
    .locals 0

    invoke-virtual {p0}, Lu3/S;->b1()Lu3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/c;
    .locals 0

    invoke-virtual {p0}, Lu3/S;->b1()Lu3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/j;
    .locals 0

    invoke-virtual {p0}, Lu3/S;->b1()Lu3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/s;
    .locals 0

    invoke-virtual {p0}, Lu3/S;->b1()Lu3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Lh4/V;)Lr3/k;
    .locals 0

    invoke-virtual {p0, p1}, Lu3/S;->c1(Lh4/V;)Lu3/S;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Lh4/V;)Lr3/s;
    .locals 0

    invoke-virtual {p0, p1}, Lu3/S;->c1(Lh4/V;)Lu3/S;

    move-result-object p0

    return-object p0
.end method

.method public final b1()Lu3/P;
    .locals 1

    invoke-super {p0}, Lu3/v;->a()Lr3/s;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lu3/P;

    return-object p0
.end method

.method public final c1(Lh4/V;)Lu3/S;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lu3/v;->b(Lh4/V;)Lr3/s;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    invoke-static {v0, p1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lu3/S;

    iget-object v0, p1, Lu3/v;->i:Lh4/v;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lh4/V;->d(Lh4/v;)Lh4/V;

    move-result-object v0

    iget-object p0, p0, Lu3/S;->I:Lu3/k;

    invoke-virtual {p0}, Lu3/k;->d1()Lu3/k;

    move-result-object p0

    invoke-virtual {p0, v0}, Lu3/k;->g1(Lh4/V;)Lu3/k;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput-object p0, p1, Lu3/S;->I:Lu3/k;

    return-object p1
.end method

.method public final l()Lr3/h;
    .locals 0

    iget-object p0, p0, Lu3/S;->H:Lf4/t;

    return-object p0
.end method

.method public final l()Lr3/j;
    .locals 0

    iget-object p0, p0, Lu3/S;->H:Lf4/t;

    return-object p0
.end method

.method public final n()Lh4/v;
    .locals 0

    iget-object p0, p0, Lu3/v;->i:Lh4/v;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final x0(Lr3/j;ILA3/p;)Lr3/c;
    .locals 2

    const-string v0, "newOwner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "modality"

    invoke-static {p2, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    const/4 v1, 0x2

    invoke-static {v1, v0}, LB/f;->x(ILjava/lang/String;)V

    sget-object v0, Lh4/V;->b:Lh4/V;

    invoke-virtual {p0, v0}, Lu3/v;->W0(Lh4/V;)Lu3/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Lu3/u;->u(Lr3/j;)Lr3/r;

    invoke-virtual {p0, p2}, Lu3/u;->z(I)Lr3/r;

    invoke-virtual {p0, p3}, Lu3/u;->B(LA3/p;)Lr3/r;

    invoke-virtual {p0, v1}, Lu3/u;->a(I)Lr3/r;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu3/u;->o:Z

    iget-object p1, p0, Lu3/u;->z:Lu3/v;

    invoke-virtual {p1, p0}, Lu3/v;->T0(Lu3/u;)Lu3/v;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {p1, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lu3/P;

    return-object p0
.end method

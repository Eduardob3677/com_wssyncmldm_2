.class public final Ll3/m;
.super Ll3/r0;
.source "SourceFile"


# instance fields
.field public final d:Lr3/K;

.field public final e:LL3/G;

.field public final f:LO3/e;

.field public final g:LN3/f;

.field public final h:Ls2/c;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr3/K;LL3/G;LO3/e;LN3/f;Ls2/c;)V
    .locals 2

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/m;->d:Lr3/K;

    iput-object p2, p0, Ll3/m;->e:LL3/G;

    iput-object p3, p0, Ll3/m;->f:LO3/e;

    iput-object p4, p0, Ll3/m;->g:LN3/f;

    iput-object p5, p0, Ll3/m;->h:Ls2/c;

    iget v0, p3, LO3/e;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object p1, p3, LO3/e;->g:LO3/c;

    iget p1, p1, LO3/c;->e:I

    invoke-interface {p4, p1}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p3, LO3/e;->g:LO3/c;

    iget p2, p2, LO3/c;->f:I

    invoke-interface {p4, p2}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    const/4 p3, 0x1

    invoke-static {p2, p4, p5, p3}, LP3/h;->b(LL3/G;LN3/f;Ls2/c;Z)LP3/d;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p2, LP3/d;->b:Ljava/lang/String;

    invoke-static {p5}, LA3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p5

    const-string v0, "descriptor.containingDeclaration"

    invoke-static {v0, p5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/w;->c()LA3/p;

    move-result-object v0

    sget-object v1, Lr3/n;->d:LA3/p;

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "$"

    if-eqz v0, :cond_2

    instance-of v0, p5, Lf4/i;

    if-eqz v0, :cond_2

    check-cast p5, Lf4/i;

    sget-object p1, LO3/k;->i:LR3/p;

    const-string v0, "classModuleName"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p5, p5, Lf4/i;->g:LL3/j;

    invoke-static {p5, p1}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "main"

    :goto_0
    sget-object p4, LQ3/g;->a:LQ2/a;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p4, LQ2/a;->d:Ljava/lang/Object;

    check-cast p4, Ljava/util/regex/Pattern;

    invoke-virtual {p4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p4, "_"

    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {p4, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lr3/w;->c()LA3/p;

    move-result-object p4

    sget-object v0, Lr3/n;->a:LA3/p;

    invoke-static {p4, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    instance-of p4, p5, Lr3/C;

    if-eqz p4, :cond_3

    check-cast p1, Lf4/r;

    iget-object p1, p1, Lf4/r;->H:Lf4/j;

    instance-of p4, p1, LJ3/h;

    if-eqz p4, :cond_3

    check-cast p1, LJ3/h;

    iget-object p4, p1, LJ3/h;->c:LY3/b;

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LJ3/h;->b:LY3/b;

    invoke-virtual {p1}, LY3/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string p5, "className.internalName"

    invoke-static {p5, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p5, 0x2f

    invoke-static {p1, p5}, Ls4/h;->u(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    invoke-virtual {p1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, LP3/d;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Ll3/m;->i:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, LQ2/d;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No field signature for property: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll3/m;->i:Ljava/lang/String;

    return-object p0
.end method

.class public abstract LE3/C;
.super La4/p;
.source "SourceFile"


# static fields
.field public static final synthetic m:[Li3/o;


# instance fields
.field public final b:LD3/e;

.field public final c:LE3/C;

.field public final d:Lg4/c;

.field public final e:Lg4/i;

.field public final f:Lg4/e;

.field public final g:Lg4/j;

.field public final h:Lg4/e;

.field public final i:Lg4/i;

.field public final j:Lg4/i;

.field public final k:Lg4/i;

.field public final l:Lg4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, LE3/C;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "functionNamesLazy"

    const-string v5, "getFunctionNamesLazy()Ljava/util/Set;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v4

    const-string v5, "propertyNamesLazy"

    const-string v6, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-direct {v3, v4, v5, v6}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v3

    new-instance v4, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v5, "classNamesLazy"

    const-string v6, "getClassNamesLazy()Ljava/util/Set;"

    invoke-direct {v4, v2, v5, v6}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Li3/o;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, LE3/C;->m:[Li3/o;

    return-void
.end method

.method public constructor <init>(LD3/e;LE3/C;)V
    .locals 2

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/C;->b:LD3/e;

    iput-object p2, p0, LE3/C;->c:LE3/C;

    iget-object p1, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p2, p1, LD3/a;->a:Lg4/o;

    new-instance v0, LE3/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LE3/z;-><init>(LE3/C;I)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/c;

    invoke-direct {v1, p2, v0}, Lg4/c;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, LE3/C;->d:Lg4/c;

    new-instance p2, LE3/z;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LE3/z;-><init>(LE3/C;I)V

    iget-object p1, p1, LD3/a;->a:Lg4/o;

    move-object v0, p1

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/i;

    invoke-direct {v1, v0, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, LE3/C;->e:Lg4/i;

    new-instance p2, LE3/A;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LE3/A;-><init>(LE3/C;I)V

    move-object v0, p1

    check-cast v0, Lg4/l;

    invoke-virtual {v0, p2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p2

    iput-object p2, p0, LE3/C;->f:Lg4/e;

    new-instance p2, LE3/A;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LE3/A;-><init>(LE3/C;I)V

    move-object v0, p1

    check-cast v0, Lg4/l;

    invoke-virtual {v0, p2}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p2

    iput-object p2, p0, LE3/C;->g:Lg4/j;

    new-instance p2, LE3/A;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LE3/A;-><init>(LE3/C;I)V

    move-object v0, p1

    check-cast v0, Lg4/l;

    invoke-virtual {v0, p2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p2

    iput-object p2, p0, LE3/C;->h:Lg4/e;

    new-instance p2, LE3/z;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LE3/z;-><init>(LE3/C;I)V

    move-object v0, p1

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/i;

    invoke-direct {v1, v0, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, LE3/C;->i:Lg4/i;

    new-instance p2, LE3/z;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, LE3/z;-><init>(LE3/C;I)V

    move-object v0, p1

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/i;

    invoke-direct {v1, v0, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, LE3/C;->j:Lg4/i;

    new-instance p2, LE3/z;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LE3/z;-><init>(LE3/C;I)V

    move-object v0, p1

    check-cast v0, Lg4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/i;

    invoke-direct {v1, v0, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, LE3/C;->k:Lg4/i;

    new-instance p2, LE3/A;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LE3/A;-><init>(LE3/C;I)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p1

    iput-object p1, p0, LE3/C;->l:Lg4/e;

    return-void
.end method

.method public static l(Lx3/x;LD3/e;)Lh4/v;
    .locals 5

    const-string v0, "method"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lx3/x;->a()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "member.declaringClass"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-static {v3, v0, v1, v2, v4}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v0

    invoke-virtual {p0}, Lx3/x;->e()Lx3/B;

    move-result-object p0

    iget-object p1, p1, LD3/e;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/messaging/p;

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object p0

    return-object p0
.end method

.method public static u(LD3/e;Lu3/v;Ljava/util/List;)LB1/c;
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, LR2/m;->k1(Ljava/util/List;)LR2/k;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, LR2/k;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    move-object v5, v1

    check-cast v5, LR2/y;

    iget-object v6, v5, LR2/y;->d:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, LR2/y;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR2/x;

    iget v9, v5, LR2/x;->a:I

    iget-object v5, v5, LR2/x;->b:Ljava/lang/Object;

    check-cast v5, Lx3/D;

    invoke-static {v0, v5}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object v10

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v6, v3, v3, v8, v7}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v6

    iget-boolean v7, v5, Lx3/D;->d:Z

    const/4 v11, 0x1

    iget-object v12, v0, LD3/e;->h:Ljava/lang/Object;

    check-cast v12, Lcom/google/firebase/messaging/p;

    iget-object v13, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v13, LD3/a;

    iget-object v14, v5, Lx3/D;->a:Lx3/B;

    if-eqz v7, :cond_2

    instance-of v7, v14, Lx3/i;

    if-eqz v7, :cond_0

    check-cast v14, Lx3/i;

    goto :goto_1

    :cond_0
    move-object v14, v8

    :goto_1
    if-eqz v14, :cond_1

    invoke-virtual {v12, v14, v6, v11}, Lcom/google/firebase/messaging/p;->I(Lx3/i;LF3/a;Z)Lh4/Z;

    move-result-object v6

    iget-object v7, v13, LD3/a;->o:Lr3/x;

    invoke-interface {v7}, Lr3/x;->g()Lo3/i;

    move-result-object v7

    invoke-virtual {v7, v6}, Lo3/i;->f(Lh4/v;)Lh4/v;

    move-result-object v7

    new-instance v12, LQ2/e;

    invoke-direct {v12, v6, v7}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Vararg parameter should be an array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v12, v14, v6}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v6

    new-instance v12, LQ2/e;

    invoke-direct {v12, v6, v8}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v6, v12, LQ2/e;->c:Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Lh4/v;

    iget-object v6, v12, LQ2/e;->d:Ljava/lang/Object;

    move-object/from16 v16, v6

    check-cast v16, Lh4/v;

    invoke-virtual/range {p1 .. p1}, Lu3/o;->getName()LQ3/f;

    move-result-object v6

    invoke-virtual {v6}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "equals"

    invoke-static {v6, v7}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v11, :cond_3

    iget-object v6, v13, LD3/a;->o:Lr3/x;

    invoke-interface {v6}, Lr3/x;->g()Lo3/i;

    move-result-object v6

    invoke-virtual {v6}, Lo3/i;->o()Lh4/z;

    move-result-object v6

    invoke-static {v6, v14}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "other"

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    :goto_3
    move-object v11, v6

    goto :goto_4

    :cond_3
    iget-object v6, v5, Lx3/D;->c:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {v6}, LQ3/f;->d(Ljava/lang/String;)LQ3/f;

    move-result-object v8

    :cond_4
    if-nez v8, :cond_5

    move v4, v11

    :cond_5
    if-nez v8, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v11, v8

    :goto_4
    new-instance v15, Lu3/V;

    iget-object v6, v13, LD3/a;->j:Lw3/d;

    invoke-virtual {v6, v5}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v17

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object/from16 v7, p1

    move-object v12, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v18

    invoke-direct/range {v6 .. v17}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LB1/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v4, v2}, LB1/c;-><init>(Ljava/lang/Object;ZI)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LE3/C;->i:Lg4/i;

    sget-object v0, LE3/C;->m:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LE3/C;->j:Lg4/i;

    sget-object v0, LE3/C;->m:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LE3/C;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0

    :cond_0
    iget-object p0, p0, LE3/C;->h:Lg4/e;

    invoke-virtual {p0, p1}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LE3/C;->k:Lg4/i;

    sget-object v0, LE3/C;->m:[Li3/o;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "nameFilter"

    invoke-static {p1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LE3/C;->d:Lg4/c;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LE3/C;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0

    :cond_0
    iget-object p0, p0, LE3/C;->l:Lg4/e;

    invoke-virtual {p0, p1}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public abstract h(La4/f;La4/l;)Ljava/util/Set;
.end method

.method public abstract i(La4/f;La4/l;)Ljava/util/Set;
.end method

.method public j(LQ3/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract k()LE3/c;
.end method

.method public abstract m(Ljava/util/LinkedHashSet;LQ3/f;)V
.end method

.method public abstract n(LQ3/f;Ljava/util/ArrayList;)V
.end method

.method public abstract o(La4/f;)Ljava/util/Set;
.end method

.method public abstract p()Lu3/w;
.end method

.method public abstract q()Lr3/j;
.end method

.method public r(LC3/f;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract s(Lx3/x;Ljava/util/ArrayList;Lh4/v;Ljava/util/List;)LE3/y;
.end method

.method public final t(Lx3/x;)LC3/f;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "method"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, LE3/C;->b:LD3/e;

    invoke-static {v2, v1}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, LE3/C;->q()Lr3/j;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lx3/w;->b()LQ3/f;

    move-result-object v5

    iget-object v6, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast v6, LD3/a;

    iget-object v6, v6, LD3/a;->j:Lw3/d;

    invoke-virtual {v6, v1}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v6

    iget-object v7, v0, LE3/C;->e:Lg4/i;

    invoke-virtual {v7}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LE3/c;

    invoke-virtual/range {p1 .. p1}, Lx3/w;->b()LQ3/f;

    move-result-object v8

    invoke-interface {v7, v8}, LE3/c;->a(LQ3/f;)Lx3/A;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lx3/x;->f()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    invoke-static {v4, v3, v5, v6, v7}, LC3/f;->f1(Lr3/j;LD3/c;LQ3/f;Lw3/f;Z)LC3/f;

    move-result-object v3

    const-string v4, "<this>"

    invoke-static {v4, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, LD3/f;

    invoke-direct {v4, v2, v3, v1, v9}, LD3/f;-><init>(LD3/e;Lr3/j;LH3/e;I)V

    new-instance v5, LD3/e;

    iget-object v6, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast v6, LD3/a;

    iget-object v2, v2, LD3/e;->f:Ljava/lang/Object;

    check-cast v2, LQ2/c;

    invoke-direct {v5, v6, v4, v2}, LD3/e;-><init>(LD3/a;LD3/g;LQ2/c;)V

    invoke-virtual/range {p1 .. p1}, Lx3/x;->u()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx3/C;

    iget-object v7, v5, LD3/e;->e:Ljava/lang/Object;

    check-cast v7, LD3/g;

    invoke-interface {v7, v6}, LD3/g;->a(Lx3/C;)Lr3/Q;

    move-result-object v6

    invoke-static {v6}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lx3/x;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v3, v2}, LE3/C;->u(LD3/e;Lu3/v;Ljava/util/List;)LB1/c;

    move-result-object v2

    invoke-static {v1, v5}, LE3/C;->l(Lx3/x;LD3/e;)Lh4/v;

    move-result-object v6

    iget-object v7, v2, LB1/c;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v1, v4, v6, v7}, LE3/C;->s(Lx3/x;Ljava/util/ArrayList;Lh4/v;Ljava/util/List;)LE3/y;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, LE3/C;->p()Lu3/w;

    move-result-object v12

    sget-object v13, LR2/u;->c:LR2/u;

    invoke-virtual/range {p1 .. p1}, Lx3/x;->a()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lx3/x;->a()Ljava/lang/reflect/Member;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    move/from16 v17, v0

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    move/from16 v17, v8

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lx3/w;->d()Lr3/f0;

    move-result-object v0

    invoke-static {v0}, LL2/b;->O(Lr3/f0;)LA3/p;

    move-result-object v18

    sget-object v19, LR2/v;->c:LR2/v;

    iget-object v15, v4, LE3/y;->b:Ljava/util/List;

    iget-object v0, v4, LE3/y;->a:Lh4/v;

    const/4 v11, 0x0

    iget-object v14, v4, LE3/y;->c:Ljava/util/List;

    move-object v10, v3

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v19}, LC3/f;->e1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;LR2/v;)Lu3/N;

    iget-boolean v0, v2, LB1/c;->d:Z

    invoke-virtual {v3, v9, v0}, LC3/f;->g1(ZZ)V

    iget-object v0, v4, LE3/y;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v8

    if-nez v0, :cond_4

    return-object v3

    :cond_4
    iget-object v0, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->e:LB3/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LE3/C;->q()Lr3/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

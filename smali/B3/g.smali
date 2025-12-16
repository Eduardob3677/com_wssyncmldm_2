.class public abstract LB3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, LQ2/e;

    const-string v2, "PACKAGE"

    invoke-direct {v1, v2, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->e:Ls3/n;

    sget-object v2, Ls3/n;->q:Ls3/n;

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v2, LQ2/e;

    const-string v3, "TYPE"

    invoke-direct {v2, v3, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->f:Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v3, LQ2/e;

    const-string v4, "ANNOTATION_TYPE"

    invoke-direct {v3, v4, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->g:Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v4, LQ2/e;

    const-string v5, "TYPE_PARAMETER"

    invoke-direct {v4, v5, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->i:Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v5, LQ2/e;

    const-string v6, "FIELD"

    invoke-direct {v5, v6, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->j:Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v6, LQ2/e;

    const-string v7, "LOCAL_VARIABLE"

    invoke-direct {v6, v7, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->k:Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v7, LQ2/e;

    const-string v8, "PARAMETER"

    invoke-direct {v7, v8, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->l:Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v8, LQ2/e;

    const-string v9, "CONSTRUCTOR"

    invoke-direct {v8, v9, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->m:Ls3/n;

    sget-object v9, Ls3/n;->n:Ls3/n;

    sget-object v10, Ls3/n;->o:Ls3/n;

    invoke-static {v0, v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v9, LQ2/e;

    const-string v10, "METHOD"

    invoke-direct {v9, v10, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/n;->p:Ls3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v10, LQ2/e;

    const-string v11, "TYPE_USE"

    invoke-direct {v10, v11, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v10}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LB3/g;->a:Ljava/util/Map;

    sget-object v0, Ls3/m;->c:Ls3/m;

    new-instance v1, LQ2/e;

    const-string v2, "RUNTIME"

    invoke-direct {v1, v2, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/m;->d:Ls3/m;

    new-instance v2, LQ2/e;

    const-string v3, "CLASS"

    invoke-direct {v2, v3, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ls3/m;->e:Ls3/m;

    new-instance v3, LQ2/e;

    const-string v4, "SOURCE"

    invoke-direct {v3, v4, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LB3/g;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/util/List;)LV3/b;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lx3/t;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx3/t;

    iget-object v1, v1, Lx3/t;->b:Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v1

    invoke-virtual {v1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LB3/g;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, LR2/w;->c:LR2/w;

    :goto_2
    invoke-static {p0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/n;

    new-instance v2, LV3/i;

    sget-object v3, Lo3/m;->u:LQ3/c;

    invoke-static {v3}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v1

    invoke-direct {v2, v3, v1}, LV3/i;-><init>(LQ3/b;LQ3/f;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance p0, LV3/b;

    sget-object v1, LB3/f;->d:LB3/f;

    invoke-direct {p0, v0, v1}, LV3/b;-><init>(Ljava/util/List;Lc3/b;)V

    return-object p0
.end method

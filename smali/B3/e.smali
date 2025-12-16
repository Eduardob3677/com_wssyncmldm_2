.class public abstract LB3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/f;

.field public static final b:LQ3/f;

.field public static final c:LQ3/f;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "message"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, LB3/e;->a:LQ3/f;

    const-string v0, "allowedTargets"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, LB3/e;->b:LQ3/f;

    const-string v0, "value"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, LB3/e;->c:LQ3/f;

    sget-object v0, Lo3/m;->t:LQ3/c;

    sget-object v1, LA3/z;->c:LQ3/c;

    new-instance v2, LQ2/e;

    invoke-direct {v2, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lo3/m;->w:LQ3/c;

    sget-object v1, LA3/z;->d:LQ3/c;

    new-instance v3, LQ2/e;

    invoke-direct {v3, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lo3/m;->x:LQ3/c;

    sget-object v1, LA3/z;->f:LQ3/c;

    new-instance v4, LQ2/e;

    invoke-direct {v4, v0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LB3/e;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(LQ3/c;LH3/b;LD3/e;)LC3/h;
    .locals 2

    const-string v0, "kotlinName"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "annotationOwner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "c"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lo3/m;->m:LQ3/c;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LA3/z;->e:LQ3/c;

    const-string v1, "DEPRECATED_ANNOTATION"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LH3/b;->v(LQ3/c;)Lx3/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LB3/i;

    invoke-direct {p0, v0, p2}, LB3/i;-><init>(Lx3/e;LD3/e;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, LB3/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ3/c;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, LH3/b;->v(LQ3/c;)Lx3/e;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, LB3/e;->b(LD3/e;Lx3/e;Z)LC3/h;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static b(LD3/e;Lx3/e;Z)LC3/h;
    .locals 2

    const-string v0, "annotation"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "c"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lx3/e;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v0

    invoke-static {v0}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v0

    sget-object v1, LA3/z;->c:LQ3/c;

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, LB3/m;

    invoke-direct {p2, p1, p0}, LB3/m;-><init>(Lx3/e;LD3/e;)V

    goto :goto_0

    :cond_0
    sget-object v1, LA3/z;->d:LQ3/c;

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, LB3/l;

    invoke-direct {p2, p1, p0}, LB3/l;-><init>(Lx3/e;LD3/e;)V

    goto :goto_0

    :cond_1
    sget-object v1, LA3/z;->f:LQ3/c;

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, LB3/d;

    sget-object v0, Lo3/m;->x:LQ3/c;

    invoke-direct {p2, p0, p1, v0}, LB3/d;-><init>(LD3/e;Lx3/e;LQ3/c;)V

    goto :goto_0

    :cond_2
    sget-object v1, LA3/z;->e:LQ3/c;

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, LE3/f;

    invoke-direct {v0, p0, p1, p2}, LE3/f;-><init>(LD3/e;Lx3/e;Z)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method

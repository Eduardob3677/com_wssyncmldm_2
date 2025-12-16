.class public final LE3/F;
.super Lq4/k;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lr3/e;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lc3/b;


# direct methods
.method public constructor <init>(LC3/c;Ljava/util/Set;Lc3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/F;->b:Lr3/e;

    iput-object p2, p0, LE3/F;->c:Ljava/util/Set;

    iput-object p3, p0, LE3/F;->d:Lc3/b;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lr3/e;

    const-string v0, "current"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LE3/F;->b:Lr3/e;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lr3/e;->X()La4/o;

    move-result-object p1

    const-string v0, "current.staticScope"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, LE3/H;

    if-eqz v0, :cond_1

    iget-object v0, p0, LE3/F;->d:Lc3/b;

    invoke-interface {v0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object p0, p0, LE3/F;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final bridge synthetic j()Ljava/lang/Object;
    .locals 0

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

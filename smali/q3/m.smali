.class public final Lq3/m;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lq3/n;


# direct methods
.method public synthetic constructor <init>(Lq3/n;I)V
    .locals 0

    iput p2, p0, Lq3/m;->d:I

    iput-object p1, p0, Lq3/m;->e:Lq3/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lq3/m;->e:Lq3/n;

    iget p0, p0, Lq3/m;->d:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v0, Lq3/n;->a:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    sget-object v0, Ls3/e;->a:LQ3/f;

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ls3/j;

    sget-object v1, Lo3/m;->o:LQ3/c;

    new-instance v2, LV3/v;

    const-string v3, ""

    invoke-direct {v2, v3}, LV3/g;-><init>(Ljava/lang/Object;)V

    new-instance v3, LQ2/e;

    sget-object v4, Ls3/e;->d:LQ3/f;

    invoke-direct {v3, v4, v2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, LV3/b;

    sget-object v4, LR2/u;->c:LR2/u;

    new-instance v5, LA3/d;

    const/16 v6, 0x17

    invoke-direct {v5, v6, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v4, v5}, LV3/b;-><init>(Ljava/util/List;Lc3/b;)V

    new-instance v4, LQ2/e;

    sget-object v5, Ls3/e;->e:LQ3/f;

    invoke-direct {v4, v5, v2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4}, [LQ2/e;

    move-result-object v2

    invoke-static {v2}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ls3/j;-><init>(Lo3/i;LQ3/c;Ljava/util/Map;)V

    new-instance v1, Ls3/j;

    sget-object v2, Lo3/m;->m:LQ3/c;

    new-instance v3, LV3/v;

    const-string v4, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    invoke-direct {v3, v4}, LV3/g;-><init>(Ljava/lang/Object;)V

    new-instance v4, LQ2/e;

    sget-object v5, Ls3/e;->a:LQ3/f;

    invoke-direct {v4, v5, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LV3/a;

    invoke-direct {v3, v0}, LV3/g;-><init>(Ljava/lang/Object;)V

    new-instance v0, LQ2/e;

    sget-object v5, Ls3/e;->b:LQ3/f;

    invoke-direct {v0, v5, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LV3/i;

    sget-object v5, Lo3/m;->n:LQ3/c;

    invoke-static {v5}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v5

    const-string v6, "WARNING"

    invoke-static {v6}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v6

    invoke-direct {v3, v5, v6}, LV3/i;-><init>(LQ3/b;LQ3/f;)V

    new-instance v5, LQ2/e;

    sget-object v6, Ls3/e;->c:LQ3/f;

    invoke-direct {v5, v6, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v0, v5}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Ls3/j;-><init>(Lo3/i;LQ3/c;Ljava/util/Map;)V

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ls3/g;->a:Ls3/f;

    goto :goto_0

    :cond_0
    new-instance v0, Ls3/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ls3/i;-><init>(ILjava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, v0, Lq3/n;->a:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->e()Lh4/z;

    move-result-object p0

    const-string v0, "moduleDescriptor.builtIns.anyType"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

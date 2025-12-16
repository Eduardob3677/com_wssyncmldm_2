.class public final Lq3/a;
.super La4/h;
.source "SourceFile"


# static fields
.field public static final e:LQ3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "clone"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, Lq3/a;->e:LQ3/f;

    return-void
.end method


# virtual methods
.method public final h()Ljava/util/List;
    .locals 12

    sget-object v0, Lr3/N;->a:Lr3/M;

    sget-object v1, Lq3/a;->e:LQ3/f;

    iget-object p0, p0, La4/h;->b:Lr3/e;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lu3/N;->b1(Lr3/j;LQ3/f;ILr3/N;)Lu3/N;

    move-result-object v0

    invoke-interface {p0}, Lr3/e;->H0()Lu3/w;

    move-result-object v5

    sget-object v8, LR2/u;->c:LR2/u;

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->e()Lh4/z;

    move-result-object v9

    sget-object v11, Lr3/n;->c:LA3/p;

    const/4 v4, 0x0

    const/4 v10, 0x3

    move-object v3, v0

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v3 .. v11}, Lu3/N;->d1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)Lu3/N;

    invoke-static {v0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

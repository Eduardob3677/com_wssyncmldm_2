.class public final Li4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/k;


# instance fields
.field public final c:Li4/e;

.field public final d:LT3/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Li4/e;->c:Li4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li4/l;->c:Li4/e;

    new-instance v0, LT3/n;

    sget-object v1, LT3/n;->e:LT3/c;

    invoke-direct {v0, v1}, LT3/n;-><init>(Li4/c;)V

    iput-object v0, p0, Li4/l;->d:LT3/n;

    return-void
.end method


# virtual methods
.method public final a(Lh4/v;Lh4/v;)Z
    .locals 7

    const-string v0, "a"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "b"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Li4/f;->a:Li4/f;

    const/4 v3, 0x0

    iget-object v4, p0, Li4/l;->c:Li4/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lf1/a;->i(ZZLi4/e;Li4/e;Li4/f;I)Lh4/I;

    move-result-object p0

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    invoke-virtual {p2}, Lh4/v;->M0()Lh4/Z;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lh4/d;->g(Lh4/I;Lk4/c;Lk4/c;)Z

    move-result p0

    return p0
.end method

.method public final b(Lh4/v;Lh4/v;)Z
    .locals 7

    const-string v0, "subtype"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "supertype"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Li4/f;->a:Li4/f;

    const/4 v3, 0x0

    iget-object v4, p0, Li4/l;->c:Li4/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lf1/a;->i(ZZLi4/e;Li4/e;Li4/f;I)Lh4/I;

    move-result-object p0

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    invoke-virtual {p2}, Lh4/v;->M0()Lh4/Z;

    move-result-object p2

    sget-object v0, Lh4/d;->a:Lh4/d;

    invoke-static {v0, p0, p1, p2}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result p0

    return p0
.end method

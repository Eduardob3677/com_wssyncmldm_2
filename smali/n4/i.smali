.class public final Ln4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ3/f;

.field public final b:LQ2/a;

.field public final c:Ljava/util/Collection;

.field public final d:Lc3/b;

.field public final e:[Ln4/e;


# direct methods
.method public varargs constructor <init>(LQ3/f;LQ2/a;Ljava/util/Collection;Lc3/b;[Ln4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/i;->a:LQ3/f;

    iput-object p2, p0, Ln4/i;->b:LQ2/a;

    iput-object p3, p0, Ln4/i;->c:Ljava/util/Collection;

    iput-object p4, p0, Ln4/i;->d:Lc3/b;

    iput-object p5, p0, Ln4/i;->e:[Ln4/e;

    return-void
.end method

.method public synthetic constructor <init>(LQ3/f;[Ln4/e;)V
    .locals 1

    sget-object v0, Ln4/h;->e:Ln4/h;

    invoke-direct {p0, p1, p2, v0}, Ln4/i;-><init>(LQ3/f;[Ln4/e;Lc3/b;)V

    return-void
.end method

.method public constructor <init>(LQ3/f;[Ln4/e;Lc3/b;)V
    .locals 6

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "additionalChecks"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Ln4/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ln4/i;-><init>(LQ3/f;LQ2/a;Ljava/util/Collection;Lc3/b;[Ln4/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;[Ln4/e;Lc3/b;)V
    .locals 6

    const-string v0, "nameList"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "additionalChecks"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Ln4/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ln4/i;-><init>(LQ3/f;LQ2/a;Ljava/util/Collection;Lc3/b;[Ln4/e;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;[Ln4/e;)V
    .locals 1

    sget-object v0, Ln4/h;->g:Ln4/h;

    invoke-direct {p0, p1, p2, v0}, Ln4/i;-><init>(Ljava/util/Collection;[Ln4/e;Lc3/b;)V

    return-void
.end method

.class public final Ll3/f;
.super Ll3/r0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const-string v0, "jClass"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v0, "jClass.declaredMethods"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LF0/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LF0/b;-><init>(I)V

    invoke-static {p1, v0}, LR2/i;->v0([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ll3/f;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 6

    sget-object v4, Ll3/b;->g:Ll3/b;

    const-string v2, "<init>("

    const-string v3, ")V"

    iget-object v0, p0, Ll3/f;->d:Ljava/util/List;

    const-string v1, ""

    const/16 v5, 0x18

    invoke-static/range {v0 .. v5}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

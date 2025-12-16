.class public final LA3/g;
.super LA3/I;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Lr3/s;)Lr3/s;
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Lu3/o;

    invoke-virtual {v0}, Lu3/o;->getName()LQ3/f;

    move-result-object v0

    const-string v1, "functionDescriptor.name"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LA3/g;->b(LQ3/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, LA3/f;->e:LA3/f;

    invoke-static {p0, v0}, LX3/f;->b(Lr3/c;Lc3/b;)Lr3/c;

    move-result-object p0

    check-cast p0, Lr3/s;

    return-object p0
.end method

.method public static b(LQ3/f;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LA3/I;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

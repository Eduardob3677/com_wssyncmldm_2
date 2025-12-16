.class public final synthetic LX3/c;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final l:LX3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LX3/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/g;-><init>(I)V

    sput-object v0, LX3/c;->l:LX3/c;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu3/V;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lu3/V;->R0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "declaresDefaultValue"

    return-object p0
.end method

.method public final j()Li3/e;
    .locals 1

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, Lu3/V;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    const-string p0, "declaresDefaultValue()Z"

    return-object p0
.end method

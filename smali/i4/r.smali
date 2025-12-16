.class public abstract enum Li4/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Li4/p;

.field public static final enum d:Li4/n;

.field public static final enum e:Li4/q;

.field public static final enum f:Li4/o;

.field public static final synthetic g:[Li4/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Li4/p;

    invoke-direct {v0}, Li4/p;-><init>()V

    sput-object v0, Li4/r;->c:Li4/p;

    new-instance v1, Li4/n;

    invoke-direct {v1}, Li4/n;-><init>()V

    sput-object v1, Li4/r;->d:Li4/n;

    new-instance v2, Li4/q;

    invoke-direct {v2}, Li4/q;-><init>()V

    sput-object v2, Li4/r;->e:Li4/q;

    new-instance v3, Li4/o;

    invoke-direct {v3}, Li4/o;-><init>()V

    sput-object v3, Li4/r;->f:Li4/o;

    const/4 v4, 0x4

    new-array v4, v4, [Li4/r;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Li4/r;->g:[Li4/r;

    return-void
.end method

.method public static b(Lh4/Z;)Li4/r;
    .locals 7

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Li4/r;->d:Li4/n;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lh4/m;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lh4/m;

    :cond_1
    sget-object v3, Li4/e;->d:Li4/e;

    const/4 v2, 0x1

    const/16 v6, 0x18

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lf1/a;->i(ZZLi4/e;Li4/e;Li4/f;I)Lh4/I;

    move-result-object v0

    invoke-static {p0}, Lh4/c;->k(Lh4/v;)Lh4/z;

    move-result-object p0

    sget-object v1, Lh4/H;->b:Lh4/H;

    invoke-static {v0, p0, v1}, Lh4/c;->f(Lh4/I;Lk4/d;Lh4/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Li4/r;->f:Li4/o;

    goto :goto_0

    :cond_2
    sget-object p0, Li4/r;->e:Li4/q;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Li4/r;
    .locals 1

    const-class v0, Li4/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li4/r;

    return-object p0
.end method

.method public static values()[Li4/r;
    .locals 1

    sget-object v0, Li4/r;->g:[Li4/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li4/r;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lh4/Z;)Li4/r;
.end method

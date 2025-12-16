.class public abstract Lh4/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh4/P;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/P;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh4/S;->a:Lh4/P;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(Ls3/h;)Ls3/h;
    .locals 0

    const-string p0, "annotations"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public abstract d(Lh4/v;)Lh4/N;
.end method

.method public e()Z
    .locals 0

    instance-of p0, p0, Lh4/P;

    return p0
.end method

.method public f(ILh4/v;)Lh4/v;
    .locals 0

    const-string p0, "topLevelType"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "position"

    invoke-static {p1, p0}, LB/f;->x(ILjava/lang/String;)V

    return-object p2
.end method

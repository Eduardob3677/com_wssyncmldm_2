.class public final Lv3/a;
.super Lr3/f0;
.source "SourceFile"


# static fields
.field public static final c:Lv3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv3/a;

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr3/f0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lv3/a;->c:Lv3/a;

    return-void
.end method


# virtual methods
.method public final a(Lr3/f0;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lr3/e0;->a:LS2/e;

    sget-object p0, Lr3/Z;->c:Lr3/Z;

    if-eq p1, p0, :cond_2

    sget-object p0, Lr3/a0;->c:Lr3/a0;

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "public/*package*/"

    return-object p0
.end method

.method public final c()Lr3/f0;
    .locals 0

    sget-object p0, Lr3/b0;->c:Lr3/b0;

    return-object p0
.end method

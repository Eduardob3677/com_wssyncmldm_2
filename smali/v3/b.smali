.class public final Lv3/b;
.super Lr3/f0;
.source "SourceFile"


# static fields
.field public static final c:Lv3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv3/b;

    const-string v1, "protected_and_package"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr3/f0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lv3/b;->c:Lv3/b;

    return-void
.end method


# virtual methods
.method public final a(Lr3/f0;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lr3/W;->c:Lr3/W;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lr3/e0;->a:LS2/e;

    sget-object p0, Lr3/Z;->c:Lr3/Z;

    if-eq p1, p0, :cond_3

    sget-object p0, Lr3/a0;->c:Lr3/a0;

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    goto :goto_0

    :goto_2
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "protected/*protected and package*/"

    return-object p0
.end method

.method public final c()Lr3/f0;
    .locals 0

    sget-object p0, Lr3/b0;->c:Lr3/b0;

    return-object p0
.end method

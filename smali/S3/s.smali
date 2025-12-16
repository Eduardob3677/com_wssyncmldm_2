.class public abstract enum LS3/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:LS3/r;

.field public static final enum d:LS3/q;

.field public static final synthetic e:[LS3/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LS3/r;

    invoke-direct {v0}, LS3/r;-><init>()V

    sput-object v0, LS3/s;->c:LS3/r;

    new-instance v1, LS3/q;

    invoke-direct {v1}, LS3/q;-><init>()V

    sput-object v1, LS3/s;->d:LS3/q;

    const/4 v2, 0x2

    new-array v2, v2, [LS3/s;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, LS3/s;->e:[LS3/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS3/s;
    .locals 1

    const-class v0, LS3/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS3/s;

    return-object p0
.end method

.method public static values()[LS3/s;
    .locals 1

    sget-object v0, LS3/s;->e:[LS3/s;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS3/s;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

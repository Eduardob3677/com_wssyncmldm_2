.class public final enum LI3/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:LI3/f;

.field public static final enum d:LI3/f;

.field public static final synthetic e:[LI3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LI3/f;

    const-string v1, "READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI3/f;->c:LI3/f;

    new-instance v1, LI3/f;

    const-string v2, "MUTABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LI3/f;->d:LI3/f;

    filled-new-array {v0, v1}, [LI3/f;

    move-result-object v0

    sput-object v0, LI3/f;->e:[LI3/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LI3/f;
    .locals 1

    const-class v0, LI3/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LI3/f;

    return-object p0
.end method

.method public static values()[LI3/f;
    .locals 1

    sget-object v0, LI3/f;->e:[LI3/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LI3/f;

    return-object v0
.end method

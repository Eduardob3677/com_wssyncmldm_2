.class public final enum LT3/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:LT3/f;

.field public static final enum d:LT3/f;

.field public static final enum e:LT3/f;

.field public static final synthetic f:[LT3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LT3/f;

    const-string v1, "CONFLICTS_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT3/f;->c:LT3/f;

    new-instance v1, LT3/f;

    const-string v2, "SUCCESS_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LT3/f;->d:LT3/f;

    new-instance v2, LT3/f;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LT3/f;->e:LT3/f;

    filled-new-array {v0, v1, v2}, [LT3/f;

    move-result-object v0

    sput-object v0, LT3/f;->f:[LT3/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LT3/f;
    .locals 1

    const-class v0, LT3/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LT3/f;

    return-object p0
.end method

.method public static values()[LT3/f;
    .locals 1

    sget-object v0, LT3/f;->f:[LT3/f;

    invoke-virtual {v0}, [LT3/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT3/f;

    return-object v0
.end method

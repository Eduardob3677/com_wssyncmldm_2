.class public final enum LT3/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:LT3/g;

.field public static final enum d:LT3/g;

.field public static final enum e:LT3/g;

.field public static final synthetic f:[LT3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LT3/g;

    const-string v1, "OVERRIDABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT3/g;->c:LT3/g;

    new-instance v1, LT3/g;

    const-string v2, "CONFLICT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, LT3/g;

    const-string v3, "INCOMPATIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LT3/g;->d:LT3/g;

    new-instance v3, LT3/g;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LT3/g;->e:LT3/g;

    filled-new-array {v0, v1, v2, v3}, [LT3/g;

    move-result-object v0

    sput-object v0, LT3/g;->f:[LT3/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LT3/g;
    .locals 1

    const-class v0, LT3/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LT3/g;

    return-object p0
.end method

.method public static values()[LT3/g;
    .locals 1

    sget-object v0, LT3/g;->f:[LT3/g;

    invoke-virtual {v0}, [LT3/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT3/g;

    return-object v0
.end method

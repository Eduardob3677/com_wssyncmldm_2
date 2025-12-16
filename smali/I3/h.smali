.class public final enum LI3/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:LI3/h;

.field public static final enum d:LI3/h;

.field public static final enum e:LI3/h;

.field public static final synthetic f:[LI3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LI3/h;

    const-string v1, "FORCE_FLEXIBILITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI3/h;->c:LI3/h;

    new-instance v1, LI3/h;

    const-string v2, "NULLABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LI3/h;->d:LI3/h;

    new-instance v2, LI3/h;

    const-string v3, "NOT_NULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LI3/h;->e:LI3/h;

    filled-new-array {v0, v1, v2}, [LI3/h;

    move-result-object v0

    sput-object v0, LI3/h;->f:[LI3/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LI3/h;
    .locals 1

    const-class v0, LI3/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LI3/h;

    return-object p0
.end method

.method public static values()[LI3/h;
    .locals 1

    sget-object v0, LI3/h;->f:[LI3/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LI3/h;

    return-object v0
.end method

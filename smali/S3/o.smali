.class public final enum LS3/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:LS3/o;

.field public static final enum d:LS3/o;

.field public static final enum e:LS3/o;

.field public static final synthetic f:[LS3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LS3/o;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS3/o;->c:LS3/o;

    new-instance v1, LS3/o;

    const-string v2, "ONLY_NON_SYNTHESIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LS3/o;->d:LS3/o;

    new-instance v2, LS3/o;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LS3/o;->e:LS3/o;

    filled-new-array {v0, v1, v2}, [LS3/o;

    move-result-object v0

    sput-object v0, LS3/o;->f:[LS3/o;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS3/o;
    .locals 1

    const-class v0, LS3/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS3/o;

    return-object p0
.end method

.method public static values()[LS3/o;
    .locals 1

    sget-object v0, LS3/o;->f:[LS3/o;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS3/o;

    return-object v0
.end method

.class public final enum LA3/E;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:LA3/E;

.field public static final enum d:LA3/E;

.field public static final enum e:LA3/E;

.field public static final synthetic f:[LA3/E;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LA3/E;

    const/4 v1, 0x0

    const-string v2, "ignore"

    const-string v3, "IGNORE"

    invoke-direct {v0, v3, v1, v2}, LA3/E;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LA3/E;->c:LA3/E;

    new-instance v1, LA3/E;

    const/4 v2, 0x1

    const-string v3, "warn"

    const-string v4, "WARN"

    invoke-direct {v1, v4, v2, v3}, LA3/E;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LA3/E;->d:LA3/E;

    new-instance v2, LA3/E;

    const/4 v3, 0x2

    const-string v4, "strict"

    const-string v5, "STRICT"

    invoke-direct {v2, v5, v3, v4}, LA3/E;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LA3/E;->e:LA3/E;

    filled-new-array {v0, v1, v2}, [LA3/E;

    move-result-object v0

    sput-object v0, LA3/E;->f:[LA3/E;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LA3/E;
    .locals 1

    const-class v0, LA3/E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LA3/E;

    return-object p0
.end method

.method public static values()[LA3/E;
    .locals 1

    sget-object v0, LA3/E;->f:[LA3/E;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LA3/E;

    return-object v0
.end method

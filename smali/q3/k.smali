.class public final enum Lq3/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lq3/k;

.field public static final enum d:Lq3/k;

.field public static final enum e:Lq3/k;

.field public static final enum f:Lq3/k;

.field public static final synthetic g:[Lq3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lq3/k;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq3/k;->c:Lq3/k;

    new-instance v1, Lq3/k;

    const-string v2, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq3/k;->d:Lq3/k;

    new-instance v2, Lq3/k;

    const-string v3, "NOT_CONSIDERED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lq3/k;->e:Lq3/k;

    new-instance v3, Lq3/k;

    const-string v4, "DROP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq3/k;->f:Lq3/k;

    filled-new-array {v0, v1, v2, v3}, [Lq3/k;

    move-result-object v0

    sput-object v0, Lq3/k;->g:[Lq3/k;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq3/k;
    .locals 1

    const-class v0, Lq3/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq3/k;

    return-object p0
.end method

.method public static values()[Lq3/k;
    .locals 1

    sget-object v0, Lq3/k;->g:[Lq3/k;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq3/k;

    return-object v0
.end method

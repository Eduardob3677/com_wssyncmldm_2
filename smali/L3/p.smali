.class public final enum LL3/p;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LR3/r;


# static fields
.field public static final enum d:LL3/p;

.field public static final enum e:LL3/p;

.field public static final enum f:LL3/p;

.field public static final synthetic g:[LL3/p;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LL3/p;

    const-string v1, "RETURNS_CONSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LL3/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, LL3/p;->d:LL3/p;

    new-instance v1, LL3/p;

    const-string v2, "CALLS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LL3/p;-><init>(Ljava/lang/String;II)V

    sput-object v1, LL3/p;->e:LL3/p;

    new-instance v2, LL3/p;

    const-string v3, "RETURNS_NOT_NULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LL3/p;-><init>(Ljava/lang/String;II)V

    sput-object v2, LL3/p;->f:LL3/p;

    filled-new-array {v0, v1, v2}, [LL3/p;

    move-result-object v0

    sput-object v0, LL3/p;->g:[LL3/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LL3/p;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LL3/p;
    .locals 1

    const-class v0, LL3/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LL3/p;

    return-object p0
.end method

.method public static values()[LL3/p;
    .locals 1

    sget-object v0, LL3/p;->g:[LL3/p;

    invoke-virtual {v0}, [LL3/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LL3/p;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, LL3/p;->c:I

    return p0
.end method

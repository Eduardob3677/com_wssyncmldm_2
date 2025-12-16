.class public final enum Lr2/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq1/k;


# static fields
.field public static final enum d:Lr2/b;

.field public static final enum e:Lr2/b;

.field public static final synthetic f:[Lr2/b;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lr2/b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lr2/b;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lr2/b;

    const-string v2, "DATA_MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lr2/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr2/b;->d:Lr2/b;

    new-instance v2, Lr2/b;

    const-string v3, "TOPIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lr2/b;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lr2/b;

    const-string v4, "DISPLAY_NOTIFICATION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lr2/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lr2/b;->e:Lr2/b;

    filled-new-array {v0, v1, v2, v3}, [Lr2/b;

    move-result-object v0

    sput-object v0, Lr2/b;->f:[Lr2/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lr2/b;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr2/b;
    .locals 1

    const-class v0, Lr2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr2/b;

    return-object p0
.end method

.method public static values()[Lr2/b;
    .locals 1

    sget-object v0, Lr2/b;->f:[Lr2/b;

    invoke-virtual {v0}, [Lr2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr2/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lr2/b;->c:I

    return p0
.end method

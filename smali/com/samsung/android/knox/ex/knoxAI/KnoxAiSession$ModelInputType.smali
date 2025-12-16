.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelInputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

.field public static final enum BUFFER:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

.field public static final enum FD:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

.field public static final enum FILEPATH:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    const-string v1, "BUFFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;->BUFFER:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    const-string v2, "FD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;->FD:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    new-instance v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    const-string v3, "FILEPATH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;->FILEPATH:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

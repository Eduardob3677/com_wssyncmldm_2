.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

.field public static final enum NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

.field public static final enum NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    const-string v1, "NCHW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    const-string v2, "NHWC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

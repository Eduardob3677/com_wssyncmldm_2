.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum CPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum DSP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum GPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum NPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->CPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v2, "DSP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->DSP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    new-instance v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v3, "GPU"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->GPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    new-instance v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v4, "NPU"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->NPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

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

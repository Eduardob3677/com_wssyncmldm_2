.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

.field public static final enum DEBUG:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

.field public static final enum RELEASE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->DEBUG:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    const-string v2, "RELEASE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->RELEASE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

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

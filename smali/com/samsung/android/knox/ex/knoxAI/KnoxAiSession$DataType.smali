.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v2, "FLOAT16"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v3, "FLOAT32"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v4, "INT64"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v5, "SEQUENCE_MAP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v6, "STRING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

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

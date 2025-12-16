.class public final enum Lcom/samsung/android/lib/episode/SceneResult$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/episode/SceneResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/lib/episode/SceneResult$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum DEFAULT_VALUE:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum DEVICE_TYPE_MISMATCH:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum FAST_TRACK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum NO_PERMISSION:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum STORAGE_FULL:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum TEMPORARY_BLOCK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum UNKNOWN_ERROR:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;


# instance fields
.field private mErrorReasonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v1, "FAST_TRACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->FAST_TRACK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v2, "INVALID_DATA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v3, "STORAGE_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->STORAGE_FULL:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v3, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v4, "UNKNOWN_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->UNKNOWN_ERROR:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v4, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v5, "DEFAULT_VALUE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEFAULT_VALUE:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v5, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v6, "NOT_SUPPORTED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v6, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v7, "NO_PERMISSION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v7}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NO_PERMISSION:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v7, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v8, "TEMPORARY_BLOCK"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v8}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->TEMPORARY_BLOCK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    new-instance v8, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v9, "DEVICE_TYPE_MISMATCH"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v9}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEVICE_TYPE_MISMATCH:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->$VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mReason:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mErrorReasonList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mErrorReasonList:Ljava/util/List;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult$ErrorType;
    .locals 1

    const-class v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->$VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    return-object v0
.end method


# virtual methods
.method public getErrorMessageReason()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mErrorReasonList:Ljava/util/List;

    return-object p0
.end method

.method public setErrorReason(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Eternal/SceneResult"

    const-string p1, "ErrorType.setErrorReason is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mErrorReasonList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setErrorReason(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mErrorReasonList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "Eternal/SceneResult"

    const-string p1, "ErrorType.setErrorReason is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mReason:Ljava/lang/String;

    return-object p0
.end method

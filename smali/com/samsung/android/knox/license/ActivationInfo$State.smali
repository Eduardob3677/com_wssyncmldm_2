.class public final enum Lcom/samsung/android/knox/license/ActivationInfo$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/ActivationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/ActivationInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/ActivationInfo$State;

.field public static final enum ACTIVE:Lcom/samsung/android/knox/license/ActivationInfo$State;

.field public static final enum EXPIRED:Lcom/samsung/android/knox/license/ActivationInfo$State;

.field public static final enum TERMINATED:Lcom/samsung/android/knox/license/ActivationInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/license/ActivationInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->ACTIVE:Lcom/samsung/android/knox/license/ActivationInfo$State;

    new-instance v1, Lcom/samsung/android/knox/license/ActivationInfo$State;

    const-string v2, "EXPIRED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/license/ActivationInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/license/ActivationInfo$State;->EXPIRED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    new-instance v2, Lcom/samsung/android/knox/license/ActivationInfo$State;

    const-string v3, "TERMINATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/license/ActivationInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/knox/license/ActivationInfo$State;->TERMINATED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/license/ActivationInfo$State;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->$VALUES:[Lcom/samsung/android/knox/license/ActivationInfo$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->$VALUES:[Lcom/samsung/android/knox/license/ActivationInfo$State;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/ActivationInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object v0
.end method

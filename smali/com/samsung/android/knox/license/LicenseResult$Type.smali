.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_ACTIVATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v1, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v2, "KLM_ACTIVATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v3, "KLM_DEACTIVATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v3, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v4, "UNDEFINED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

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

.method public static fromElmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object v0
.end method

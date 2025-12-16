.class public abstract enum Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "MetadataDownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

.field public static final enum FAILURE:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

.field public static final enum SUCCESS:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

.field public static final enum SUSPENDED:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

.field public static final enum TIMEOUT:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->SUCCESS:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    sget-object v1, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->FAILURE:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    sget-object v2, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->SUSPENDED:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    sget-object v3, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->TIMEOUT:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$1;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->SUCCESS:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$2;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->FAILURE:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$3;

    const-string v1, "SUSPENDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->SUSPENDED:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$4;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->TIMEOUT:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->$values()[Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->$VALUES:[Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->$VALUES:[Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    return-object v0
.end method


# virtual methods
.method public abstract throwIfNeeded()V
.end method

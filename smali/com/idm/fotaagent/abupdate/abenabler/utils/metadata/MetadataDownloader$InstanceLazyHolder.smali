.class Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$InstanceLazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLazyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$1;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$InstanceLazyHolder;->INSTANCE:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

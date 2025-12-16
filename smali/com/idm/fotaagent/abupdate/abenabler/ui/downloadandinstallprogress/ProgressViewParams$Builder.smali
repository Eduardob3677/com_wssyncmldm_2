.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private percent:Ljava/lang/Integer;

.field private final title:Ljava/lang/String;

.field private titleStyle:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->title:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->titleStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->percent:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$1;)V

    return-object v0
.end method

.method public withPercent(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->percent:Ljava/lang/Integer;

    return-object p0
.end method

.method public withTitleStyle(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->titleStyle:Ljava/lang/Integer;

    return-object p0
.end method

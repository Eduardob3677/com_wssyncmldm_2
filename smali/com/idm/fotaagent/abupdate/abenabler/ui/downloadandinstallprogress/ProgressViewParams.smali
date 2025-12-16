.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;
    }
.end annotation


# instance fields
.field private final percent:Ljava/lang/Integer;

.field private final title:Ljava/lang/String;

.field private final titleStyle:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->access$000(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->access$100(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->titleStyle:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->access$200(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->percent:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getPercent()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->percent:Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleStyle()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;->titleStyle:Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

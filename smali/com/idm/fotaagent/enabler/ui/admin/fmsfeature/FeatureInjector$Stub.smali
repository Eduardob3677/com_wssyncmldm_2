.class Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Stub;
.super Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public indexOfInjectedValue(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public inject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public restore(Ljava/lang/String;)V
    .locals 0

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void
.end method

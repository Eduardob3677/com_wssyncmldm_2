.class public Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;
.super Landroidx/lifecycle/Y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;
    }
.end annotation


# instance fields
.field private featureEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/Y;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;->featureEntries:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs loadFeatureEntriesFrom([Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;->featureEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;->featureEntries:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;->get(Ljava/lang/Class;)Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;->getFeatureInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;

    iget-object v5, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel;->featureEntries:Ljava/util/List;

    new-instance v6, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    invoke-virtual {v4}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;->getCandidateValues()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v8, v4, v2}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

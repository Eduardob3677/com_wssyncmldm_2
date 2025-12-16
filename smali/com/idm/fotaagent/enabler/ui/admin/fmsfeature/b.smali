.class public final synthetic Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/Serializable;

    sget p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

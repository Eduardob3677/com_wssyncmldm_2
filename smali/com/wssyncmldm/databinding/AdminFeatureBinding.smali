.class public abstract Lcom/wssyncmldm/databinding/AdminFeatureBinding;
.super Landroidx/databinding/v;
.source "SourceFile"


# instance fields
.field protected mFeature:Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/v;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0009

    invoke-static {p1, p0, v0}, Landroidx/databinding/v;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/wssyncmldm/databinding/AdminFeatureBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0009

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/AdminFeatureBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d0009

    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;

    return-object p0
.end method


# virtual methods
.method public getFeature()Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->mFeature:Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;

    return-object p0
.end method

.method public abstract setFeature(Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;)V
.end method

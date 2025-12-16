.class public Lcom/samsung/android/lib/episode/SourceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDTDVersion:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mManufacturer:I

.field private mOSVersion:I

.field private mOneUIVersion:Ljava/lang/String;

.field private mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestFrom:I

.field private mRestoreViaFastTrack:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "deviceType"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string v0, "dtd_version"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const-string v0, "requestFrom"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    const-string v0, "fastTrack"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const-string v0, "OSVersion"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    const-string v0, "oneUIVersion"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    const-string v0, "packageList"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->decompressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/samsung/android/lib/episode/Scene;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;",
            "Lcom/samsung/android/lib/episode/Scene;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/episode/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v3, v2

    goto :goto_2

    :sswitch_0
    const-string v4, "/GeneralInfo/PackageList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v4, "/GeneralInfo/OSVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_2
    const-string v4, "/GeneralInfo/DeviceType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3
    const-string v4, "/GeneralInfo/OneUIVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->decompressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/Scene;->getValueInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const-string p1, "version"

    invoke-virtual {p2, p1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string p1, "dtd_version"

    invoke-virtual {p2, p1}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x493768da -> :sswitch_3
        -0x245d3828 -> :sswitch_2
        0x1257dc4c -> :sswitch_1
        0x2b6f29dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDTDVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public getManufacturer()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return p0
.end method

.method public getOSVersion()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    return p0
.end method

.method public getOneUIVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageIndex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getPackageList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public getRequestFrom()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public isRestoreViaFastTrack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    return p0
.end method

.method public setDTDVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return-void
.end method

.method public setOSVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    return-void
.end method

.method public setOneUIVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    return-void
.end method

.method public setPackageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    return-void
.end method

.method public setRequestFrom(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    return-void
.end method

.method public setRestoreViaFastTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

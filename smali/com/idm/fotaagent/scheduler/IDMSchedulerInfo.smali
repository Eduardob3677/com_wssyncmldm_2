.class public Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA:Ljava/lang/String; = "data"


# instance fields
.field private actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private index:J

.field private initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

.field private intent:Landroid/content/Intent;

.field private nPushType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo$1;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo$1;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;Lcom/idm/service/actioninfo/IDMActionInfo;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    iput-object p3, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    iput-object p4, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iput-object p5, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    iput p6, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    const-class v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    const-class v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    iget-wide v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    iget-wide v4, p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    iget v3, p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    iget-object v3, p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v3, p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getData()[B
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v0, "data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_1
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    iget-object v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v3, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    iget p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public idmGetActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    return-object p0
.end method

.method public idmGetIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    return-wide v0
.end method

.method public idmGetPushType()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    return p0
.end method

.method public idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    return-object p0
.end method

.method public idmSetActionInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    return-void
.end method

.method public idmSetIndex(J)V
    .locals 0

    iput-wide p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    return-void
.end method

.method public idmSetPushType(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    return-void
.end method

.method public idmSetSchedulerInitType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    return-void
.end method

.method public setData([B)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->execute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMSchedulerInfo{index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", initType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nPushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->index:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->initType:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->nPushType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

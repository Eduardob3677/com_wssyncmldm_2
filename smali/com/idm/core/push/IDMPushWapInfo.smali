.class public Lcom/idm/core/push/IDMPushWapInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private nBodyLen:I

.field private nContentType:I

.field private nHeaderLen:I

.field private nMACLen:I

.field private nSEC:I

.field private notiBody:[B

.field private szMAC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/core/push/IDMPushWapInfo$1;

    invoke-direct {v0}, Lcom/idm/core/push/IDMPushWapInfo$1;-><init>()V

    sput-object v0, Lcom/idm/core/push/IDMPushWapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/core/push/IDMPushWapInfo;->idmReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public idmPushWapGetBodyLen()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nBodyLen:I

    return p0
.end method

.method public idmPushWapGetContentType()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nContentType:I

    return p0
.end method

.method public idmPushWapGetHeaderLen()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nHeaderLen:I

    return p0
.end method

.method public idmPushWapGetMAC()[B
    .locals 0

    iget-object p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->szMAC:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public idmPushWapGetMACLen()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nMACLen:I

    return p0
.end method

.method public idmPushWapGetNotiBody()[B
    .locals 0

    iget-object p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->notiBody:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public idmPushWapGetSEC()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nSEC:I

    return p0
.end method

.method public idmPushWapSetBodyLen(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushWapInfo;->nBodyLen:I

    return-void
.end method

.method public idmPushWapSetContentType(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushWapInfo;->nContentType:I

    return-void
.end method

.method public idmPushWapSetHeaderLen(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushWapInfo;->nHeaderLen:I

    return-void
.end method

.method public idmPushWapSetMAC([B)V
    .locals 0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/idm/core/push/IDMPushWapInfo;->szMAC:[B

    return-void
.end method

.method public idmPushWapSetMACLen(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushWapInfo;->nMACLen:I

    return-void
.end method

.method public idmPushWapSetNotiBody([B)V
    .locals 0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/idm/core/push/IDMPushWapInfo;->notiBody:[B

    return-void
.end method

.method public idmPushWapSetSEC(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushWapInfo;->nSEC:I

    return-void
.end method

.method public idmReadFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nContentType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nHeaderLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nBodyLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nMACLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/idm/core/push/IDMPushWapInfo;->nSEC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/idm/core/push/IDMPushWapInfo;->szMAC:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/idm/core/push/IDMPushWapInfo;->notiBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->nContentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->nHeaderLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->nBodyLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->nMACLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->nSEC:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->szMAC:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->szMAC:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lcom/idm/core/push/IDMPushWapInfo;->notiBody:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/idm/core/push/IDMPushWapInfo;->notiBody:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

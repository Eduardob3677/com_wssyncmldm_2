.class public final Lcom/google/firebase/messaging/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {p1, v1}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lf1/a;->h(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, Lcom/google/firebase/messaging/n;

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/n;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/firebase/messaging/n;

    return-object p0
.end method

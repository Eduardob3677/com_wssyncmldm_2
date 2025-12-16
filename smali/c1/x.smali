.class public final Lc1/x;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc1/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Landroid/os/Bundle;

.field public d:[LZ0/c;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE0/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LE0/a;-><init>(I)V

    sput-object v0, Lc1/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lc1/x;->c:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Li3/x;->n1(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lc1/x;->d:[LZ0/c;

    invoke-static {p1, v1, v2, p2}, Li3/x;->r1(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 p2, 0x4

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget p0, p0, Lc1/x;->e:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

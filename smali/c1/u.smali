.class public final Lc1/u;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc1/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Landroid/os/IBinder;

.field public final e:LZ0/a;

.field public final f:Z

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE0/a;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LE0/a;-><init>(I)V

    sput-object v0, Lc1/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;LZ0/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc1/u;->c:I

    iput-object p2, p0, Lc1/u;->d:Landroid/os/IBinder;

    iput-object p3, p0, Lc1/u;->e:LZ0/a;

    iput-boolean p4, p0, Lc1/u;->f:Z

    iput-boolean p5, p0, Lc1/u;->g:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc1/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc1/u;

    iget-object v1, p1, Lc1/u;->e:LZ0/a;

    iget-object v3, p0, Lc1/u;->e:LZ0/a;

    invoke-virtual {v3, v1}, LZ0/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lc1/u;->d:Landroid/os/IBinder;

    invoke-static {p0}, Lc1/a;->q(Landroid/os/IBinder;)Lc1/o;

    move-result-object p0

    iget-object p1, p1, Lc1/u;->d:Landroid/os/IBinder;

    invoke-static {p1}, Lc1/a;->q(Landroid/os/IBinder;)Lc1/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v1, p0, Lc1/u;->c:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lc1/u;->d:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-static {p1, v3}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v3}, Li3/x;->v1(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x3

    iget-object v3, p0, Lc1/u;->e:LZ0/a;

    invoke-static {p1, v1, v3, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v2, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lc1/u;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x5

    invoke-static {p1, p2, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean p0, p0, Lc1/u;->g:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

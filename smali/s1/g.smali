.class public final Ls1/g;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ls1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:LZ0/a;

.field public final e:Lc1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/datepicker/d;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/d;-><init>(I)V

    sput-object v0, Ls1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILZ0/a;Lc1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls1/g;->c:I

    iput-object p2, p0, Ls1/g;->d:LZ0/a;

    iput-object p3, p0, Ls1/g;->e:Lc1/u;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v1, p0, Ls1/g;->c:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v2, p0, Ls1/g;->d:LZ0/a;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object p0, p0, Ls1/g;->e:Lc1/u;

    invoke-static {p1, v1, p0, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

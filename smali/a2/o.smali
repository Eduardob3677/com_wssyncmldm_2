.class public final La2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La2/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La2/b;-><init>(I)V

    sput-object v0, La2/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, La2/o;->c:Ljava/lang/String;

    iput-object p2, p0, La2/o;->d:Ljava/lang/String;

    invoke-static {p2}, La2/e;->c(Ljava/lang/String;)Lo/b;

    iput-boolean p3, p0, La2/o;->e:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La2/o;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, La2/o;->d:Ljava/lang/String;

    iput-object p1, p0, La2/o;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, La2/o;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, La2/o;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean p0, p0, La2/o;->e:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

.class public final LZ0/c;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LZ0/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE0/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LE0/a;-><init>(I)V

    sput-object v0, LZ0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LZ0/c;->c:Ljava/lang/String;

    iput p3, p0, LZ0/c;->d:I

    iput-wide p1, p0, LZ0/c;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/c;->c:Ljava/lang/String;

    iput-wide p2, p0, LZ0/c;->e:J

    const/4 p1, -0x1

    iput p1, p0, LZ0/c;->d:I

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, LZ0/c;->e:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget p0, p0, LZ0/c;->d:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, LZ0/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, LZ0/c;

    iget-object v0, p0, LZ0/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p1, LZ0/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p1, LZ0/c;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, LZ0/c;->d()J

    move-result-wide v2

    invoke-virtual {p1}, LZ0/c;->d()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, LZ0/c;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, LZ0/c;->c:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, LA3/D;

    invoke-direct {v0, p0}, LA3/D;-><init>(Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, LZ0/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LA3/D;->C0(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LZ0/c;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "version"

    invoke-virtual {v0, v1, p0}, LA3/D;->C0(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, LA3/D;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, LZ0/c;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v0, p0, LZ0/c;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, LZ0/c;->d()J

    move-result-wide v0

    const/16 p0, 0x8

    const/4 v2, 0x3

    invoke-static {p1, v2, p0}, Li3/x;->w1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

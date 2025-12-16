.class public final Lc1/j;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc1/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/os/IBinder;

.field public h:[Lcom/google/android/gms/common/api/Scope;

.field public i:Landroid/os/Bundle;

.field public j:Landroid/accounts/Account;

.field public k:[LZ0/c;

.field public l:[LZ0/c;

.field public final m:Z

.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE0/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LE0/a;-><init>(I)V

    sput-object v0, Lc1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lc1/j;->c:I

    sget v0, LZ0/f;->a:I

    iput v0, p0, Lc1/j;->e:I

    iput p1, p0, Lc1/j;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc1/j;->m:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[LZ0/c;[LZ0/c;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc1/j;->c:I

    iput p2, p0, Lc1/j;->d:I

    iput p3, p0, Lc1/j;->e:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lc1/j;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lc1/j;->f:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    invoke-static {p5}, Lc1/a;->q(Landroid/os/IBinder;)Lc1/o;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_0
    check-cast p2, Lc1/n;

    invoke-virtual {p2}, Lc1/n;->y()Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p5, "Remote account accessor probably died"

    invoke-static {p2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_1
    iput-object p1, p0, Lc1/j;->j:Landroid/accounts/Account;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lc1/j;->g:Landroid/os/IBinder;

    iput-object p8, p0, Lc1/j;->j:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Lc1/j;->h:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lc1/j;->i:Landroid/os/Bundle;

    iput-object p9, p0, Lc1/j;->k:[LZ0/c;

    iput-object p10, p0, Lc1/j;->l:[LZ0/c;

    iput-boolean p11, p0, Lc1/j;->m:Z

    iput p12, p0, Lc1/j;->n:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v1, p0, Lc1/j;->c:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    invoke-static {p1, v1, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v1, p0, Lc1/j;->d:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v1, p0, Lc1/j;->e:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lc1/j;->f:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lc1/j;->g:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    invoke-static {p1, v3}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v3}, Li3/x;->v1(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x6

    iget-object v3, p0, Lc1/j;->h:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v3, p2}, Li3/x;->r1(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v3, p0, Lc1/j;->i:Landroid/os/Bundle;

    invoke-static {p1, v1, v3}, Li3/x;->n1(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v1, 0x8

    iget-object v3, p0, Lc1/j;->j:Landroid/accounts/Account;

    invoke-static {p1, v1, v3, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v3, p0, Lc1/j;->k:[LZ0/c;

    invoke-static {p1, v1, v3, p2}, Li3/x;->r1(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v3, p0, Lc1/j;->l:[LZ0/c;

    invoke-static {p1, v1, v3, p2}, Li3/x;->r1(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 p2, 0xc

    invoke-static {p1, p2, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lc1/j;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xd

    invoke-static {p1, p2, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget p0, p0, Lc1/j;->n:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

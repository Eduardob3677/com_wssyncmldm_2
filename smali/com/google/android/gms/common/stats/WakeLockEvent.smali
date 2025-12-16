.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/util/List;

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:F

.field public final p:J

.field public final q:Z

.field public final r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg1/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->c:I

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->d:J

    move v1, p4

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->e:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->f:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->g:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->h:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->i:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->r:J

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->j:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->k:Ljava/lang/String;

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->l:J

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->m:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->n:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->o:F

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->p:J

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->q:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    const/16 v2, 0x8

    invoke-static {p1, v0, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-wide v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->d:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->f:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->j:Ljava/util/List;

    invoke-static {p1, v0, v3}, Li3/x;->q1(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, v2, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-wide v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->l:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0xa

    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->g:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->k:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->n:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xe

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xf

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 v0, 0x10

    invoke-static {p1, v0, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->p:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->h:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x12

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean p0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->q:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

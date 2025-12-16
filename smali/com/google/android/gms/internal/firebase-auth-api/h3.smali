.class public final Lcom/google/android/gms/internal/firebase-auth-api/h3;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/h3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:LY1/k;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/H2;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/H2;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(LY1/k;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->c:LY1/k;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->e:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->f:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->g:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->h:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->j:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->k:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->c:LY1/k;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->d:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->e:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x4

    const/16 v1, 0x8

    invoke-static {p1, p2, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->f:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x5

    invoke-static {p1, v2, p2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->g:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x6

    invoke-static {p1, v2, p2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->h:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->i:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->j:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/h3;->k:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

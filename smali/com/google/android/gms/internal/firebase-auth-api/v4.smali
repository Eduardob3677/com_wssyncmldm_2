.class public final Lcom/google/android/gms/internal/firebase-auth-api/v4;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/v4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/google/android/gms/internal/firebase-auth-api/B4;

.field public i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:J

.field public m:Z

.field public n:LY1/r;

.field public final o:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m3;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m3;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/B4;Ljava/lang/String;Ljava/lang/String;JJZLY1/r;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->e:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->g:Ljava/lang/String;

    if-nez p6, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/B4;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/B4;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/B4;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/B4;-><init>()V

    iget-object p2, p6, Lcom/google/android/gms/internal/firebase-auth-api/B4;->c:Ljava/util/List;

    if-eqz p2, :cond_1

    iget-object p3, p1, Lcom/google/android/gms/internal/firebase-auth-api/B4;->c:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->h:Lcom/google/android/gms/internal/firebase-auth-api/B4;

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->j:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->k:J

    iput-wide p11, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->l:J

    iput-boolean p13, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->m:Z

    iput-object p14, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->n:LY1/r;

    if-nez p15, :cond_2

    new-instance p15, Ljava/util/ArrayList;

    invoke-direct {p15}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iput-object p15, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {p1, v1, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->e:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->f:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->g:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->h:Lcom/google/android/gms/internal/firebase-auth-api/B4;

    invoke-static {p1, v2, v3, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->i:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {p1, v3, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->j:Ljava/lang/String;

    invoke-static {p1, v2, v4}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {p1, v2, v3}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->k:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v2, 0xb

    invoke-static {p1, v2, v3}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->l:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->m:Z

    const/16 v3, 0xc

    invoke-static {p1, v3, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->n:LY1/r;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 p2, 0xe

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->o:Ljava/util/List;

    invoke-static {p1, p2, p0}, Li3/x;->s1(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

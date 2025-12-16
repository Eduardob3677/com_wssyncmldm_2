.class public final Lcom/google/android/gms/internal/firebase-auth-api/b3;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/b3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lcom/google/android/gms/internal/firebase-auth-api/N4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/H2;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/H2;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/b3;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/N4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b3;->c:Lcom/google/android/gms/internal/firebase-auth-api/N4;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b3;->c:Lcom/google/android/gms/internal/firebase-auth-api/N4;

    const/4 v1, 0x1

    invoke-static {p1, v1, p0, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

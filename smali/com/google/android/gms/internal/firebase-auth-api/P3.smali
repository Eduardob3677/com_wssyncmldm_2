.class public final Lcom/google/android/gms/internal/firebase-auth-api/P3;
.super Lcom/google/android/gms/internal/firebase-auth-api/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Q3;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/v4;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/firebase-auth-api/p4;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/firebase-auth-api/D4;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final p(LY1/j;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/firebase-auth-api/y4;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a;->s()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/a;->q(Landroid/os/Parcel;I)V

    return-void
.end method

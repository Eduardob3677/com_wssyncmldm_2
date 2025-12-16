.class public final Lcom/google/android/gms/internal/firebase-auth-api/E4;
.super Ld1/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/X3;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/E4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public k:Lcom/google/android/gms/internal/firebase-auth-api/m4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m3;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m3;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->d:J

    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->e:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->h:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->i:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "tenantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "recaptchaToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->k:Lcom/google/android/gms/internal/firebase-auth-api/m4;

    if-eqz v1, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appSignatureHash"

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/m4;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "autoRetrievalInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->j:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v1, "safetyNetToken"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->d:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x3

    const/4 v2, 0x4

    invoke-static {p1, v0, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->e:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->f:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->g:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->h:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    invoke-static {p1, v0, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/E4;->j:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

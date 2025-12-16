.class public final La2/q;
.super Ld1/a;
.source "SourceFile"

# interfaces
.implements LY1/n;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La2/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, La2/b;-><init>(I)V

    sput-object v0, La2/q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/A4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->c:Ljava/lang/String;

    iput-object v0, p0, La2/q;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->f:Ljava/lang/String;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object v0, p0, La2/q;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->d:Ljava/lang/String;

    iput-object v0, p0, La2/q;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2/q;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->i:Ljava/lang/String;

    iput-object v0, p0, La2/q;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->h:Ljava/lang/String;

    iput-object v0, p0, La2/q;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, La2/q;->i:Z

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->g:Ljava/lang/String;

    iput-object p1, p0, La2/q;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/v4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    const-string v0, "firebase"

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->c:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object v1, p0, La2/q;->c:Ljava/lang/String;

    iput-object v0, p0, La2/q;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->d:Ljava/lang/String;

    iput-object v0, p0, La2/q;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->f:Ljava/lang/String;

    iput-object v0, p0, La2/q;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2/q;->f:Ljava/lang/String;

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->e:Z

    iput-boolean v0, p0, La2/q;->i:Z

    iput-object v1, p0, La2/q;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->j:Ljava/lang/String;

    iput-object p1, p0, La2/q;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/q;->c:Ljava/lang/String;

    iput-object p2, p0, La2/q;->d:Ljava/lang/String;

    iput-object p3, p0, La2/q;->g:Ljava/lang/String;

    iput-object p4, p0, La2/q;->h:Ljava/lang/String;

    iput-object p5, p0, La2/q;->e:Ljava/lang/String;

    iput-object p6, p0, La2/q;->f:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    :cond_0
    iput-boolean p7, p0, La2/q;->i:Z

    iput-object p8, p0, La2/q;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La2/q;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    iget-object v2, p0, La2/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "providerId"

    iget-object v2, p0, La2/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayName"

    iget-object v2, p0, La2/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "photoUrl"

    iget-object v2, p0, La2/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "email"

    iget-object v2, p0, La2/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phoneNumber"

    iget-object v2, p0, La2/q;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEmailVerified"

    iget-boolean v2, p0, La2/q;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawUserInfo"

    iget-object p0, p0, La2/q;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DefaultAuthUserInfo"

    const-string v1, "Failed to jsonify this object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/F2;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, La2/q;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, La2/q;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p0, La2/q;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, La2/q;->f:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v2, p0, La2/q;->g:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v2, p0, La2/q;->h:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, La2/q;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    iget-object p0, p0, La2/q;->j:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

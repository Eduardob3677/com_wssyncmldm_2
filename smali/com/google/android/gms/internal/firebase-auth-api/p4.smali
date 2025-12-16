.class public final Lcom/google/android/gms/internal/firebase-auth-api/p4;
.super Ld1/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Y3;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/p4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lcom/google/android/gms/internal/firebase-auth-api/M4;

.field public h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m3;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/Y3;
    .locals 5

    const-string v0, "allProviders"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "authUri"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->c:Ljava/lang/String;

    const-string v2, "registered"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->d:Z

    const-string v2, "providerId"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->e:Ljava/lang/String;

    const-string v2, "forExistingProvider"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->f:Z

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/M4;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->g:Lcom/google/android/gms/internal/firebase-auth-api/M4;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->r(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/M4;-><init>(Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->g:Lcom/google/android/gms/internal/firebase-auth-api/M4;

    :goto_0
    const-string v0, "signinMethods"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->r(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->h:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string v0, "p4"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->d(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/w3;

    move-result-object p0

    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->d:Z

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Li3/x;->w1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->e:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->f:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v3}, Li3/x;->w1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->g:Lcom/google/android/gms/internal/firebase-auth-api/M4;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x7

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->h:Ljava/util/List;

    invoke-static {p1, p2, p0}, Li3/x;->q1(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

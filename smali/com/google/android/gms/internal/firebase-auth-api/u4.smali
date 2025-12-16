.class public final Lcom/google/android/gms/internal/firebase-auth-api/u4;
.super Ld1/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Y3;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/u4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/google/android/gms/internal/firebase-auth-api/w4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m3;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m3;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/u4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/Y3;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "users"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/B4;

    invoke-direct {v7}, Lcom/google/android/gms/internal/firebase-auth-api/B4;-><init>()V

    iput-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/v4;->h:Lcom/google/android/gms/internal/firebase-auth-api/B4;

    move/from16 v23, v5

    goto/16 :goto_1

    :cond_2
    new-instance v22, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    const-string v7, "localId"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lh1/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "email"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lh1/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "emailVerified"

    invoke-virtual {v6, v10, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "displayName"

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lh1/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "photoUrl"

    invoke-virtual {v6, v12, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lh1/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "providerUserInfo"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/internal/firebase-auth-api/B4;->d(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/firebase-auth-api/B4;

    move-result-object v13

    const-string v14, "rawPassword"

    invoke-virtual {v6, v14, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lh1/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "phoneNumber"

    invoke-virtual {v6, v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lh1/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "createdAt"

    move/from16 v23, v5

    const-wide/16 v4, 0x0

    invoke-virtual {v6, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v8, "lastLoginAt"

    invoke-virtual {v6, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v8, "mfaInfo"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/z4;->e(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v6, v22

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v4

    invoke-direct/range {v6 .. v21}, Lcom/google/android/gms/internal/firebase-auth-api/v4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/B4;Ljava/lang/String;Ljava/lang/String;JJZLY1/r;Ljava/util/ArrayList;)V

    move-object/from16 v6, v22

    :goto_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v23, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>(Ljava/util/ArrayList;)V

    :goto_3
    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object v0

    :goto_5
    const-string v2, "u4"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->d(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/w3;

    move-result-object v0

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;

    const/4 v1, 0x2

    invoke-static {p1, v1, p0, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

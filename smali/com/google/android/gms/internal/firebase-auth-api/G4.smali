.class public final Lcom/google/android/gms/internal/firebase-auth-api/G4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/X3;


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/M4;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/M4;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld4/i;LN3/f;Lr3/j;Ls2/c;LN3/g;LN3/a;Lf4/j;LJ3/c;Ljava/util/List;)V
    .locals 1

    const-string v0, "components"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containingDeclaration"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "metadataVersion"

    invoke-static {v0, p6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->h:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    new-instance v0, LJ3/c;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Deserializer for \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lr3/j;->getName()LQ3/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    if-eqz p7, :cond_1

    invoke-interface {p7}, Lf4/j;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p6, p1

    goto :goto_2

    :cond_1
    :goto_1
    const-string p1, "[container not found]"

    goto :goto_0

    :goto_2
    move-object p1, v0

    move-object p2, p0

    move-object p3, p8

    move-object p4, p9

    invoke-direct/range {p1 .. p6}, LJ3/c;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;LJ3/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    new-instance p1, Ld4/r;

    invoke-direct {p1, p0}, Ld4/r;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lu3/p;Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/G4;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LN3/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ls2/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LN3/g;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->h:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LN3/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->b(Lr3/j;Ljava/util/List;LN3/f;Ls2/c;LN3/g;LN3/a;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "returnSecureToken"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "deleteProvider"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [I

    move v6, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "PASSWORD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v10

    goto :goto_3

    :sswitch_1
    const-string v8, "PHOTO_URL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_3

    :sswitch_2
    const-string v8, "EMAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_3

    :sswitch_3
    const-string v8, "DISPLAY_NAME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_5

    if-eq v7, v2, :cond_6

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_3

    move v10, v4

    goto :goto_4

    :cond_3
    const/4 v10, 0x4

    goto :goto_4

    :cond_4
    const/4 v10, 0x5

    goto :goto_4

    :cond_5
    move v10, v2

    :cond_6
    :goto_4
    aput v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    if-lez v3, :cond_9

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_5
    if-ge v4, v3, :cond_8

    aget v2, v5, v4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const-string v2, "deleteAttribute"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v2, "idToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v2, "displayName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "photoUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v2, "oobCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_10

    const-string v1, "tenantId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x13d9e3f8 -> :sswitch_3
        0x3f0537c -> :sswitch_2
        0x73a065a2 -> :sswitch_1
        0x772faa9b -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lr3/j;Ljava/util/List;LN3/f;Ls2/c;LN3/g;LN3/a;)Lcom/google/android/gms/internal/firebase-auth-api/G4;
    .locals 11

    move-object v0, p0

    move-object/from16 v6, p6

    const-string v1, "descriptor"

    move-object v3, p1

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nameResolver"

    move-object v2, p3

    invoke-static {v1, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "typeTable"

    move-object v4, p4

    invoke-static {v1, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v5, p5

    invoke-static {v1, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "metadataVersion"

    invoke-static {v1, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    const/4 v1, 0x1

    iget v7, v6, LN3/a;->b:I

    if-ne v7, v1, :cond_0

    const/4 v8, 0x4

    iget v9, v6, LN3/a;->c:I

    if-ge v9, v8, :cond_2

    :cond_0
    if-le v7, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    check-cast v1, LN3/g;

    move-object v5, v1

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, LJ3/c;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lf4/j;

    move-object v0, v10

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v6, p6

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>(Ld4/i;LN3/f;Lr3/j;Ls2/c;LN3/g;LN3/a;Lf4/j;LJ3/c;Ljava/util/List;)V

    return-object v10
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    return-void
.end method

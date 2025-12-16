.class public final La2/s;
.super Ld1/a;
.source "SourceFile"

# interfaces
.implements LY1/n;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La2/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

.field public d:La2/q;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Boolean;

.field public k:La2/t;

.field public l:Z

.field public m:LY1/r;

.field public n:La2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, La2/b;-><init>(I)V

    sput-object v0, La2/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(LW1/g;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object p1, p1, LW1/g;->b:Ljava/lang/String;

    iput-object p1, p0, La2/s;->e:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, La2/s;->f:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, p0, La2/s;->i:Ljava/lang/String;

    invoke-virtual {p0, p2}, La2/s;->f(Ljava/util/List;)La2/s;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/q;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Boolean;La2/t;ZLY1/r;La2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iput-object p2, p0, La2/s;->d:La2/q;

    iput-object p3, p0, La2/s;->e:Ljava/lang/String;

    iput-object p4, p0, La2/s;->f:Ljava/lang/String;

    iput-object p5, p0, La2/s;->g:Ljava/util/List;

    iput-object p6, p0, La2/s;->h:Ljava/util/List;

    iput-object p7, p0, La2/s;->i:Ljava/lang/String;

    iput-object p8, p0, La2/s;->j:Ljava/lang/Boolean;

    iput-object p9, p0, La2/s;->k:La2/t;

    iput-boolean p10, p0, La2/s;->l:Z

    iput-object p11, p0, La2/s;->m:LY1/r;

    iput-object p12, p0, La2/s;->n:La2/f;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La2/s;->d:La2/q;

    iget-object p0, p0, La2/q;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, La2/d;->a(Ljava/lang/String;)Ls2/c;

    move-result-object p0

    const-string v1, "firebase"

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v0, "tenant"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, La2/s;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-static {v0}, La2/d;->a(Ljava/lang/String;)Ls2/c;

    move-result-object v0

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "firebase"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "sign_in_provider"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    iget-object v1, p0, La2/s;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_4

    if-eqz v0, :cond_3

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, La2/s;->j:Ljava/lang/Boolean;

    :cond_5
    iget-object p0, p0, La2/s;->j:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/util/List;)La2/s;
    .locals 5

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La2/s;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La2/s;->h:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY1/n;

    invoke-interface {v2}, LY1/n;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, La2/q;

    iput-object v3, p0, La2/s;->d:La2/q;

    goto :goto_1

    :cond_0
    iget-object v3, p0, La2/s;->h:Ljava/util/List;

    invoke-interface {v2}, LY1/n;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, La2/s;->g:Ljava/util/List;

    check-cast v2, La2/q;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, La2/s;->d:La2/q;

    if-nez p1, :cond_2

    iget-object p1, p0, La2/s;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/q;

    iput-object p1, p0, La2/s;->d:La2/q;

    :cond_2
    return-object p0
.end method

.method public final g(Ljava/util/ArrayList;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY1/k;

    instance-of v2, v1, LY1/k;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, La2/f;

    invoke-direct {p1, v0}, La2/f;-><init>(Ljava/util/ArrayList;)V

    :goto_1
    iput-object p1, p0, La2/s;->n:La2/f;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x2

    iget-object v2, p0, La2/s;->d:La2/q;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, La2/s;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, La2/s;->f:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v3, p0, La2/s;->g:Ljava/util/List;

    invoke-static {p1, v1, v3}, Li3/x;->s1(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x6

    iget-object v3, p0, La2/s;->h:Ljava/util/List;

    invoke-static {p1, v1, v3}, Li3/x;->q1(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x7

    iget-object v3, p0, La2/s;->i:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-virtual {p0}, La2/s;->e()Z

    move-result v1

    const/16 v3, 0x8

    invoke-static {p1, v3, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x9

    iget-object v3, p0, La2/s;->k:La2/t;

    invoke-static {p1, v1, v3, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean v1, p0, La2/s;->l:Z

    const/16 v3, 0xa

    invoke-static {p1, v3, v2}, Li3/x;->w1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xb

    iget-object v2, p0, La2/s;->m:LY1/r;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object p0, p0, La2/s;->n:La2/f;

    invoke-static {p1, v1, p0, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

.class public final LY1/r;
.super LY1/c;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LY1/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/google/android/gms/internal/firebase-auth-api/N4;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/p;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LY1/p;-><init>(I)V

    sput-object v0, LY1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/C4;->a:I

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, LY1/r;->c:Ljava/lang/String;

    iput-object p2, p0, LY1/r;->d:Ljava/lang/String;

    iput-object p3, p0, LY1/r;->e:Ljava/lang/String;

    iput-object p4, p0, LY1/r;->f:Lcom/google/android/gms/internal/firebase-auth-api/N4;

    iput-object p5, p0, LY1/r;->g:Ljava/lang/String;

    iput-object p6, p0, LY1/r;->h:Ljava/lang/String;

    iput-object p7, p0, LY1/r;->i:Ljava/lang/String;

    return-void
.end method

.method public static e(Lcom/google/android/gms/internal/firebase-auth-api/N4;)LY1/r;
    .locals 9

    const-string v0, "Must specify a non-null webSignInCredential"

    invoke-static {v0, p0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LY1/r;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, LY1/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final d()LY1/c;
    .locals 9

    new-instance v8, LY1/r;

    iget-object v6, p0, LY1/r;->h:Ljava/lang/String;

    iget-object v7, p0, LY1/r;->i:Ljava/lang/String;

    iget-object v1, p0, LY1/r;->c:Ljava/lang/String;

    iget-object v2, p0, LY1/r;->d:Ljava/lang/String;

    iget-object v3, p0, LY1/r;->e:Ljava/lang/String;

    iget-object v4, p0, LY1/r;->f:Lcom/google/android/gms/internal/firebase-auth-api/N4;

    iget-object v5, p0, LY1/r;->g:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LY1/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, LY1/r;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, LY1/r;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, LY1/r;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, LY1/r;->f:Lcom/google/android/gms/internal/firebase-auth-api/N4;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x5

    iget-object v1, p0, LY1/r;->g:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x6

    iget-object v1, p0, LY1/r;->h:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x7

    iget-object p0, p0, LY1/r;->i:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

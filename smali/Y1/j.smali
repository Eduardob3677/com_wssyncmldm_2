.class public final LY1/j;
.super LY1/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LY1/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LY1/p;-><init>(I)V

    sput-object v0, LY1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    :goto_0
    const-string v1, "Cannot create PhoneAuthCredential without either verificationProof, sessionInfo, temporary proof, or enrollment ID."

    invoke-static {v1, v0}, Lc1/D;->a(Ljava/lang/String;Z)V

    iput-object p1, p0, LY1/j;->c:Ljava/lang/String;

    iput-object p2, p0, LY1/j;->d:Ljava/lang/String;

    iput-boolean p3, p0, LY1/j;->e:Z

    iput-object p4, p0, LY1/j;->f:Ljava/lang/String;

    iput-boolean p5, p0, LY1/j;->g:Z

    iput-object p6, p0, LY1/j;->h:Ljava/lang/String;

    iput-object p7, p0, LY1/j;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 9

    new-instance v8, LY1/j;

    iget-boolean v5, p0, LY1/j;->g:Z

    iget-object v6, p0, LY1/j;->h:Ljava/lang/String;

    iget-object v7, p0, LY1/j;->i:Ljava/lang/String;

    iget-object v1, p0, LY1/j;->c:Ljava/lang/String;

    iget-object v2, p0, LY1/j;->d:Ljava/lang/String;

    iget-boolean v3, p0, LY1/j;->e:Z

    iget-object v4, p0, LY1/j;->f:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LY1/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, LY1/j;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, LY1/j;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, LY1/j;->e:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, LY1/j;->f:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v0, p0, LY1/j;->g:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    iget-object v1, p0, LY1/j;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object p0, p0, LY1/j;->i:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

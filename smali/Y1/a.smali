.class public final LY1/a;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LY1/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/p;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LY1/p;-><init>(I)V

    sput-object v0, LY1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/a;->c:Ljava/lang/String;

    iput-object p2, p0, LY1/a;->d:Ljava/lang/String;

    iput-object p3, p0, LY1/a;->e:Ljava/lang/String;

    iput-object p4, p0, LY1/a;->f:Ljava/lang/String;

    iput-boolean p5, p0, LY1/a;->g:Z

    iput-object p6, p0, LY1/a;->h:Ljava/lang/String;

    iput-boolean p7, p0, LY1/a;->i:Z

    iput-object p8, p0, LY1/a;->j:Ljava/lang/String;

    iput p9, p0, LY1/a;->k:I

    iput-object p10, p0, LY1/a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, LY1/a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, LY1/a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p0, LY1/a;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, LY1/a;->f:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, LY1/a;->g:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    iget-object v2, p0, LY1/a;->h:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, LY1/a;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    iget-object v2, p0, LY1/a;->j:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {p1, v0, v1}, Li3/x;->w1(Landroid/os/Parcel;II)V

    iget v0, p0, LY1/a;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xa

    iget-object p0, p0, LY1/a;->l:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

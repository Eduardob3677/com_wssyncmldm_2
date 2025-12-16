.class public final La2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La2/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:La2/s;

.field public d:La2/o;

.field public e:LY1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, La2/b;-><init>(I)V

    sput-object v0, La2/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(La2/s;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/p;->c:La2/s;

    iget-object v0, p1, La2/s;->g:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, La2/p;->d:La2/o;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/q;

    iget-object v2, v2, La2/q;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, La2/o;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/q;

    iget-object v3, v3, La2/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/q;

    iget-object v4, v4, La2/q;->j:Ljava/lang/String;

    iget-boolean v5, p1, La2/s;->l:Z

    invoke-direct {v2, v3, v4, v5}, La2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, La2/p;->d:La2/o;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La2/p;->d:La2/o;

    if-nez v0, :cond_2

    new-instance v0, La2/o;

    iget-boolean v1, p1, La2/s;->l:Z

    invoke-direct {v0, v1}, La2/o;-><init>(Z)V

    iput-object v0, p0, La2/p;->d:La2/o;

    :cond_2
    iget-object p1, p1, La2/s;->m:LY1/r;

    iput-object p1, p0, La2/p;->e:LY1/r;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, La2/p;->c:La2/s;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x2

    iget-object v2, p0, La2/p;->d:La2/o;

    invoke-static {p1, v1, v2, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object p0, p0, La2/p;->e:LY1/r;

    invoke-static {p1, v1, p0, p2}, Li3/x;->o1(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

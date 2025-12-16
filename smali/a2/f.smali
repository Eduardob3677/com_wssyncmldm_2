.class public final La2/f;
.super Ld1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La2/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La2/b;-><init>(I)V

    sput-object v0, La2/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, La2/f;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    iget-object p0, p0, La2/f;->c:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Li3/x;->s1(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

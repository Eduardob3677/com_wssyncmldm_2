.class public final LY1/m;
.super LY1/c;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LY1/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LY1/p;-><init>(I)V

    sput-object v0, LY1/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, LY1/m;->c:Ljava/lang/String;

    invoke-static {p2}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p2, p0, LY1/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Li3/x;->t1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, LY1/m;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object p0, p0, LY1/m;->d:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Li3/x;->p1(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Li3/x;->v1(Landroid/os/Parcel;I)V

    return-void
.end method

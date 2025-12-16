.class public final LB1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB1/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, LB1/f;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lw/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw/f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lk/G1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lk/G1;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lk/P0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lk/P0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lj0/T;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj0/T;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/fragment/app/B;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/B;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_4
    new-instance p0, LS1/A;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LS1/A;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, LR/b;->d:LR/a;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    new-instance p0, LQ1/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LQ1/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_7
    new-instance p0, LJ1/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LJ1/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_8
    new-instance p0, LH0/o;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, LH0/o;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, LH0/o;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, LH0/o;->e:Landroid/os/Parcelable;

    return-object p0

    :pswitch_9
    new-instance p0, LF0/i;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LF0/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_a
    new-instance p0, LC1/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LC1/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_b
    new-instance p0, LB1/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LB1/g;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, LB1/f;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lw/f;

    invoke-direct {p0, p1, p2}, Lw/f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lk/G1;

    invoke-direct {p0, p1, p2}, Lk/G1;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lk/P0;

    invoke-direct {p0, p1, p2}, Lk/P0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lj0/T;

    invoke-direct {p0, p1, p2}, Lj0/T;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/fragment/app/B;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/B;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_4
    new-instance p0, LS1/A;

    invoke-direct {p0, p1, p2}, LS1/A;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, LR/b;->d:LR/a;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    new-instance p0, LQ1/c;

    invoke-direct {p0, p1, p2}, LQ1/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_7
    new-instance p0, LJ1/a;

    invoke-direct {p0, p1, p2}, LJ1/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_8
    new-instance p0, LH0/o;

    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LH0/o;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LH0/o;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, LH0/o;->e:Landroid/os/Parcelable;

    return-object p0

    :pswitch_9
    new-instance p0, LF0/i;

    invoke-direct {p0, p1, p2}, LF0/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_a
    new-instance p0, LC1/b;

    invoke-direct {p0, p1, p2}, LC1/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_b
    new-instance p0, LB1/g;

    invoke-direct {p0, p1, p2}, LB1/g;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LB1/f;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lw/f;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lk/G1;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lk/P0;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lj0/T;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Landroidx/fragment/app/B;

    return-object p0

    :pswitch_4
    new-array p0, p1, [LS1/A;

    return-object p0

    :pswitch_5
    new-array p0, p1, [LR/b;

    return-object p0

    :pswitch_6
    new-array p0, p1, [LQ1/c;

    return-object p0

    :pswitch_7
    new-array p0, p1, [LJ1/a;

    return-object p0

    :pswitch_8
    new-array p0, p1, [LH0/o;

    return-object p0

    :pswitch_9
    new-array p0, p1, [LF0/i;

    return-object p0

    :pswitch_a
    new-array p0, p1, [LC1/b;

    return-object p0

    :pswitch_b
    new-array p0, p1, [LB1/g;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

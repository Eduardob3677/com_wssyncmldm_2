.class public abstract synthetic Lk/Q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lk/Q0;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public static synthetic a(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic b(II)Z
    .locals 0

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic c(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const p0, 0x7f060411

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const p0, 0x7f06040a

    return p0

    :cond_2
    const p0, 0x7f060410

    return p0

    :cond_3
    const p0, 0x7f06040b

    return p0
.end method

.method public static synthetic d(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const p0, 0x7f060413

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const p0, 0x7f06040c

    return p0

    :cond_2
    const p0, 0x7f060412

    return p0

    :cond_3
    const p0, 0x7f06040d

    return p0
.end method

.method public static synthetic e(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const p0, 0x7f060415

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const p0, 0x7f06040e

    return p0

    :cond_2
    const p0, 0x7f060414

    return p0

    :cond_3
    const p0, 0x7f06040f

    return p0
.end method

.method public static synthetic f(I)I
    .locals 0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic g(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "DARK_WITHOUT_BACKGROUND"

    return-object p0

    :cond_1
    const-string p0, "DARK_WITH_BACKGROUND"

    return-object p0

    :cond_2
    const-string p0, "LIGHT_WITHOUT_BACKGROUND"

    return-object p0

    :cond_3
    const-string p0, "LIGHT_WITH_BACKGROUND"

    return-object p0
.end method

.method public static synthetic h(I)[I
    .locals 3

    new-array v0, p0, [I

    sget-object v1, Lk/Q0;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

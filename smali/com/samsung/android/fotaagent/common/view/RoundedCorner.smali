.class public Lcom/samsung/android/fotaagent/common/view/RoundedCorner;
.super Landroidx/appcompat/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/view/RoundedCorner$ScrollView;,
        Lcom/samsung/android/fotaagent/common/view/RoundedCorner$LinearLayout;
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/util/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/view/RoundedCorner;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/view/RoundedCorner;->create(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/view/RoundedCorner;

    move-result-object p0

    return-object p0
.end method

.method private static create(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/view/RoundedCorner;
    .locals 3

    new-instance v0, Lcom/samsung/android/fotaagent/common/view/RoundedCorner;

    invoke-direct {v0, p0}, Lcom/samsung/android/fotaagent/common/view/RoundedCorner;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/appcompat/util/b;->setRoundedCorners(I)V

    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/util/b;->setRoundedCornerColor(II)V

    return-object v0
.end method

.class public Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fotaagent/common/view/TextViewWithLimitedFontSize;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/view/UpToLargeScaleFont;->limitFontSize(Landroid/widget/TextView;)V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/view/UpToLargeScaleFont;->limitFontSize(Landroid/widget/TextView;)V

    return-void
.end method

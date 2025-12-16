.class Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final end:I

.field final start:I

.field final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->url:Ljava/lang/String;

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->start:I

    iput p3, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->end:I

    return-void
.end method

.method public static extractFrom(Landroid/text/Spannable;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            ")",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    new-instance v5, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v5, v6, v7, v4}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;)I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->start:I

    iget p1, p1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->start:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->compareTo(Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URLSpec{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->end:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

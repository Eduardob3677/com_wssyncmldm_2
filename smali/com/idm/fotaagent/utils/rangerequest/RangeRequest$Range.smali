.class public Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field private final end:J

.field private final start:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-string v3, "start("

    if-ltz v2, :cond_2

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->start:J

    iput-wide p3, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->end:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") should be less than or equal to end("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "end("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") should be greater than or equal to zero: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") should be greater than or equal to zero"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)J
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method private count()J
    .locals 4

    iget-wide v0, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->end:J

    iget-wide v2, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public end()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->end:J

    return-wide v0
.end method

.method public start()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->start:J

    return-wide v0
.end method

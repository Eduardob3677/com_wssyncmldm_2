.class final enum Lcom/idm/fotaagent/utils/EpochTime$4;
.super Lcom/idm/fotaagent/utils/EpochTime;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/EpochTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/utils/EpochTime;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/utils/EpochTime$1;)V

    return-void
.end method


# virtual methods
.method public applyTo(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    const/16 p0, 0xb

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->add(II)V

    return-object p1
.end method

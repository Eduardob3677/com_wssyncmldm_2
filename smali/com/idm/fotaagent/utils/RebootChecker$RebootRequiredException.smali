.class public Lcom/idm/fotaagent/utils/RebootChecker$RebootRequiredException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/RebootChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebootRequiredException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5df12e469cbc2452L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Since this application waits for reboot in order to complete installation, it should not perform anything"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

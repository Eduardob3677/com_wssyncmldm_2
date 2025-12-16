.class synthetic Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$idm$fotaagent$database$room$data$repository$AdminRepository$IopTestMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;->values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest$1;->$SwitchMap$com$idm$fotaagent$database$room$data$repository$AdminRepository$IopTestMode:[I

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;->IOP_TEST_MODE_OFF:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest$1;->$SwitchMap$com$idm$fotaagent$database$room$data$repository$AdminRepository$IopTestMode:[I

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;->IOP_TEST_MODE_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

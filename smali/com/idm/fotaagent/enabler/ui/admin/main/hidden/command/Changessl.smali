.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# instance fields
.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;->lambda$execute$0(Ljava/lang/Enum;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Enum;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setSslCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;->values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getSslCheck()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;

    move-result-object v1

    new-instance v2, LC2/c;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    const-string v3, "SSL Setting"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showDialog(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/function/Consumer;)V

    return-void
.end method

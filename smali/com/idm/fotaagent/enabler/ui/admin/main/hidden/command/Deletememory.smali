.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# instance fields
.field private final fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;->lambda$execute$0(Ljava/lang/Enum;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Enum;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->DUMMY_FILE_LIST:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;->deleteDummyFile(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteDummyFile(Ljava/lang/String;)V
    .locals 5

    const-string v0, " Dummy file exist. and Size is "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filename : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->getDeltaFileSize(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/32 v3, 0xf4240

    div-long v3, v1, v3

    long-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")MB"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteFile([Ljava/lang/String;)V

    const-string p1, "Dummy file deleted"

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "IDMExceptionFileNotFound fail"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const-string p1, "file is not exist. nothing to delete"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const-string p1, "No File to delete"

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public execute()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;->values()[Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;->CACHE_MEMORY:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;

    new-instance v2, LC2/c;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    const-string v3, "Delete selected memory type"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showDialog(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/function/Consumer;)V

    return-void
.end method

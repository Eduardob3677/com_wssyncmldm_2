.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;
    }
.end annotation


# static fields
.field public static final DUMMY_FILE_LIST:[Ljava/lang/String;


# instance fields
.field private final fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "/data/fota/dummyfile.dat"

    const-string v1, "/cache/recovery/dummyfile.dat"

    const-string v2, "/cache/dummyfile.dat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->DUMMY_FILE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;Landroid/widget/EditText;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->lambda$showDialogForCreatingSpecificSize$1(Landroid/widget/EditText;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->lambda$execute$0(Ljava/lang/Enum;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Enum;)V
    .locals 4

    const-string v0, "nAvailableSize : "

    const-string v1, "Cache or Internal memory : "

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v3, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v3, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Cache Recovery memory"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->showDialogForCreatingSpecificSize()V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytes(I)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/DummyFileCreater;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->DUMMY_FILE_LIST:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v3, p1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/DummyFileCreater;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/DummyFileCreater;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$showDialogForCreatingSpecificSize$1(Landroid/widget/EditText;ILandroid/content/DialogInterface;I)V
    .locals 5

    iget-object p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p3}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtCache()J

    move-result-wide p3

    const-wide/32 v0, 0xf4240

    div-long/2addr p3, v0

    long-to-int p3, p3

    int-to-long p3, p3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/idm/fotaagent/utils/GeneralUtils;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remain size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    cmp-long p3, p1, p3

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p3}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtCache()J

    move-result-wide p3

    mul-long/2addr p1, v0

    sub-long/2addr p3, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "nAvailableSize : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    cmp-long p1, p3, v2

    if-lez p1, :cond_1

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/DummyFileCreater;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    sget-object p2, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->DUMMY_FILE_LIST:[Ljava/lang/String;

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;->CACHE_RECOVERY_MEMORY:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/DummyFileCreater;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/DummyFileCreater;->start()V

    goto :goto_1

    :cond_1
    const-string p1, "wrong input cannot proceed"

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "wrong input"

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private showDialogForCreatingSpecificSize()V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Input size"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Input remain size in /cache/recovery (Default size is 250Mb)"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, v1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const p0, 0x7f130016

    invoke-virtual {v0, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;->values()[Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;->CACHE_MEMORY:Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull$MemoryType;

    new-instance v2, LC2/c;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    const-string v3, "Select memory type"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showDialog(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/function/Consumer;)V

    return-void
.end method

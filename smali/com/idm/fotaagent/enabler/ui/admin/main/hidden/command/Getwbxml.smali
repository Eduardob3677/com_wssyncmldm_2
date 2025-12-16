.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getwbxml;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getwbxml;->lambda$getWbxmlFiles$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private copyToSDcard([Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getwbxml;->getDestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v6, v4}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->saveFileToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    array-length p0, p1

    if-ne v3, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private getDestFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->getExternalPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWbxmlFiles()[Ljava/io/File;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getWbxmlFiles$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".wbxml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public execute()V
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getwbxml;->getWbxmlFiles()[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getwbxml;->copyToSDcard([Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wbxml file was copied to sdcard successfully"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

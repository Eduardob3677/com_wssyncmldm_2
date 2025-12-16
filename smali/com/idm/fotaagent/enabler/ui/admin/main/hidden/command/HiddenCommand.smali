.class public abstract Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;[Ljava/lang/Enum;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->lambda$showDialog$1(Ljava/util/function/Consumer;[Ljava/lang/Enum;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->lambda$showDialog$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$showDialog$0(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$showDialog$1(Ljava/util/function/Consumer;[Ljava/lang/Enum;Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p2

    aget-object p1, p1, p2

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public getExternalPath()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveFileToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Src File Name ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], Dest File Name ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteFile([Ljava/lang/String;)V

    const p0, 0xf4240

    new-array p1, p0, [B

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v1, p1, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return v0
.end method

.method public savePreviousFirmwareVersion()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setPreviousFirmwareVersion(Ljava/lang/String;)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Enum<",
            "TT;>;",
            "Ljava/lang/Enum<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Enum<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LG2/b;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/b;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;

    const/4 p3, 0x1

    invoke-direct {p1, p4, p3, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const p2, 0x7f130016

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

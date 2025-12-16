.class Lcom/idm/adapter/logmanager/IDMLogManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/adapter/logmanager/IDMLogManagerInterface;


# instance fields
.field private classNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/adapter/logmanager/IDMLogManager;->classNameList:Ljava/util/List;

    const-string v0, "dalvik.system.VMStack"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Thread;

    const-class v2, Lcom/idm/adapter/logmanager/IDMLogManager;

    const-class v3, Lcom/idm/adapter/logmanager/IDMDebug;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmExcludeClass([Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private varargs idmExcludeClass([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/idm/adapter/logmanager/IDMLogManager;->classNameList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private idmGetClassNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/adapter/logmanager/IDMLogManager;->classNameList:Ljava/util/List;

    return-object p0
.end method

.method private idmGetStackTrace()[Ljava/lang/StackTraceElement;
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method private idmMakeLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmPeekStack()Ljava/lang/StackTraceElement;

    move-result-object p0

    sget-object v1, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->E:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    if-ne p1, v1, :cond_0

    const-string p1, "Warning!!! "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(Line:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")] "

    invoke-static {v0, p0, p2}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmPeekStack()Ljava/lang/StackTraceElement;
    .locals 6

    invoke-direct {p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmGetStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmGetClassNameList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StackTraceElement;

    const/4 v0, -0x1

    const-string v1, "<idmGetStackTrace() failed>"

    invoke-direct {p0, v1, v1, v1, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method private idmPrintLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmMakeLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/idm/adapter/logmanager/IDMLogManager$1;->$SwitchMap$com$idm$adapter$logmanager$IDMLogManagerInterface$LogLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const-string v0, "IDM_FOTA"

    packed-switch p2, :pswitch_data_0

    sget-object p2, Lcom/idm/adapter/logmanager/IDMLogManagerInterface;->priorities:[I

    sget-object v1, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->W:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-virtual {v1}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->getLevel()I

    move-result v1

    aget p2, p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Logger: Invalid priority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->getLevel()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    sget-object p2, Lcom/idm/adapter/logmanager/IDMLogManagerInterface;->priorities:[I

    invoke-virtual {p1}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->getLevel()I

    move-result p1

    aget p1, p2, p1

    invoke-static {p1, v0, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public D(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->D:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-direct {p0, v0, p1}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmPrintLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->E:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-direct {p0, v0, p1}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmPrintLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->H:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-direct {p0, v0, p1}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmPrintLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->I:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-direct {p0, v0, p1}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmPrintLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->V:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-direct {p0, v0, p1}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmPrintLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->W:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-direct {p0, v0, p1}, Lcom/idm/adapter/logmanager/IDMLogManager;->idmPrintLog(Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/adapter/logmanager/IDMLogManager;->H(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

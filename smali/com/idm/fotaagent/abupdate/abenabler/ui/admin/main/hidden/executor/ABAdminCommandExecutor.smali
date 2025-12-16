.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABAdminCommandExecutor;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;
.source "SourceFile"


# static fields
.field static final PATH_FOR_AB:Ljava/lang/String; = "com.idm.fotaagent.abupdate.abenabler.ui.admin.main.hidden.command."


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createCommandInstance(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABAdminCommandExecutor;->getPackagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;->getClassFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;->getPackagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;->getClassFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;->context:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;

    return-object p0
.end method

.method public getPackagePath()Ljava/lang/String;
    .locals 0

    const-string p0, "com.idm.fotaagent.abupdate.abenabler.ui.admin.main.hidden.command."

    return-object p0
.end method

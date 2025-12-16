.class public final synthetic Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getlog;->c(Ljava/io/File;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic LD2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/InitExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/InitExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/b;->a:Lcom/idm/fotaagent/InitExecutor;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, LD2/b;->a:Lcom/idm/fotaagent/InitExecutor;

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor;->isDmInitialized()Z

    move-result p0

    return p0
.end method

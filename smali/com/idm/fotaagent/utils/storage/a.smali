.class public final synthetic Lcom/idm/fotaagent/utils/storage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/utils/storage/FileManager;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/utils/storage/FileManager;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/utils/storage/a;->a:Lcom/idm/fotaagent/utils/storage/FileManager;

    iput-object p2, p0, Lcom/idm/fotaagent/utils/storage/a;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/utils/storage/a;->b:[Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    iget-object p0, p0, Lcom/idm/fotaagent/utils/storage/a;->a:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->c(Lcom/idm/fotaagent/utils/storage/FileManager;[Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

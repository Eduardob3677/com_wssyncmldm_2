.class public final synthetic Lcom/idm/adapter/filesystem/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/adapter/filesystem/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    iget p0, p0, Lcom/idm/adapter/filesystem/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    return-wide p0

    :pswitch_0
    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->a(Ljava/nio/file/Path;)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

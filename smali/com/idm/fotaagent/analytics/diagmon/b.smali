.class public final synthetic Lcom/idm/fotaagent/analytics/diagmon/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/analytics/diagmon/b;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/analytics/diagmon/b;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/idm/fotaagent/analytics/diagmon/b;->d:Landroid/content/Context;

    iget p0, p0, Lcom/idm/fotaagent/analytics/diagmon/b;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lh0/d;

    invoke-direct {p0, v1}, Lh0/d;-><init>(I)V

    sget-object v0, Lh0/f;->a:Le4/d;

    invoke-static {v2, p0, v0, v1}, Lh0/f;->t(Landroid/content/Context;Ljava/util/concurrent/Executor;Lh0/e;Z)V

    return-void

    :pswitch_0
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v1, Lcom/idm/fotaagent/analytics/diagmon/b;

    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/analytics/diagmon/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {p0, v2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    sget v1, LF/b;->a:I

    sget-object v1, Le/r;->g:Lo/c;

    invoke-virtual {v1}, Lo/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    move-object v4, v1

    check-cast v4, Lo/g;

    invoke-virtual {v4}, Lo/g;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "locale"

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lo/g;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/r;

    if-eqz v4, :cond_0

    check-cast v4, Le/C;

    iget-object v4, v4, Le/C;->k:Landroid/content/Context;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Le/q;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v1

    new-instance v4, LF/i;

    new-instance v5, LF/j;

    invoke-direct {v5, v1}, LF/j;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5}, LF/i;-><init>(LF/j;)V

    goto :goto_1

    :cond_2
    sget-object v4, LF/i;->b:LF/i;

    :goto_1
    iget-object v1, v4, LF/i;->a:LF/j;

    iget-object v1, v1, LF/j;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    const-string v4, "AppLocalesStorageHelper"

    const-string v5, ""

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    :cond_3
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v3, :cond_6

    if-ne v11, v0, :cond_4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_6

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_3
    if-eq v11, v0, :cond_3

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "locales"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v0, "application_locales"

    invoke-interface {v9, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz v8, :cond_7

    :goto_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_0
    :try_start_3
    const-string v0, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_7

    goto :goto_4

    :catch_1
    :cond_7
    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    invoke-virtual {v2, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_7

    :goto_6
    if-eqz v8, :cond_9

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_9
    throw p0

    :catch_3
    const-string v0, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v5}, Le/p;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Le/q;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_a
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_b
    sput-boolean v3, Le/r;->f:Z

    return-void

    :pswitch_2
    invoke-static {v2}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->b(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

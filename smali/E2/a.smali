.class public final synthetic LE2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
.implements LR0/f;
.implements LS1/z;
.implements Lb2/f;
.implements Lcom/idm/core/ddf/DDFParsingStrategy;
.implements Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;
.implements Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;
.implements Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;
.implements Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LE2/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LL0/b;->a()LJ/r0;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LJ/r0;->o(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, LU0/a;->b(I)LI0/c;

    move-result-object v2

    iput-object v2, v1, LJ/r0;->e:Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v2, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    :goto_1
    iput-object v2, v1, LJ/r0;->d:Ljava/lang/Object;

    invoke-virtual {v1}, LJ/r0;->b()LL0/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public get(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1, p2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->y(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getAction(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;
    .locals 0

    iget p0, p0, LE2/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->e(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->b(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->k(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->t(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->n(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;->f(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBigTextStyle(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
    .locals 0

    iget p0, p0, LE2/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->p(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;->l(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public getSmallIcon()I
    .locals 0

    iget p0, p0, LE2/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->v()I

    move-result p0

    return p0

    :pswitch_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->c()I

    move-result p0

    return p0

    :pswitch_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->r()I

    move-result p0

    return p0

    :pswitch_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->s()I

    move-result p0

    return p0

    :pswitch_3
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;->w()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m(Lb2/t;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->a(Lb2/t;)LI0/d;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    iget p0, p0, LE2/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->i(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->a(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void

    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->q(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void

    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->d(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void

    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->x(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseValue(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 0

    iget p0, p0, LE2/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/idm/core/ddf/DDFParsingStrategy;->o(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lcom/idm/core/ddf/DDFParsingStrategy;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lcom/idm/core/ddf/DDFParsingStrategy;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public z(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget p0, p0, LE2/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "tv"

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "watch"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "auto"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.type.embedded"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "embedded"

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    const-string p0, ""

    :goto_2
    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-string p0, ""

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/d;
.source "SourceFile"


# static fields
.field public static final ACTION_DIRECT_BOOT_REMOTE_INTENT:Ljava/lang/String; = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

.field private static final recentlyReceivedMessageIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/google/firebase/messaging/p;->y()Lcom/google/firebase/messaging/p;

    move-result-object p0

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "FirebaseMessaging"

    const-string v5, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    if-nez v3, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "token"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Unknown intent action: "

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string v0, "google.message_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v6, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Received duplicate message: "

    if-eqz v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_6
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    const/16 v9, 0xa

    if-lt v8, v9, :cond_7

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_7
    invoke-interface {v6, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_3
    const-string v3, "message_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "gcm"

    if-nez v3, :cond_8

    move-object v3, v6

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v6, "send_event"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v11

    goto :goto_5

    :sswitch_1
    const-string v6, "send_error"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    goto :goto_5

    :sswitch_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v9

    goto :goto_5

    :sswitch_3
    const-string v6, "deleted_messages"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v10

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v6, -0x1

    :goto_5
    const-string v8, "message_id"

    if-eqz v6, :cond_10

    if-eq v6, v10, :cond_f

    if-eq v6, v11, :cond_e

    if-eq v6, v7, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Received message with unknown type: "

    if-eqz v0, :cond_a

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_b
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    new-instance v3, LW1/h;

    const-string v4, "error"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_8

    :sswitch_4
    const-string v4, "missing_to"

    :goto_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_8

    :sswitch_5
    const-string v4, "messagetoobig"

    goto :goto_7

    :sswitch_6
    const-string v4, "invalid_parameters"

    goto :goto_7

    :sswitch_7
    const-string v4, "toomanymessages"

    goto :goto_7

    :sswitch_8
    const-string v4, "service_not_available"

    goto :goto_7

    :goto_8
    invoke-virtual {v1, v0, v3}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1d

    :cond_e
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    goto/16 :goto_1d

    :cond_10
    invoke-static/range {p1 .. p1}, LW1/a;->l0(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "_nr"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v3}, LW1/a;->Y(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :catch_0
    :cond_12
    :goto_9
    move v3, v9

    goto :goto_a

    :cond_13
    const-string v3, "delivery_metrics_exported_to_big_query_enabled"

    :try_start_0
    invoke-static {}, LW1/g;->d()LW1/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, LW1/g;->d()LW1/g;

    move-result-object v5

    invoke-virtual {v5}, LW1/g;->a()V

    const-string v6, "com.google.firebase.messaging"

    iget-object v5, v5, LW1/g;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "export_to_big_query"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_a

    :cond_14
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x80

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_12

    invoke-virtual {v6, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v3, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_1
    const-string v3, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_a
    if-eqz v3, :cond_29

    sget-object v23, Lr2/a;->d:Lr2/a;

    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessaging;->k:LI0/d;

    if-nez v3, :cond_15

    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_16

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_16
    const-string v6, "google.ttl"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_18

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_17
    :goto_b
    move/from16 v21, v9

    goto :goto_c

    :cond_18
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_17

    :try_start_2
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid TTL: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :goto_c
    const-string v6, "google.to"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    :goto_d
    move-object/from16 v16, v6

    goto :goto_e

    :cond_19
    :try_start_3
    invoke-static {}, LW1/g;->d()LW1/g;

    move-result-object v6

    sget-object v7, Ll2/c;->m:Ljava/lang/Object;

    const-class v7, Ll2/d;

    invoke-virtual {v6, v7}, LW1/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll2/c;

    invoke-virtual {v6}, Ll2/c;->c()Lu1/n;

    move-result-object v6

    invoke-static {v6}, Lp0/a;->a(Lu1/h;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_d

    :goto_e
    invoke-static {}, LW1/g;->d()LW1/g;

    move-result-object v6

    invoke-virtual {v6}, LW1/g;->a()V

    iget-object v6, v6, LW1/g;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    sget-object v18, Lr2/c;->d:Lr2/c;

    invoke-static {v5}, Lcom/google/firebase/messaging/g;->h(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Lr2/b;->e:Lr2/b;

    :goto_f
    move-object/from16 v17, v6

    goto :goto_10

    :cond_1a
    sget-object v6, Lr2/b;->d:Lr2/b;

    goto :goto_f

    :goto_10
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    const-string v6, ""

    if-eqz v0, :cond_1c

    move-object v15, v0

    goto :goto_11

    :cond_1c
    move-object v15, v6

    :goto_11
    const-string v0, "from"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v7, "/topics/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1e

    move-object/from16 v22, v0

    goto :goto_13

    :cond_1e
    move-object/from16 v22, v6

    :goto_13
    const-string v0, "collapse_key"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object/from16 v20, v0

    goto :goto_14

    :cond_1f
    move-object/from16 v20, v6

    :goto_14
    const-string v0, "google.c.a.m_l"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object/from16 v24, v0

    goto :goto_15

    :cond_20
    move-object/from16 v24, v6

    :goto_15
    const-string v0, "google.c.a.c_l"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    move-object/from16 v25, v0

    goto :goto_16

    :cond_21
    move-object/from16 v25, v6

    :goto_16
    const-string v0, "google.c.sender.id"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_22

    :try_start_4
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_18

    :catch_3
    move-exception v0

    const-string v5, "error parsing project number"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    invoke-static {}, LW1/g;->d()LW1/g;

    move-result-object v5

    invoke-virtual {v5}, LW1/g;->a()V

    iget-object v6, v5, LW1/g;->c:LW1/j;

    iget-object v0, v6, LW1/j;->e:Ljava/lang/String;

    if-eqz v0, :cond_23

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_18

    :catch_4
    move-exception v0

    move-object v9, v0

    const-string v0, "error parsing sender ID"

    invoke-static {v4, v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    invoke-virtual {v5}, LW1/g;->a()V

    const-string v0, "1:"

    iget-object v5, v6, LW1/j;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "error parsing app ID"

    if-nez v0, :cond_24

    :try_start_6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_18

    :catch_5
    move-exception v0

    move-object v5, v0

    invoke-static {v4, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_24
    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-ge v5, v11, :cond_25

    :goto_17
    move-wide v5, v7

    goto :goto_18

    :cond_25
    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_17

    :cond_26
    :try_start_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_18

    :catch_6
    move-exception v0

    move-object v5, v0

    invoke-static {v4, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :goto_18
    cmp-long v0, v5, v7

    if-lez v0, :cond_27

    move-wide v13, v5

    goto :goto_19

    :cond_27
    move-wide v13, v7

    :goto_19
    new-instance v0, Lr2/d;

    move-object v12, v0

    invoke-direct/range {v12 .. v25}, Lr2/d;-><init>(JLjava/lang/String;Ljava/lang/String;Lr2/b;Lr2/c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lr2/a;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    const-string v5, "proto"

    new-instance v6, LI0/b;

    invoke-direct {v6, v5}, LI0/b;-><init>(Ljava/lang/String;)V

    check-cast v3, LL0/j;

    iget-object v5, v3, LL0/j;->a:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    new-instance v5, LD3/e;

    iget-object v7, v3, LL0/j;->b:LL0/b;

    iget-object v3, v3, LL0/j;->c:LL0/k;

    invoke-direct {v5, v7, v6, v3}, LD3/e;-><init>(LL0/b;LI0/b;LL0/k;)V

    new-instance v3, Lr2/e;

    invoke-direct {v3, v0}, Lr2/e;-><init>(Lr2/d;)V

    new-instance v0, LI0/a;

    invoke-direct {v0, v3}, LI0/a;-><init>(Lr2/e;)V

    invoke-virtual {v5, v0}, LD3/e;->p(LI0/a;)V

    goto :goto_1b

    :catch_7
    move-exception v0

    goto :goto_1a

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "%s is not supported byt this factory. Supported encodings are: %s."

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_1a
    const-string v3, "Failed to send big query analytics payload."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2a
    const-string v3, "androidx.content.wakelockid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/messaging/g;->h(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2c

    new-instance v3, Lcom/google/firebase/messaging/g;

    invoke-direct {v3, v0}, Lcom/google/firebase/messaging/g;-><init>(Landroid/os/Bundle;)V

    new-instance v4, Li1/a;

    const-string v5, "Firebase-Messaging-Network-Io"

    invoke-direct {v4, v5}, Li1/a;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, LJ/r0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, LJ/r0;->c:Ljava/lang/Object;

    iput-object v1, v5, LJ/r0;->d:Ljava/lang/Object;

    iput-object v3, v5, LJ/r0;->e:Ljava/lang/Object;

    :try_start_9
    invoke-virtual {v5}, LJ/r0;->j()Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_2b

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1d

    :cond_2b
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-static/range {p1 .. p1}, LW1/a;->l0(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "_nf"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, v3}, LW1/a;->Y(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1c

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v1

    :cond_2c
    :goto_1c
    new-instance v2, Lcom/google/firebase/messaging/n;

    invoke-direct {v2, v0}, Lcom/google/firebase/messaging/n;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/n;)V

    :cond_2d
    :goto_1d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x67e7c3ad -> :sswitch_8
        -0x4cf26401 -> :sswitch_7
        -0x36e3eace -> :sswitch_6
        -0x24c7160d -> :sswitch_5
        -0x5aa500c -> :sswitch_4
    .end sparse-switch
.end method

.method public onDeletedMessages()V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/n;)V
    .locals 0

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

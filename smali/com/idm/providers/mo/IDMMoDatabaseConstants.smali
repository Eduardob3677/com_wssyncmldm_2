.class public interface abstract Lcom/idm/providers/mo/IDMMoDatabaseConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DM_MO_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS \'%s\' (path TEXT NOT NULL PRIMARY KEY, name TEXT NOT NULL, acl TEXT, scope INTEGER  NOT NULL, format TEXT, type TEXT, depth INTEGER NOT NULL, value TEXT, largeobjsize INTEGER NOT NULL DEFAULT 0);"

.field public static final DM_XFUMO_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS xfumo (server_id TEXT NOT NULL PRIMARY KEY, xfumo TEXT);"

.field public static final DM_XNODE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS xnode (server_id TEXT NOT NULL PRIMARY KEY, xdmacc TEXT NOT NULL, xcon TEXT, xaddr TEXT NOT NULL, xport TEXT, xclientaddr TEXT NOT NULL, xserveraddr TEXT NOT NULL, xfumo TEXT);"

.field public static final IDM_ACL:Ljava/lang/String; = "acl"

.field public static final IDM_DEPTH:Ljava/lang/String; = "depth"

.field public static final IDM_FORMAT:Ljava/lang/String; = "format"

.field public static final IDM_ID:Ljava/lang/String; = "_id"

.field public static final IDM_LARGEOBGSIZE:Ljava/lang/String; = "largeobjsize"

.field public static final IDM_NAME:Ljava/lang/String; = "name"

.field public static final IDM_PATH:Ljava/lang/String; = "path"

.field public static final IDM_SCOPE:Ljava/lang/String; = "scope"

.field public static final IDM_SERVERID:Ljava/lang/String; = "server_id"

.field public static final IDM_TABLE_NAME_DMMO:Ljava/lang/String; = "dmmos"

.field public static final IDM_TABLE_NAME_XFUMO:Ljava/lang/String; = "xfumo"

.field public static final IDM_TABLE_NAME_XNODE:Ljava/lang/String; = "xnode"

.field public static final IDM_TYPE:Ljava/lang/String; = "type"

.field public static final IDM_VALUE:Ljava/lang/String; = "value"

.field public static final IDM_XADDR:Ljava/lang/String; = "xaddr"

.field public static final IDM_XCLIENTADDR:Ljava/lang/String; = "xclientaddr"

.field public static final IDM_XCON:Ljava/lang/String; = "xcon"

.field public static final IDM_XDMACC:Ljava/lang/String; = "xdmacc"

.field public static final IDM_XFUMO:Ljava/lang/String; = "xfumo"

.field public static final IDM_XPORT:Ljava/lang/String; = "xport"

.field public static final IDM_XSERVERADDR:Ljava/lang/String; = "xserveraddr"

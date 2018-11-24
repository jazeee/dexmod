.class Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;
.super Ljava/lang/Object;
.source "AndroidDatabaseLogProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;

.field final synthetic val$logMessage:Ljava/lang/String;

.field final synthetic val$logTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;->this$0:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;->val$logTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;->val$logMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;->this$0:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->access$000(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;)Lcom/dexcom/cgm/d/a;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/model/DebugLogRecord;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;->val$logTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;->val$logMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/model/DebugLogRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/d/a;->saveDebugLog(Lcom/dexcom/cgm/model/DebugLogRecord;)V

    .line 203
    return-void
.end method

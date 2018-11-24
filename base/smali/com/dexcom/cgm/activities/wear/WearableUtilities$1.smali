.class Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;
.super Ljava/lang/Object;
.source "WearableUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/wear/WearableUtilities;

.field final synthetic val$jsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/wear/WearableUtilities;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;->this$0:Lcom/dexcom/cgm/activities/wear/WearableUtilities;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;->val$jsonString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;->this$0:Lcom/dexcom/cgm/activities/wear/WearableUtilities;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->access$000(Lcom/dexcom/cgm/activities/wear/WearableUtilities;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 129
    const-string v0, "/cgm"

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataMapRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v1

    const-string v2, "FollowerList"

    iget-object v3, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;->val$jsonString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/PutDataMapRequest;->asPutDataRequest()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;->this$0:Lcom/dexcom/cgm/activities/wear/WearableUtilities;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->access$000(Lcom/dexcom/cgm/activities/wear/WearableUtilities;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/wearable/DataApi;->putDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 135
    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send data to watch. Status message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method

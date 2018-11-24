.class public Lcom/dexcom/cgm/activities/wear/WearableUtilities;
.super Ljava/lang/Object;
.source "WearableUtilities.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/wearable/DataApi$DataListener;


# static fields
.field private static final FOLLOWER_LIST_KEY:Ljava/lang/String; = "FollowerList"

.field private static final WEARABLE_DEVICE_DATA:Ljava/lang/String; = "WEARABLE_DEVICE_DATA"


# instance fields
.field private m_googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private m_listener:Lcom/dexcom/cgm/activities/wear/WearableDataUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dexcom/cgm/activities/wear/WearableDataUpdateListener;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->m_listener:Lcom/dexcom/cgm/activities/wear/WearableDataUpdateListener;

    .line 48
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->m_googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/wear/WearableUtilities;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->m_googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private sendStringToWearable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;

    invoke-direct {v1, p0, p1}, Lcom/dexcom/cgm/activities/wear/WearableUtilities$1;-><init>(Lcom/dexcom/cgm/activities/wear/WearableUtilities;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    const-string v0, "Wear"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->m_googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/wearable/DataApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 61
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 66
    const-string v0, "Wear"

    const-string v1, "onConnectionFailed"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 100
    const-string v0, "Wear"

    const-string v1, "onConnectionSuspended"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataEvent;

    .line 75
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/cgm_refresh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->m_listener:Lcom/dexcom/cgm/activities/wear/WearableDataUpdateListener;

    invoke-interface {v2}, Lcom/dexcom/cgm/activities/wear/WearableDataUpdateListener;->onDataRefresh()V

    .line 83
    const-string v2, "Wear"

    const-string v3, "onDataChanged"

    invoke-static {v2, v3}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/wearable_device_data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const-string v2, "Wear"

    const-string v3, "Received Runtime Data from Watch"

    invoke-static {v2, v3}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/DataMapItem;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v0

    .line 90
    const-string v2, "WEARABLE_DEVICE_DATA"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logWatchRuntimeInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->m_googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/wearable/DataApi;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 108
    return-void
.end method

.method public sendDataToWearable(Lcom/dexcom/cgm/i/a/e;)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "Wear"

    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->sendStringToWearable(Ljava/lang/String;)V

    .line 119
    return-void
.end method

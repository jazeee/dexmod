.class Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;
.super Ljava/lang/Object;
.source "SHealthSubscriber.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2$1;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method public onPermissionsAcquired()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2$2;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public onPermissionsNotAcquired()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2$3;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

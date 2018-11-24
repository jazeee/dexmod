.class Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;
.super Ljava/lang/Object;
.source "SHealthSubscriber.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/healthdata/aj",
        "<",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$1;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$2;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

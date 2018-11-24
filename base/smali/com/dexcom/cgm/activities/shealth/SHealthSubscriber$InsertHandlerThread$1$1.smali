.class Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$1;
.super Ljava/lang/Object;
.source "SHealthSubscriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$1;->this$2:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$1;->this$2:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$400(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$1;->this$2:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    .line 286
    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$700(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    .line 286
    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/d/e;->setLastSHealthEGVTimeStamp(J)V

    .line 288
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$1;->this$2:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$000(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->insertNextList()V

    .line 289
    return-void
.end method

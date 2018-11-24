.class Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$2;
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
    .line 295
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$2;->this$2:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1$2;->this$2:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$000(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->access$1000(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)V

    .line 300
    return-void
.end method

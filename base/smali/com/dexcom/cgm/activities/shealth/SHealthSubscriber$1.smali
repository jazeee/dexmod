.class Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$1;
.super Ljava/lang/Object;
.source "SHealthSubscriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$1;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$000(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->connectToSHealth()V

    .line 101
    return-void
.end method

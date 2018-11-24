.class Landroid/support/wearable/watchface/WatchFaceService$Engine$1;
.super Landroid/content/BroadcastReceiver;
.source "WatchFaceService.java"


# instance fields
.field final synthetic this$1:Landroid/support/wearable/watchface/WatchFaceService$Engine;


# direct methods
.method constructor <init>(Landroid/support/wearable/watchface/WatchFaceService$Engine;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/WatchFaceService$Engine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 221
    const-string v0, "WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received intent that triggers onTimeTick for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/WatchFaceService$Engine;

    invoke-virtual {v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onTimeTick()V

    .line 225
    return-void
.end method

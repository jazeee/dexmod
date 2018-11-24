.class Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$2;
.super Landroid/os/Handler;
.source "Gles2WatchFaceService.java"


# instance fields
.field final synthetic this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;


# direct methods
.method constructor <init>(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$2;->this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$2;->this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    invoke-virtual {v0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->invalidate()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

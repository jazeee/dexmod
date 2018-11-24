.class Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;
.super Ljava/lang/Object;
.source "Gles2WatchFaceService.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;


# direct methods
.method constructor <init>(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    invoke-static {v0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->access$000(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    invoke-static {v0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->access$100(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    invoke-static {v0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->access$200(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V

    goto :goto_0
.end method

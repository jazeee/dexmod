.class Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;
.super Ljava/lang/Object;
.source "CanvasWatchFaceService.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic this$1:Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;


# direct methods
.method constructor <init>(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    invoke-static {v0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->access$000(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    invoke-static {v0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->access$100(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    iget-object v1, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;->this$1:Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    invoke-virtual {v1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->access$200(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

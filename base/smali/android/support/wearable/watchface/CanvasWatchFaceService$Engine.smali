.class public Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;
.super Landroid/support/wearable/watchface/WatchFaceService$Engine;
.source "CanvasWatchFaceService.java"


# static fields
.field private static final MSG_INVALIDATE:I


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mDestroyed:Z

.field private mDrawRequested:Z

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/support/wearable/watchface/CanvasWatchFaceService;


# direct methods
.method public constructor <init>(Landroid/support/wearable/watchface/CanvasWatchFaceService;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/CanvasWatchFaceService;

    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;-><init>(Landroid/support/wearable/watchface/WatchFaceService;)V

    .line 45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    .line 47
    new-instance v0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$1;-><init>(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 60
    new-instance v0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$2;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine$2;-><init>(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mDrawRequested:Z

    return v0
.end method

.method static synthetic access$200(Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->draw(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private draw(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mDrawRequested:Z

    .line 145
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 146
    if-nez v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    .line 161
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mDrawRequested:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mDrawRequested:Z

    .line 116
    iget-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mDestroyed:Z

    .line 74
    iget-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 76
    invoke-super {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onDestroy()V

    .line 77
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 81
    const-string v0, "CanvasWatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "CanvasWatchFaceService"

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 85
    invoke-virtual {p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->invalidate()V

    .line 86
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "CanvasWatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "CanvasWatchFaceService"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 103
    invoke-virtual {p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->invalidate()V

    .line 104
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "CanvasWatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "CanvasWatchFaceService"

    const-string v1, "onSurfaceRedrawNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 94
    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->draw(Landroid/view/SurfaceHolder;)V

    .line 95
    return-void
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method

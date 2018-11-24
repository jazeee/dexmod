.class public Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;
.super Landroid/support/wearable/watchface/WatchFaceService$Engine;
.source "Gles2WatchFaceService.java"


# static fields
.field private static final MSG_INVALIDATE:I


# instance fields
.field private mCalledOnGlContextCreated:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDestroyed:Z

.field private mDrawRequested:Z

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mInsetBottom:I

.field private mInsetLeft:I

.field final synthetic this$0:Landroid/support/wearable/watchface/Gles2WatchFaceService;


# direct methods
.method public constructor <init>(Landroid/support/wearable/watchface/Gles2WatchFaceService;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/Gles2WatchFaceService;

    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;-><init>(Landroid/support/wearable/watchface/WatchFaceService;)V

    .line 80
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    .line 82
    new-instance v0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;-><init>(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 95
    new-instance v0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$2;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$2;-><init>(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    return v0
.end method

.method static synthetic access$200(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->drawFrame()V

    return-void
.end method

.method private drawFrame()V
    .locals 2

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    .line 352
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->makeContextCurrent()V

    .line 360
    :try_start_0
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->onDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglSwapBuffers failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private makeContextCurrent()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseEglConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 147
    new-array v6, v5, [I

    .line 148
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 149
    invoke-static {}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->access$300()[I

    move-result-object v1

    move-object v0, p1

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    aget v0, v6, v2

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no matching EGL configs"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    aget-object v0, v3, v2

    return-object v0
.end method

.method public createEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 3

    .prologue
    .line 167
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->access$400()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    .line 169
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateContext failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    return-object v0
.end method

.method public createWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;
    .locals 3

    .prologue
    .line 184
    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->access$500()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 186
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateWindowSurface failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    return-object v0
.end method

.method public initializeEglDisplay()Landroid/opengl/EGLDisplay;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 115
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay returned EGL_NO_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 121
    invoke-static {v0, v1, v5, v1, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    const-string v2, "Gles2WatchFaceService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    const-string v2, "Gles2WatchFaceService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EGL version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    .line 330
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 4

    .prologue
    .line 259
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onApplyWindowInsets: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetLeft:I

    .line 269
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetBottom:I

    .line 270
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->makeContextCurrent()V

    .line 271
    iget v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetBottom:I

    neg-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 273
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 204
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 207
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->initializeEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 210
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->chooseEglConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 213
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->createEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    .line 216
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDestroyed:Z

    .line 221
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 223
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglDestroySurface failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iput-object v2, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 229
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglDestroyContext failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    iput-object v2, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    .line 235
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglTerminate failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_4
    iput-object v2, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 241
    :cond_5
    invoke-super {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onDestroy()V

    .line 242
    return-void
.end method

.method public onDraw()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onGlContextCreated()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onGlSurfaceCreated(II)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 278
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 281
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglDestroySurface failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->createWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 288
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->makeContextCurrent()V

    .line 289
    iget v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetLeft:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetBottom:I

    neg-int v1, v1

    invoke-static {v0, v1, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 290
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mCalledOnGlContextCreated:Z

    if-nez v0, :cond_2

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mCalledOnGlContextCreated:Z

    .line 292
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->onGlContextCreated()V

    .line 294
    :cond_2
    invoke-virtual {p0, p3, p4}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->onGlSurfaceCreated(II)V

    .line 296
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->invalidate()V

    .line 297
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 311
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglDestroySurface failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    throw v0
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 301
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onSurfaceRedrawNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 306
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->drawFrame()V

    .line 307
    return-void
.end method

.method public final postInvalidate()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    return-void
.end method

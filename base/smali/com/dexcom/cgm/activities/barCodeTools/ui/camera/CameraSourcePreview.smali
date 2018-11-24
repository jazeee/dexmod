.class public Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;
.super Landroid/view/ViewGroup;
.source "CameraSourcePreview.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSourcePreview"


# instance fields
.field private mCameraSource:Lcom/google/android/gms/vision/CameraSource;

.field private mContext:Landroid/content/Context;

.field private mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

.field private mStartRequested:Z

.field private mSurfaceAvailable:Z

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mContext:Landroid/content/Context;

    .line 35
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mStartRequested:Z

    .line 36
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z

    .line 38
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->addView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->startIfReady()V

    return-void
.end method

.method private isPortraitMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    iget-object v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 162
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 170
    :goto_0
    return v0

    .line 165
    :cond_0
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    const-string v1, "CameraSourcePreview"

    const-string v2, "isPortraitMode returning false by default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startIfReady()V
    .locals 4

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mStartRequested:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;

    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->getPreviewSize()Lcom/google/android/gms/common/images/Size;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 81
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->isPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v3}, Lcom/google/android/gms/vision/CameraSource;->getCameraFacing()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->setCameraInfo(III)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->clear()V

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mStartRequested:Z

    .line 92
    :cond_1
    return-void

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v3}, Lcom/google/android/gms/vision/CameraSource;->getCameraFacing()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->setCameraInfo(III)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 117
    const/16 v1, 0x140

    .line 118
    const/16 v0, 0xf0

    .line 119
    iget-object v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource;->getPreviewSize()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v1

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->isPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v1

    move v5, v0

    .line 136
    :goto_0
    sub-int v2, p4, p2

    .line 137
    sub-int v0, p5, p3

    .line 141
    int-to-float v1, v2

    int-to-float v6, v5

    div-float/2addr v1, v6

    int-to-float v6, v4

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 144
    if-le v1, v0, :cond_2

    .line 146
    int-to-float v1, v0

    int-to-float v2, v4

    div-float/2addr v1, v2

    int-to-float v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_1
    move v2, v3

    .line 149
    :goto_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 150
    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 154
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->startIfReady()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_3
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "CameraSourcePreview"

    const-string v2, "Could not start camera source."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_3
    move v4, v0

    move v5, v1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->release()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    .line 72
    :cond_0
    return-void
.end method

.method public start(Lcom/google/android/gms/vision/CameraSource;)V
    .locals 1

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->stop()V

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mStartRequested:Z

    .line 52
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->startIfReady()V

    .line 54
    :cond_1
    return-void
.end method

.method public start(Lcom/google/android/gms/vision/CameraSource;Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V
    .locals 0

    .prologue
    .line 57
    iput-object p2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    .line 58
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->start(Lcom/google/android/gms/vision/CameraSource;)V

    .line 59
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 65
    :cond_0
    return-void
.end method

.class public Lcom/dexcom/cgm/activities/ScanBarcodeActivity;
.super Landroid/app/Activity;
.source "ScanBarcodeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static final NOTE_5_MODEL_PREFIX:Ljava/lang/String; = "SM-N920"

.field static final S6_EDGE_MODEL_PREFIX:Ljava/lang/String; = "SM-G925"


# instance fields
.field private REQUEST_CAMERA:I

.field barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field barcode_result:Ljava/lang/String;

.field cameraHeight:I

.field cameraWidth:I

.field mActivity:Landroid/app/Activity;

.field mCameraSource:Lcom/google/android/gms/vision/CameraSource;

.field mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

.field myDexDialog:Lcom/dexcom/cgm/activities/DexDialogBuilder;

.field mySurfaceHolder:Landroid/view/SurfaceHolder;

.field private parentLayout:Landroid/view/View;

.field surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->REQUEST_CAMERA:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->prepExit()V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->prepErrorDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->REQUEST_CAMERA:I

    return v0
.end method

.method private prepErrorDialog()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;-><init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method private prepExit()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 220
    new-instance v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;-><init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method private requestCameraPermission()V
    .locals 3

    .prologue
    .line 380
    const-string v0, "Account Activity"

    const-string v1, "CAMERA permission has NOT been granted. Requesting permission."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "Account Activity"

    const-string v1, "Displaying camera permission rationale to provide additional context."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_camera_scan_rationale:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    new-instance v2, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$4;-><init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V

    .line 394
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->REQUEST_CAMERA:I

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setupCamera()V
    .locals 3

    .prologue
    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->cameraWidth:I

    .line 303
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->cameraHeight:I

    .line 305
    new-instance v0, Lcom/google/android/gms/vision/CameraSource$Builder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    const/4 v1, 0x0

    .line 306
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setFacing(I)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->cameraWidth:I

    iget v2, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->cameraHeight:I

    .line 307
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/vision/CameraSource$Builder;->setRequestedPreviewSize(II)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 308
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setAutoFocusEnabled(Z)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource$Builder;->build()Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    .line 310
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;

    .line 314
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 315
    const-string v1, "SM-N920"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-G925"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->setAutoFocus()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private stageBackAnimation()V
    .locals 2

    .prologue
    .line 271
    sget v0, Lcom/dexcom/cgm/activities/R$anim;->synced_slide_in_left:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->synced_slide_out_right:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->overridePendingTransition(II)V

    .line 274
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 256
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 257
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->stageBackAnimation()V

    .line 262
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->onBackPressed()V

    .line 267
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_barcode_scanner:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->setContentView(I)V

    .line 69
    sget v0, Lcom/dexcom/cgm/activities/R$id;->scanParentLayout:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->parentLayout:Landroid/view/View;

    .line 71
    sget v0, Lcom/dexcom/cgm/activities/R$id;->photo_prompt:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->rotate_text_on_center:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/RotateAnimation;

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 77
    sget v0, Lcom/dexcom/cgm/activities/R$anim;->rotate_text_on_center:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/RotateAnimation;

    .line 79
    sget v1, Lcom/dexcom/cgm/activities/R$id;->button_holder:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 80
    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 83
    iput-object p0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mActivity:Landroid/app/Activity;

    .line 85
    sget v0, Lcom/dexcom/cgm/activities/R$id;->camera:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 91
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 92
    new-instance v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V

    .line 93
    iget-object v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    new-instance v2, Lcom/google/android/gms/vision/MultiProcessor$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/vision/MultiProcessor$Builder;-><init>(Lcom/google/android/gms/vision/MultiProcessor$Factory;)V

    invoke-virtual {v2}, Lcom/google/android/gms/vision/MultiProcessor$Builder;->build()Lcom/google/android/gms/vision/MultiProcessor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    new-instance v1, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    new-instance v3, Lcom/google/android/gms/vision/Tracker;

    invoke-direct {v3}, Lcom/google/android/gms/vision/Tracker;-><init>()V

    invoke-direct {v1, p0, v2, v3}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;-><init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 422
    iget v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->REQUEST_CAMERA:I

    if-ne p1, v0, :cond_0

    .line 426
    const-string v0, "Account Activity"

    const-string v1, "Received response for Camera permission request."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 434
    const-string v0, "Account Activity"

    const-string v1, "CAMERA permission has now been granted. Showing preview."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_available_camera_scan:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 438
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->setupCamera()V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string v0, "Account Activity"

    const-string v1, "CAMERA permission was NOT granted."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permissions_not_granted:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 445
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$5;-><init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    return-void
.end method

.method setAutoFocus()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    const-class v0, Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 330
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 332
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/hardware/Camera;

    if-ne v6, v7, :cond_3

    .line 334
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 338
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 342
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    const-string v5, "continuous-picture"

    .line 343
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 364
    :goto_1
    return v0

    .line 348
    :cond_0
    const-string v4, "continuous-picture"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 350
    goto :goto_1

    :cond_1
    move v0, v1

    .line 353
    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 364
    goto :goto_1

    .line 330
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->requestCameraPermission()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->setupCamera()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.class public Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;
.super Lcom/dexcom/cgm/activities/BaseFragment;
.source "BarcodeSetupWizardFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static final NOTE_5_MODEL_PREFIX:Ljava/lang/String; = "SM-N920"

.field static final S6_EDGE_MODEL_PREFIX:Ljava/lang/String; = "SM-G925"


# instance fields
.field private REQUEST_CAMERA:I

.field barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field barcode_result:Ljava/lang/String;

.field public cameraConnected:Z

.field cameraHeight:I

.field cameraWidth:I

.field mCameraSource:Lcom/google/android/gms/vision/CameraSource;

.field mContext:Landroid/content/Context;

.field mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

.field private m_view:Landroid/view/View;

.field myDexDialog:Lcom/dexcom/cgm/activities/DexDialogBuilder;

.field mySurfaceHolder:Landroid/view/SurfaceHolder;

.field mySurfaceHolderHasCallback:Z

.field private parentLayout:Landroid/view/View;

.field public snack:Landroid/support/design/widget/Snackbar;

.field surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BaseFragment;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolderHasCallback:Z

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->REQUEST_CAMERA:I

    .line 67
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->cameraConnected:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->prepBarcodeExit()V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->prepBarCodeErrorDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->m_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->REQUEST_CAMERA:I

    return v0
.end method

.method private prepBarCodeErrorDialog()V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$2;-><init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method private prepBarcodeExit()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolderHasCallback:Z

    .line 264
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;-><init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method private requestCameraPermission()V
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_camera_scan_rationale:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    new-instance v2, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$4;-><init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    .line 396
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->REQUEST_CAMERA:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setupBarcodeReader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->photo_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->rotate_text_on_center:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/RotateAnimation;

    .line 112
    invoke-virtual {v1, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->rotate_text_on_center:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/RotateAnimation;

    .line 117
    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->button_holder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 118
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 120
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 121
    new-instance v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V

    .line 122
    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    new-instance v2, Lcom/google/android/gms/vision/MultiProcessor$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/vision/MultiProcessor$Builder;-><init>(Lcom/google/android/gms/vision/MultiProcessor$Factory;)V

    invoke-virtual {v2}, Lcom/google/android/gms/vision/MultiProcessor$Builder;->build()Lcom/google/android/gms/vision/MultiProcessor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    new-instance v1, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    new-instance v3, Lcom/google/android/gms/vision/Tracker;

    invoke-direct {v3}, Lcom/google/android/gms/vision/Tracker;-><init>()V

    invoke-direct {v1, p0, v2, v3}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;-><init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 229
    return-void
.end method

.method private setupCamera()V
    .locals 3

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->cameraWidth:I

    .line 302
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->cameraHeight:I

    .line 304
    new-instance v0, Lcom/google/android/gms/vision/CameraSource$Builder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setFacing(I)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->cameraWidth:I

    iget v2, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->cameraHeight:I

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/vision/CameraSource$Builder;->setRequestedPreviewSize(II)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 307
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setAutoFocusEnabled(Z)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource$Builder;->build()Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    .line 310
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->cameraConnected:Z

    .line 315
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 316
    const-string v1, "SM-N920"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-G925"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->setAutoFocus()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disconnectCamera()V
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolderHasCallback:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolderHasCallback:Z

    .line 236
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 238
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    .line 83
    invoke-interface {v0, p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 84
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_scan_barcode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->m_view:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->setupScanParentLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->parentLayout:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->setupBarcodeReader()V

    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->m_view:Landroid/view/View;

    return-object v0
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

    .line 412
    iget v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->REQUEST_CAMERA:I

    if-ne p1, v0, :cond_0

    .line 415
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_available_camera_scan:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 419
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->setupCamera()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permissions_not_granted:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 425
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$5;-><init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    iget-boolean v0, v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->IChosePhotoBarcode:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->camera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->surfaceView:Landroid/view/SurfaceView;

    .line 98
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolderHasCallback:Z

    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 103
    :cond_0
    return-void
.end method

.method setAutoFocus()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    const-class v0, Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 331
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 333
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/hardware/Camera;

    if-ne v6, v7, :cond_3

    .line 335
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 339
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    const-string v5, "continuous-picture"

    .line 344
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 365
    :goto_1
    return v0

    .line 349
    :cond_0
    const-string v4, "continuous-picture"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 351
    goto :goto_1

    :cond_1
    move v0, v1

    .line 354
    goto :goto_1

    .line 356
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 365
    goto :goto_1

    .line 331
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mySurfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->requestCameraPermission()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->setupCamera()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

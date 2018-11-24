.class Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;
.super Ljava/lang/Object;
.source "ScanBarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 226
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 227
    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_tx_sn_saved:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 228
    new-instance v1, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3$1;-><init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->setOnToastDisappeared(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

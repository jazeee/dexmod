.class Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;
.super Ljava/lang/Object;
.source "BarcodeSetupWizardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 270
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->access$200(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 272
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 273
    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_tx_sn_saved:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 274
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 275
    return-void
.end method

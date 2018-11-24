.class Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$4;
.super Ljava/lang/Object;
.source "BarcodeSetupWizardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$4;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$4;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$4;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    .line 393
    invoke-static {v2}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->access$300(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)I

    move-result v2

    .line 391
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 394
    return-void
.end method

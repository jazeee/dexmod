.class Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$5;
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
    .line 426
    iput-object p1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$5;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$5;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 431
    return-void
.end method

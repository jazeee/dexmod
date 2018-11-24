.class Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;
.super Ljava/lang/Object;
.source "InitialSetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->access$000(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    .line 457
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->handleAccessCoarseLocation()V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->access$102(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;Z)Z

    .line 464
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    goto :goto_0
.end method

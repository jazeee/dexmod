.class Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;
.super Ljava/lang/Object;
.source "NonInitialSetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->access$000(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    .line 336
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->handleAccessCoarseLocation()V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->access$102(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;Z)Z

    .line 343
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    goto :goto_0
.end method

.class Lcom/dexcom/cgm/activities/SetupWizardFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "SetupWizardFragment.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$2;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$2;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->access$000(Lcom/dexcom/cgm/activities/SetupWizardFragment;)Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$2;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;->onClickPrivacyPolicy(Landroid/view/View;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$2;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

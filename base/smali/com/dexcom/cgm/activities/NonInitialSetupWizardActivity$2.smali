.class Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$2;
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
    .line 352
    iput-object p1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->access$102(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;Z)Z

    .line 358
    return-void
.end method

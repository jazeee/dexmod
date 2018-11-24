.class Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$2;
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
    .line 473
    iput-object p1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->access$102(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;Z)Z

    .line 479
    return-void
.end method

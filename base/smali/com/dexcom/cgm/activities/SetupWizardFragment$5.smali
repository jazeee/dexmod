.class Lcom/dexcom/cgm/activities/SetupWizardFragment$5;
.super Ljava/lang/Object;
.source "SetupWizardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$5;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$5;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->access$000(Lcom/dexcom/cgm/activities/SetupWizardFragment;)Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;->onClickPositive(Landroid/view/View;)V

    .line 331
    return-void
.end method

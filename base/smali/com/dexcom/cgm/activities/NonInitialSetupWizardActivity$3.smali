.class Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$3;
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
    .line 378
    iput-object p1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$3;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$3;->this$0:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->access$102(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;Z)Z

    .line 383
    return-void
.end method

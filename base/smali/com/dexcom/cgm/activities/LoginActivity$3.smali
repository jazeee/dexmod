.class Lcom/dexcom/cgm/activities/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/LoginActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/dexcom/cgm/activities/LoginActivity$3;->this$0:Lcom/dexcom/cgm/activities/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedInitialSetupWizard()Z

    move-result v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    const-class v0, Lcom/dexcom/cgm/activities/TrendActivity;

    .line 243
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/LoginActivity$3;->this$0:Lcom/dexcom/cgm/activities/LoginActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 245
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$3;->this$0:Lcom/dexcom/cgm/activities/LoginActivity;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$3;->this$0:Lcom/dexcom/cgm/activities/LoginActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/LoginActivity;->finish()V

    .line 248
    return-void

    .line 241
    :cond_0
    const-class v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    goto :goto_0
.end method

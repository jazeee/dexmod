.class Lcom/dexcom/cgm/activities/SetupWizardFragment$4;
.super Ljava/lang/Object;
.source "SetupWizardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$4;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$4;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    .line 292
    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$4;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

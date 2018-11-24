.class Lcom/dexcom/cgm/activities/CGMStateFragment$8$2;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$8;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$8$2;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 994
    const-string v0, "techsupport@dexcom.com"

    .line 996
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/support/EmailBuilder;->createEmailIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 997
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$8$2;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$8;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_TechSupport_Email:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    .line 999
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$8$2;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$8;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$8$2;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/CGMStateFragment$8;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->t_get_email_client:I

    .line 1000
    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 999
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->startActivity(Landroid/content/Intent;)V

    .line 1002
    return-void
.end method

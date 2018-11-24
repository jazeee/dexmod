.class Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3$1;
.super Landroid/text/style/ClickableSpan;
.source "FixedAlertDialogCreator.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3$1;->this$0:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "http://www.dexcom.com/android-transmitter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3$1;->this$0:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

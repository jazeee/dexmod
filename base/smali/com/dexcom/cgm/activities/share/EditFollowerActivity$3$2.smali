.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$2;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$2;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$2;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$2;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    .line 176
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->account_edit_no_changes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 175
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    return-void
.end method

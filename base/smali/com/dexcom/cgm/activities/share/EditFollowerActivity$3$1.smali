.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$1;
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
    .line 155
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_81:I

    .line 160
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_24:I

    .line 162
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 164
    return-void
.end method

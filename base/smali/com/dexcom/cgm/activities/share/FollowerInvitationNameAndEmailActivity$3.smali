.class Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;
.super Ljava/lang/Object;
.source "FollowerInvitationNameAndEmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;->val$errorMessage:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_62:I

    .line 192
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 194
    return-void
.end method

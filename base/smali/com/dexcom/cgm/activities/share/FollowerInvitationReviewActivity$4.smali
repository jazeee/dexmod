.class Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;
.super Ljava/lang/Object;
.source "FollowerInvitationReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

.field final synthetic val$stringID:I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;I)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;->val$stringID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;->val$stringID:I

    .line 169
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_62:I

    .line 171
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 173
    return-void
.end method

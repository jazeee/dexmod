.class Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;
.super Ljava/lang/Object;
.source "FollowerInvitationNameAndEmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

.field final synthetic val$firstEmail:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->val$firstEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->sql_injection_excluded_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->stripChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->val$firstEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    .line 93
    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->sql_injection_excluded_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->stripChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

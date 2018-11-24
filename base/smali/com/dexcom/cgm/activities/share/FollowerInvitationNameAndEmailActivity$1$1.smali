.class Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1$1;
.super Ljava/lang/Object;
.source "FollowerInvitationNameAndEmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->access$100(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 100
    return-void
.end method

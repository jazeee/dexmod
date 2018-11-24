.class Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity$1;
.super Ljava/lang/Object;
.source "FollowerInvitationTrendGraphActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v1

    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;

    .line 36
    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 35
    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

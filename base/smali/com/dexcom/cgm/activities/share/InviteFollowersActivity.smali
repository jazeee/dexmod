.class public Lcom/dexcom/cgm/activities/share/InviteFollowersActivity;
.super Landroid/app/Activity;
.source "InviteFollowersActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/InviteFollowersActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/InviteFollowersActivity;->finish()V

    .line 36
    return-void
.end method

.method public onClickInviteFollowers(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/InviteFollowersActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_invite_followers:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/InviteFollowersActivity;->setContentView(I)V

    .line 25
    return-void
.end method

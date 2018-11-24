.class public Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;
.super Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;
.source "FollowerInvitationReviewActivity.java"


# instance fields
.field private m_foreground:Landroid/widget/LinearLayout;

.field private m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->m_foreground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->showDialogWithString(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->onFollowerSuccessfullyInvited()V

    return-void
.end method

.method private onFollowerSuccessfullyInvited()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->clearInstance()V

    .line 134
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method private showDialogWithString(I)V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$4;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;I)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected getCircleArrayIndex()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    return v0
.end method

.method protected getContentViewID()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_follower_invitation_review:I

    return v0
.end method

.method public onClickNext(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)V

    .line 123
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/dexcom/cgm/activities/R$id;->here_is_the_summary:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->insertNameForField(I)V

    .line 37
    sget v0, Lcom/dexcom/cgm/activities/R$id;->follower_settings_list:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;

    .line 39
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->createFollower()Lcom/dexcom/cgm/model/Follower;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setFollower(Lcom/dexcom/cgm/model/Follower;)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setTrendAccessViewVisible(Z)V

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$id;->foreground:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->m_foreground:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 44
    return-void
.end method

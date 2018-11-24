.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareMainActivity.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Lcom/dexcom/cgm/activities/share/ShareMainActivity$1;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    return-void
.end method

.method private configureListClickListener(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Follower;

    .line 634
    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;Lcom/dexcom/cgm/model/Follower;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    return-void
.end method

.method private getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getStringFromFollowerState(Lcom/dexcom/cgm/model/enums/FollowerState;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 603
    sget-object v0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$12;->$SwitchMap$com$dexcom$cgm$model$enums$FollowerState:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/FollowerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 625
    const-string v0, ""

    .line 627
    :goto_0
    return-object v0

    .line 606
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_share_follower_paused:I

    .line 627
    :goto_1
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 610
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_share_follower_invited:I

    goto :goto_1

    .line 614
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_share_follower_removed:I

    goto :goto_1

    .line 619
    :pswitch_3
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_share_invitation_expired:I

    goto :goto_1

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$200(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$200(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 541
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 553
    if-nez p2, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->follower_table_cell:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 560
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Follower;

    .line 561
    sget v1, Lcom/dexcom/cgm/activities/R$id;->follower_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 563
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v1

    sget-object v4, Lcom/dexcom/cgm/model/enums/FollowerState;->Active:Lcom/dexcom/cgm/model/enums/FollowerState;

    if-ne v1, v4, :cond_5

    .line 567
    sget v1, Lcom/dexcom/cgm/activities/R$id;->follower_status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->isUrgentLowEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->isLowEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->isHighEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->isNoDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 572
    :goto_0
    sget v4, Lcom/dexcom/cgm/activities/R$id;->follower_alert_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v1, :cond_3

    move v1, v2

    .line 573
    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->hasTrendPermission()Z

    move-result v0

    .line 576
    sget v1, Lcom/dexcom/cgm/activities/R$id;->follower_trend_graph_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 577
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->configureListClickListener(ILandroid/view/View;)V

    .line 597
    return-object p2

    :cond_2
    move v1, v2

    .line 571
    goto :goto_0

    :cond_3
    move v1, v3

    .line 572
    goto :goto_1

    :cond_4
    move v2, v3

    .line 576
    goto :goto_2

    .line 583
    :cond_5
    sget v1, Lcom/dexcom/cgm/activities/R$id;->follower_alert_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 584
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 585
    sget v1, Lcom/dexcom/cgm/activities/R$id;->follower_trend_graph_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 586
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 588
    sget v1, Lcom/dexcom/cgm/activities/R$id;->follower_status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 592
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->getStringFromFollowerState(Lcom/dexcom/cgm/model/enums/FollowerState;)Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    return v0
.end method

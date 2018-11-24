.class public Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NonInitialSetupWizardActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;


# instance fields
.field private final REQUEST_ENABLE_BT:I

.field private final VIDEO_COMPLETE:I

.field private m_bluetoothButtonFree:Z

.field private m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

.field m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

.field m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

.field m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

.field m_hasCompletedWizard:Z

.field private m_inWebView:Z

.field m_launchedNonAdjunctiveVideo:Z

.field private m_marshmallow:Z

.field private secondsSpent:I

.field private timerStart:J

.field vPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_inWebView:Z

    .line 40
    iput v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->REQUEST_ENABLE_BT:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->VIDEO_COMPLETE:I

    .line 43
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    .line 45
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->timerStart:J

    .line 96
    iput v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    .line 97
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_marshmallow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_marshmallow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    return p1
.end method

.method private handleBluetoothOn()V
    .locals 4

    .prologue
    .line 326
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_bluetooth_on:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$1;-><init>(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    return-void
.end method

.method private handleNoBluetoothSupport()V
    .locals 4

    .prologue
    .line 351
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$2;-><init>(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    return-void
.end method

.method private replaceWebView()V
    .locals 5

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 545
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_in_right:I

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    sget v3, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v4, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 549
    sget v1, Lcom/dexcom/cgm/activities/R$id;->startup_wizard_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 550
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 551
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_inWebView:Z

    .line 553
    return-void
.end method


# virtual methods
.method public changeFragment()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 162
    new-instance v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    sget-object v2, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$4;->$SwitchMap$com$dexcom$cgm$activities$NonInitialSetupWizardActivity$SetupWizardScreenNames:[I

    iget-object v3, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 216
    :goto_0
    const-string v2, "SCREEN_NAME"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NonInitialSetupWizard."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 224
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 225
    :goto_1
    iget-boolean v3, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    if-eqz v3, :cond_2

    .line 226
    :goto_2
    sget v3, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v4, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 231
    sget v0, Lcom/dexcom/cgm/activities/R$id;->startup_wizard_fragment_container:I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 233
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 234
    return-void

    .line 167
    :pswitch_0
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_1_welcome:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_2_agreement:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_symptoms_match_reading_safety:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 176
    :pswitch_3
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_number_and_arrow_safety:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 179
    :pswitch_4
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_use_your_meter_until:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 182
    :pswitch_5
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_treatment_decisions_with_video:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :pswitch_6
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_4_acetaminophen:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 188
    :pswitch_7
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_5_mri:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 191
    :pswitch_8
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_alert_sounds:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 194
    :pswitch_9
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_important_notice:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 197
    :pswitch_a
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_13_transmitter_intro:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 200
    :pswitch_b
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_14_transmitter_bluetooth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 203
    :pswitch_c
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_15_bluetooth_on:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 206
    :pswitch_d
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    .line 208
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getTransmitterInfo()Lcom/dexcom/cgm/h/a/f;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/f;->getTransmitterId()Lcom/dexcom/cgm/h/a/e;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/e;->isTransmitterIdArcher()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_17_sensor_video_archer:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 213
    :cond_0
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_17_sensor_video:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 224
    :cond_1
    sget v0, Lcom/dexcom/cgm/activities/R$anim;->slide_in_right:I

    goto/16 :goto_1

    .line 225
    :cond_2
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    goto/16 :goto_2

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 607
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 608
    sget v0, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->overridePendingTransition(II)V

    .line 609
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 452
    const-string v0, "connectivity"

    .line 453
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 454
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 366
    packed-switch p1, :pswitch_data_0

    .line 416
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 419
    :goto_0
    return-void

    .line 369
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->handleBluetoothOn()V

    goto :goto_0

    .line 375
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_bluetooth_must_be:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    .line 377
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$3;-><init>(Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 389
    :pswitch_1
    if-ne p2, v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->SENSOR_VIDEO:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    if-ne v0, v1, :cond_1

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->onClickSkipVideo(Landroid/view/View;)V

    goto :goto_0

    .line 398
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 410
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->BLUETOOTH_ON:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_marshmallow:Z

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    .line 577
    iget-object v1, v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    .line 578
    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v0, v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 585
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_inWebView:Z

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->goBack()V

    .line 602
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_inWebView:Z

    .line 595
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->getPrevious()Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    .line 600
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->decrement()V

    .line 601
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClickFullSafetyStatement(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 499
    new-instance v0, Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;-><init>()V

    .line 500
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 501
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_safety:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "URL"

    const-string v3, "https://www.dexcom.com/g5mobile/links/safety-information"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v2, "SCREEN_NAME"

    const-string v3, "NonInitialSetupWizard.SafetyStatement"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 505
    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 506
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->replaceWebView()V

    .line 507
    return-void
.end method

.method public onClickGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->onBackPressed()V

    .line 567
    return-void
.end method

.method public onClickHelpTip(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 557
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_where_is_the_transmitter_sn:I

    .line 558
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 559
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_common_transmitter:I

    .line 560
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 562
    return-void
.end method

.method public onClickNegative(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    sget-object v0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$4;->$SwitchMap$com$dexcom$cgm$activities$NonInitialSetupWizardActivity$SetupWizardScreenNames:[I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 248
    :sswitch_0
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_to_use_agree:I

    .line 249
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_i_dont_agree:I

    .line 251
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 256
    :sswitch_1
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_device_sound_settings:I

    .line 257
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 259
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 279
    :sswitch_2
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_marshmallow:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->bluetooth_i_dont_understand_m:I

    .line 282
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 284
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->bluetooth_i_dont_understand:I

    .line 289
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 291
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public onClickPositive(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->getNext()Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    .line 239
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->increment()V

    .line 240
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->changeFragment()V

    .line 241
    return-void
.end method

.method public onClickPrivacyPolicy(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 525
    new-instance v0, Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;-><init>()V

    .line 526
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 527
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_privacy_policy:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "URL"

    const-string v3, "https://www.dexcom.com/g5mobile/links/privacy-policy"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v2, "SCREEN_NAME"

    const-string v3, "NonInitialSetupWizard.PrivacyPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 531
    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 532
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->replaceWebView()V

    .line 533
    return-void
.end method

.method public onClickSkipTreatmentVideo(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->getNext()Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    .line 465
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->increment()V

    .line 466
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->changeFragment()V

    .line 467
    return-void
.end method

.method public onClickSkipVideo(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_hasCompletedWizard:Z

    if-nez v0, :cond_0

    .line 474
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 476
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setCompletedInitialSetupWizard(Z)V

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->timerStart:J

    sub-long/2addr v0, v2

    .line 478
    iget v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 481
    const-string v1, "Time"

    iget v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Pairing_step17:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 485
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->finishAffinity()V

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x8000

    .line 491
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method

.method public onClickStartVideo(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

.method public onClickTermsOfService(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 512
    new-instance v0, Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;-><init>()V

    .line 513
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 514
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_terms_of_use:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v2, "URL"

    const-string v3, "https://www.dexcom.com/g5mobile/links/terms-of-use"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v2, "SCREEN_NAME"

    const-string v3, "NonInitialSetupWizard.TermsOfUse"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 518
    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 519
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->replaceWebView()V

    .line 520
    return-void
.end method

.method public onClickTurnOnBluetooth(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    .line 305
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->handleNoBluetoothSupport()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->handleBluetoothOn()V

    goto :goto_0
.end method

.method public onClickWatchTreatmentVideo(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/links/g5-NA/treatment-decisions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_setup_wizard:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->setContentView(I)V

    .line 104
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->vPager:Landroid/support/v4/view/ViewPager;

    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->vPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 107
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 113
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->WELCOME:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    .line 114
    new-instance v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_1_welcome:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v1, "SCREEN_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NonInitialSetupWizard."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->startup_wizard_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 122
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circleArray:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/CircleArray;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-static {}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CircleArray;->setNumCircles(I)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 127
    iput-boolean v4, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_marshmallow:Z

    .line 130
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->timerStart:J

    sub-long/2addr v0, v2

    .line 153
    iget v2, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    .line 154
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    .line 156
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setSetupWizardTimeSpent(I)V

    .line 157
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 158
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 616
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 619
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 631
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 633
    const-string v0, "launched_non_adjunctive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 634
    invoke-static {}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    const-string v1, "screen_num"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    .line 635
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->timerStart:J

    .line 137
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->setupWizardTimeSpent()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->secondsSpent:I

    .line 142
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->onClickSkipTreatmentVideo(Landroid/view/View;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 147
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 624
    const-string v0, "screen_num"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    const-string v0, "launched_non_adjunctive"

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 627
    return-void
.end method

.method public onSkipNextFragment(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;->getNext()Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity$SetupWizardScreenNames;

    .line 539
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 540
    return-void
.end method

.method public setCurrentFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 642
    return-void
.end method

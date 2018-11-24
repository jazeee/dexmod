.class public Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "InitialSetupWizardActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;


# instance fields
.field public IChosePhotoBarcode:Z

.field private final REQUEST_ENABLE_BT:I

.field private final VIDEO_COMPLETE:I

.field private cameraTimer:J

.field private m_bluetoothButtonFree:Z

.field private m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

.field m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

.field m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

.field m_hasCompletedWizard:Z

.field private m_inWebView:Z

.field m_launchedNonAdjunctiveVideo:Z

.field private m_marshmallow:Z

.field private m_transmitterId:Lcom/dexcom/cgm/h/a/e;

.field private secondsSpent:I

.field private timerStart:J

.field vPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_inWebView:Z

    .line 48
    iput v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->REQUEST_ENABLE_BT:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->VIDEO_COMPLETE:I

    .line 51
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    .line 53
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 105
    iput-wide v4, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->timerStart:J

    .line 106
    iput v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    .line 108
    iput-wide v4, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->cameraTimer:J

    .line 109
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_marshmallow:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_transmitterId:Lcom/dexcom/cgm/h/a/e;

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_marshmallow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    return p1
.end method

.method private getAlertThresholdValue(I)I
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    .line 721
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getThresholdValues()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private handleBluetoothOn()V
    .locals 4

    .prologue
    .line 447
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_bluetooth_on:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 449
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$1;-><init>(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;)V

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    return-void
.end method

.method private handleNoBluetoothSupport()V
    .locals 4

    .prologue
    .line 472
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$2;-><init>(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    return-void
.end method

.method private replaceWebView()V
    .locals 5

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 666
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_in_right:I

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    sget v3, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v4, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 670
    sget v1, Lcom/dexcom/cgm/activities/R$id;->startup_wizard_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 671
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 672
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_inWebView:Z

    .line 674
    return-void
.end method

.method private showDialogWithLayoutID(I)V
    .locals 1

    .prologue
    .line 793
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$4;-><init>(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;I)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 805
    return-void
.end method


# virtual methods
.method public changeFragment()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->INVALID_FRAGMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    if-eq v0, v2, :cond_1

    .line 206
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 208
    sget-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$5;->$SwitchMap$com$dexcom$cgm$activities$InitialSetupWizardActivity$SetupWizardScreenNames:[I

    iget-object v3, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 292
    :goto_1
    const-string v3, "SCREEN_NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InitialSetupWizard."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz v0, :cond_4

    .line 295
    new-instance v0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 301
    :goto_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 308
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 309
    :goto_3
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    if-eqz v2, :cond_6

    move v2, v1

    .line 310
    :goto_4
    sget v4, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v5, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 315
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0, v1, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->overridePendingTransition(II)V

    .line 319
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->startup_wizard_fragment_container:I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 320
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 321
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 323
    :cond_1
    return-void

    .line 211
    :pswitch_0
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_1_welcome:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 212
    goto :goto_1

    .line 214
    :pswitch_1
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_2_agreement:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 215
    goto :goto_1

    .line 217
    :pswitch_2
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_symptoms_match_reading_safety:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 218
    goto :goto_1

    .line 220
    :pswitch_3
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_number_and_arrow_safety:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 221
    goto :goto_1

    .line 223
    :pswitch_4
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_use_your_meter_until:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 224
    goto/16 :goto_1

    .line 226
    :pswitch_5
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_treatment_decisions_with_video:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 227
    goto/16 :goto_1

    .line 229
    :pswitch_6
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_4_acetaminophen:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 230
    goto/16 :goto_1

    .line 232
    :pswitch_7
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_5_mri:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 233
    goto/16 :goto_1

    .line 235
    :pswitch_8
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_6_alerts_intro:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 236
    goto/16 :goto_1

    .line 238
    :pswitch_9
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_7_low_alert:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 239
    goto/16 :goto_1

    .line 241
    :pswitch_a
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_8_high_alert:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 242
    goto/16 :goto_1

    .line 244
    :pswitch_b
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_alert_sounds:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 245
    goto/16 :goto_1

    .line 247
    :pswitch_c
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_important_notice:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 248
    goto/16 :goto_1

    .line 250
    :pswitch_d
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_13_transmitter_intro:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 251
    goto/16 :goto_1

    .line 253
    :pswitch_e
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_14_transmitter_bluetooth:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 254
    goto/16 :goto_1

    .line 256
    :pswitch_f
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_15_bluetooth_on:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 257
    goto/16 :goto_1

    .line 259
    :pswitch_10
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_scan_or_enter_sn:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 260
    goto/16 :goto_1

    .line 262
    :pswitch_11
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->IChosePhotoBarcode:Z

    if-eqz v0, :cond_2

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->cameraTimer:J

    .line 265
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 269
    :cond_2
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_16_enter_sn:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    .line 271
    goto/16 :goto_1

    .line 273
    :pswitch_12
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getTransmitterInfo()Lcom/dexcom/cgm/h/a/f;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/f;->getTransmitterId()Lcom/dexcom/cgm/h/a/e;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/e;->isTransmitterIdArcher()Z

    move-result v0

    .line 279
    if-eqz v0, :cond_3

    .line 281
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_17_sensor_video_archer:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    goto/16 :goto_1

    .line 285
    :cond_3
    const-string v0, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_17_sensor_video:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 299
    :cond_4
    new-instance v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    goto/16 :goto_2

    .line 308
    :cond_5
    sget v0, Lcom/dexcom/cgm/activities/R$anim;->slide_in_right:I

    goto/16 :goto_3

    .line 309
    :cond_6
    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    goto/16 :goto_4

    .line 208
    nop

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
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public checkWizardCompleted()Z
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedInitialSetupWizard()Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 858
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 859
    sget v0, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->overridePendingTransition(II)V

    .line 860
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 568
    const-string v0, "connectivity"

    .line 569
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 570
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 574
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

    .line 487
    packed-switch p1, :pswitch_data_0

    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 490
    :pswitch_0
    if-ne p2, v0, :cond_1

    .line 492
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->handleBluetoothOn()V

    goto :goto_0

    .line 496
    :cond_1
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_bluetooth_must_be:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    .line 498
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$3;-><init>(Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 510
    :pswitch_1
    if-ne p2, v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SENSOR_VIDEO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    if-ne v0, v1, :cond_0

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickSkipVideo(Landroid/view/View;)V

    goto :goto_0

    .line 526
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    goto :goto_0

    .line 487
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
    .line 810
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->PHOTO_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->IChosePhotoBarcode:Z

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    .line 813
    iget-boolean v1, v0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->cameraConnected:Z

    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->disconnectCamera()V

    .line 817
    :cond_0
    iget-object v1, v0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    .line 818
    if-eqz v1, :cond_1

    .line 820
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    iget-object v0, v0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->BLUETOOTH_ON:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_marshmallow:Z

    if-eqz v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    .line 828
    iget-object v1, v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    .line 829
    if-eqz v1, :cond_2

    .line 831
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 832
    iget-object v0, v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 836
    :cond_2
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_inWebView:Z

    if-eqz v0, :cond_4

    .line 838
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->goBack()V

    .line 853
    :goto_0
    return-void

    .line 845
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_inWebView:Z

    .line 846
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->getPrevious()Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 851
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->decrement()V

    .line 852
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClickFullSafetyStatement(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 621
    new-instance v0, Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;-><init>()V

    .line 622
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 623
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_safety:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v2, "URL"

    const-string v3, "https://www.dexcom.com/g5mobile/links/safety-information"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v2, "SCREEN_NAME"

    const-string v3, "InitialSetupWizard.SafetyStatement"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 627
    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 628
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->replaceWebView()V

    .line 629
    return-void
.end method

.method public onClickGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onBackPressed()V

    .line 749
    return-void
.end method

.method public onClickHandEntry(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->IChosePhotoBarcode:Z

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 728
    return-void
.end method

.method public onClickHelpTip(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_where_is_the_transmitter_sn:I

    .line 740
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 741
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_settings_transmitter_sn_is_printed:I

    .line 742
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 744
    return-void
.end method

.method public onClickNegative(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 349
    sget-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$5;->$SwitchMap$com$dexcom$cgm$activities$InitialSetupWizardActivity$SetupWizardScreenNames:[I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 352
    :sswitch_0
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_to_use_agree:I

    .line 353
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_i_dont_agree:I

    .line 355
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logEULAAcceptOrDecline(Z)V

    goto :goto_0

    .line 361
    :sswitch_1
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_will_alert_below:I

    .line 362
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 364
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 369
    :sswitch_2
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_will_alert_above:I

    .line 370
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 372
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 377
    :sswitch_3
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_device_sound_settings:I

    .line 378
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 380
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 400
    :sswitch_4
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_marshmallow:Z

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->bluetooth_i_dont_understand_m:I

    .line 403
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 405
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto/16 :goto_0

    .line 409
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->bluetooth_i_dont_understand:I

    .line 410
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_dont_understand:I

    .line 412
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto/16 :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method public onClickPhotoEntry(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->IChosePhotoBarcode:Z

    .line 734
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 735
    return-void
.end method

.method public onClickPositive(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 328
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->PHOTO_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->IChosePhotoBarcode:Z

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->cameraTimer:J

    sub-long/2addr v2, v4

    .line 333
    const-string v1, "Time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Pairing_step16_scan:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->AGREEMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    if-ne v0, v1, :cond_1

    .line 340
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logEULAAcceptOrDecline(Z)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->getNext()Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 343
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->increment()V

    .line 344
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->changeFragment()V

    .line 345
    return-void
.end method

.method public onClickPrivacyPolicy(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 646
    new-instance v0, Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;-><init>()V

    .line 647
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 648
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_privacy_policy:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v2, "URL"

    const-string v3, "https://www.dexcom.com/g5mobile/links/privacy-policy"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "SCREEN_NAME"

    const-string v3, "InitialSetupWizard.PrivacyPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 652
    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 653
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->replaceWebView()V

    .line 654
    return-void
.end method

.method public onClickSaveSN(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 754
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    .line 755
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getSnText()Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->setSnText(Ljava/lang/String;)V

    .line 760
    invoke-static {v1}, Lcom/dexcom/cgm/h/a/e;->isCorrectLength(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dialog_transmitter_sn_6_chars:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->showDialogWithLayoutID(I)V

    .line 789
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-static {v1}, Lcom/dexcom/cgm/h/a/e;->isFirstCharacterValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dialog_transmitter_sn_first_char:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->showDialogWithLayoutID(I)V

    goto :goto_0

    .line 770
    :cond_1
    invoke-static {v1}, Lcom/dexcom/cgm/h/a/e;->containsOnlyValidCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 772
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dialog_transmitter_sn_invalid_char:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->showDialogWithLayoutID(I)V

    goto :goto_0

    .line 775
    :cond_2
    invoke-static {v1}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdArcher(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-static {p0, v0, v4}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    goto :goto_0

    .line 781
    :cond_3
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 785
    new-instance v0, Lcom/dexcom/cgm/h/a/e;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/h/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_transmitterId:Lcom/dexcom/cgm/h/a/e;

    .line 787
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_tx_sn_saved:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 788
    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickSkipTreatmentVideo(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->getNext()Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 581
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->increment()V

    .line 582
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->changeFragment()V

    .line 583
    return-void
.end method

.method public onClickSkipVideo(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_hasCompletedWizard:Z

    if-nez v0, :cond_0

    .line 590
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 591
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 592
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setCompletedInitialSetupWizard(Z)V

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->timerStart:J

    sub-long/2addr v0, v2

    .line 594
    iget v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    .line 596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 597
    const-string v1, "Time"

    iget v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Pairing_step17:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 601
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->finishAffinity()V

    .line 606
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_transmitterId:Lcom/dexcom/cgm/h/a/e;

    if-eqz v0, :cond_1

    .line 608
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_transmitterId:Lcom/dexcom/cgm/h/a/e;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->setTransmitterId(Lcom/dexcom/cgm/h/a/e;)V

    .line 611
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x8000

    .line 613
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->startActivity(Landroid/content/Intent;)V

    .line 616
    return-void
.end method

.method public onClickStartVideo(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 565
    :goto_0
    return-void

    .line 563
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
    .line 634
    new-instance v0, Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;-><init>()V

    .line 635
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 636
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_terms_of_use:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "URL"

    const-string v3, "https://www.dexcom.com/g5mobile/links/terms-of-use"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "SCREEN_NAME"

    const-string v3, "InitialSetupWizard.TermsOfUse"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 640
    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 641
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->replaceWebView()V

    .line 642
    return-void
.end method

.method public onClickTurnOnBluetooth(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_bluetoothButtonFree:Z

    .line 426
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->handleNoBluetoothSupport()V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->handleBluetoothOn()V

    goto :goto_0
.end method

.method public onClickWatchTreatmentVideo(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 542
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/links/g5-NA/treatment-decisions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 550
    :goto_0
    return-void

    .line 548
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

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_setup_wizard:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->setContentView(I)V

    .line 117
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->vPager:Landroid/support/v4/view/ViewPager;

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->vPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 120
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 126
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->WELCOME:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 127
    new-instance v0, Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_1_welcome:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v1, "SCREEN_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InitialSetupWizard."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->startup_wizard_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 135
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circleArray:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/CircleArray;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    .line 136
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->checkWizardCompleted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_hasCompletedWizard:Z

    .line 138
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_hasCompletedWizard:Z

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    const-string v1, "entryFrom"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->finish()V

    .line 159
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 161
    iput-boolean v4, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_marshmallow:Z

    .line 163
    :cond_2
    return-void

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_App_Installed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    .line 156
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-static {}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->getNumberOfScreens()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CircleArray;->setNumCircles(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->timerStart:J

    sub-long/2addr v0, v2

    .line 187
    iget v2, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    .line 188
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    .line 190
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setSetupWizardTimeSpent(I)V

    .line 191
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 192
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
    .line 867
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 870
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 881
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 883
    const-string v0, "launched_non_adjunctive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 884
    invoke-static {}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    const-string v1, "screen_num"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 885
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->timerStart:J

    .line 170
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->setupWizardTimeSpent()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->secondsSpent:I

    .line 175
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickSkipTreatmentVideo(Landroid/view/View;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    .line 181
    :cond_0
    return-void
.end method

.method public onSaveHigh(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 700
    sget v0, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 701
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 702
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getAlertThresholdValue(I)I

    move-result v0

    .line 704
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    const/4 v2, 0x0

    .line 705
    invoke-interface {v1, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v1

    .line 706
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 708
    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v2, v1}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 709
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 712
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 713
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 716
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 875
    const-string v0, "screen_num"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    const-string v0, "launched_non_adjunctive"

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_launchedNonAdjunctiveVideo:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 877
    return-void
.end method

.method public onSaveLow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 679
    sget v0, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 680
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 681
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->getAlertThresholdValue(I)I

    move-result v0

    .line 683
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    const/4 v2, 0x0

    .line 684
    invoke-interface {v1, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v1

    .line 685
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 687
    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v2, v1}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 688
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 691
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 692
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 695
    return-void
.end method

.method public onSkipNextFragment(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->getNext()Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 660
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 661
    return-void
.end method

.method public setCurrentFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;->m_currentSetupWizardFragment:Landroid/support/v4/app/Fragment;

    .line 892
    return-void
.end method

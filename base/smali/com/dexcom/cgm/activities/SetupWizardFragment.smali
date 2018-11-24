.class public Lcom/dexcom/cgm/activities/SetupWizardFragment;
.super Lcom/dexcom/cgm/activities/BaseFragment;
.source "SetupWizardFragment.java"


# instance fields
.field private final REQUEST_LOCATION:I

.field private m_layout:I

.field private m_sn:Landroid/widget/EditText;

.field private m_termsPrivacyTextView:Landroid/widget/TextView;

.field private m_thresholdValues:[I

.field private m_txSn:Ljava/lang/String;

.field private m_view:Landroid/view/View;

.field np:Landroid/widget/NumberPicker;

.field private parentLayout:Landroid/view/View;

.field private setupWizardActivity:Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

.field public snack:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BaseFragment;-><init>()V

    .line 53
    const/16 v0, 0x63

    iput v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->REQUEST_LOCATION:I

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/SetupWizardFragment;)Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->setupWizardActivity:Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    return-object v0
.end method

.method private requestLocationPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 260
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/d/e;->setHasSelectedNeverAskAgainLocation(Z)V

    .line 261
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_access_location_rationale:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    new-instance v2, Lcom/dexcom/cgm/activities/SetupWizardFragment$3;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$3;-><init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    .line 273
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->snack:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 311
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasSelectedNeverAskAgainLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 284
    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_do_not_show_again:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 285
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->go_to_settings:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/SetupWizardFragment$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$4;-><init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 301
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/d/e;->setHasSelectedNeverAskAgainLocation(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v3

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public getSnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_sn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_txSn:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_txSn:Ljava/lang/String;

    return-object v0
.end method

.method public getThresholdValues()[I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_thresholdValues:[I

    return-object v0
.end method

.method public handleAccessCoarseLocation()V
    .locals 2

    .prologue
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->requestLocationPermission()V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->setupWizardActivity:Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;->onClickPositive(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->setupWizardActivity:Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->setupWizardActivity:Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;

    invoke-interface {v0, p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$SetupWizardFragmentHolder;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 84
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    const-string v1, "LAYOUT"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    .line 86
    iget v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    .line 89
    iget v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_2_agreement:I

    if-ne v0, v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->termsPrivacyTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_termsPrivacyTextView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->setupTermsPrivacyText()V

    .line 109
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 111
    iget v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_14_transmitter_bluetooth:I

    if-ne v0, v1, :cond_4

    .line 113
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->location_on:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    return-object v0

    .line 94
    :cond_2
    iget v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_7_low_alert:I

    if-ne v0, v1, :cond_3

    .line 96
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$array;->low_alert_mgdl_egvs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_thresholdValues:[I

    .line 98
    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 99
    iget-object v2, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    sget v3, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    iget-object v4, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_thresholdValues:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    goto :goto_0

    .line 101
    :cond_3
    iget v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_8_high_alert:I

    if-ne v0, v1, :cond_0

    .line 103
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$array;->high_alert_mgdl_egvs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_thresholdValues:[I

    .line 105
    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 106
    iget-object v2, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    sget v3, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    iget-object v4, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_thresholdValues:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    goto/16 :goto_0

    .line 116
    :cond_4
    iget v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_15_bluetooth_on:I

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->bluetooth_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_app_check_bluetooth_on_M:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->setupParentLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->parentLayout:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->np:Landroid/widget/NumberPicker;

    .line 233
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseFragment;->onDestroyView()V

    .line 234
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 318
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    .line 321
    array-length v0, p3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_available_location:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/SetupWizardFragment$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$5;-><init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/d/e;->setHasSelectedNeverAskAgainLocation(Z)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permissions_not_granted:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseFragment;->onResume()V

    .line 219
    iget v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->setup_wizard_16_enter_sn:I

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->transmitter_sn_entry1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_sn:Landroid/widget/EditText;

    .line 222
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_sn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 224
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 225
    iget-object v1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_sn:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 227
    :cond_0
    return-void
.end method

.method public setSnText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_txSn:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_sn:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setupTermsPrivacyText()V
    .locals 10

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_termsPrivacyTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 149
    const-string v2, "]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 150
    const-string v3, "["

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 151
    const-string v4, "]"

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v5, v4, -0x3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 159
    add-int/lit8 v3, v3, -0x2

    .line 160
    add-int/lit8 v4, v4, -0x3

    .line 162
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v0, Lcom/dexcom/cgm/activities/SetupWizardFragment$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$1;-><init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V

    invoke-virtual {v5, v0, v1, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 180
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 181
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 180
    invoke-virtual {v5, v0, v1, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 187
    new-instance v0, Lcom/dexcom/cgm/activities/SetupWizardFragment$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment$2;-><init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V

    invoke-virtual {v5, v0, v3, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 203
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 204
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 203
    invoke-virtual {v5, v0, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 210
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_termsPrivacyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 211
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment;->m_termsPrivacyTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 212
    return-void
.end method

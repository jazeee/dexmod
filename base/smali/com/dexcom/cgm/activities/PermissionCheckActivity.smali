.class public Lcom/dexcom/cgm/activities/PermissionCheckActivity;
.super Landroid/app/Activity;
.source "PermissionCheckActivity.java"


# static fields
.field private static final REQUEST_LOCATION:I = 0x63


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isLocationPermissionAvailable()Z
    .locals 1

    .prologue
    .line 29
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 30
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 31
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialogToGotoSettings()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 71
    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_activity_do_not_show_again:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 72
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->go_to_settings:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/PermissionCheckActivity$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity$1;-><init>(Lcom/dexcom/cgm/activities/PermissionCheckActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 83
    return-void
.end method


# virtual methods
.method public onClickNegative(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onClickPositive(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->hasSelectedNeverAskAgainLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->showDialogToGotoSettings()V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/d/e;->setHasSelectedNeverAskAgainLocation(Z)V

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    const/16 v1, 0x63

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_permission_check:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->setContentView(I)V

    .line 25
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 104
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->startServices()V

    .line 105
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->finish()V

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setHasSelectedNeverAskAgainLocation(Z)V

    .line 113
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->showDialogToGotoSettings()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->isLocationPermissionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->finish()V

    .line 42
    :cond_0
    return-void
.end method

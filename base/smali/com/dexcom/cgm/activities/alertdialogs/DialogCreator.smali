.class public Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;
.super Ljava/lang/Object;
.source "DialogCreator.java"


# static fields
.field private static s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    return-object v0
.end method

.method public static cancelDialogForAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {p0}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->fromAlertKind(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->stopSound()V

    .line 122
    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->deleteDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)V

    goto :goto_0
.end method

.method public static clearAlerts()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->stopSound()V

    .line 128
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->clear()V

    .line 129
    return-void
.end method

.method public static createAlertSettingsErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->AlertSettingsError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-static {p0, v0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->fromAlertKind(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->addOrReplaceDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createDialogForAlert(Landroid/app/Activity;Lcom/dexcom/cgm/a/l;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->fromAlertKind(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v1

    .line 59
    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->isGlucoseAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;->getEgv()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/AlertStateRecord;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v2

    .line 70
    invoke-static {p0, v1, v0, v2, p2}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->createDialogForGlucoseAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 80
    :goto_1
    new-instance v2, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator$1;

    invoke-direct {v2, v1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator$1;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    invoke-virtual {v2, v1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->addOrReplaceDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1
.end method

.method public static createSQLErrorDialog(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    .line 95
    return-void
.end method

.method public static dismissDialogForActivityOnDestroy(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->stopSound()V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 39
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 40
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->s_dialogStorage:Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->deleteCurrentDialog()V

    .line 45
    :cond_0
    return-void
.end method

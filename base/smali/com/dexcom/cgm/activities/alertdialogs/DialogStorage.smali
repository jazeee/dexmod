.class public Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;
.super Ljava/lang/Object;
.source "DialogStorage.java"


# instance fields
.field private dialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private m_currentDialog:Landroid/app/Dialog;

.field private m_currentDialogAlertype:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->dialogs:Ljava/util/HashMap;

    .line 22
    iput-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->m_currentDialog:Landroid/app/Dialog;

    .line 23
    iput-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->m_currentDialogAlertype:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    return-void
.end method


# virtual methods
.method public addOrReplaceDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->dialogs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 32
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 33
    :goto_0
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertDialogDisappearing(Ljava/lang/String;J)V

    .line 39
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->dialogs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->m_currentDialog:Landroid/app/Dialog;

    .line 46
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->m_currentDialogAlertype:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 47
    return-void

    .line 32
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->dialogs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    return-void
.end method

.method public deleteCurrentDialog()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->m_currentDialogAlertype:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->deleteDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)V

    .line 72
    return-void
.end method

.method public deleteDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->addOrReplaceDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V

    .line 80
    return-void
.end method

.method public getCurrentDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->dialogs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->dialogs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 56
    if-eqz v0, :cond_0

    .line 58
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->m_currentDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iput-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->m_currentDialog:Landroid/app/Dialog;

    move-object v0, v1

    .line 66
    goto :goto_0
.end method

.method public onDialogDismissed(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->dialogs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_1

    const/4 v0, 0x1

    .line 89
    :goto_0
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->deleteDialog(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)V

    .line 94
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

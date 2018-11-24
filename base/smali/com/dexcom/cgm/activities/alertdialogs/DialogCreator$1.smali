.class final Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator$1;
.super Ljava/lang/Object;
.source "DialogCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$type:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator$1;->val$type:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->access$000()Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator$1;->val$type:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogStorage;->onDialogDismissed(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Dialog;)V

    .line 86
    return-void
.end method

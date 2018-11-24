.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$2;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$2;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$2;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForSQLFailure(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    .line 158
    return-void
.end method

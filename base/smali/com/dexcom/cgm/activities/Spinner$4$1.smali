.class Lcom/dexcom/cgm/activities/Spinner$4$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/Spinner$4;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/Spinner$4;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner$4$1;->this$1:Lcom/dexcom/cgm/activities/Spinner$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4$1;->this$1:Lcom/dexcom/cgm/activities/Spinner$4;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$300(Lcom/dexcom/cgm/activities/Spinner;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 113
    return-void
.end method

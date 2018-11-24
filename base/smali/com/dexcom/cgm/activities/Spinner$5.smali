.class Lcom/dexcom/cgm/activities/Spinner$5;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/Spinner;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/Spinner;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner$5;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$5;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$5;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 130
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$5;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/Spinner;->access$202(Lcom/dexcom/cgm/activities/Spinner;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 132
    :cond_0
    return-void
.end method

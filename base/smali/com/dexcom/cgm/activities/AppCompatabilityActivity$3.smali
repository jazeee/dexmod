.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$3;
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
    .line 208
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$3;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$3;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$200(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 213
    return-void
.end method

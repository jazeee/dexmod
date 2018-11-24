.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask$1;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask$1;->this$1:Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask$1;->this$1:Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$1200(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    .line 709
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask$1;->this$1:Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverCallUnderway:Z

    .line 710
    return-void
.end method

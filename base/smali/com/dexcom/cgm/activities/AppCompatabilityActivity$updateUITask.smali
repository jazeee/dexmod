.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$1300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask$1;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    return-void
.end method

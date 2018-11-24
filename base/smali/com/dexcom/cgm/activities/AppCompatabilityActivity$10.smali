.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$10;
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
    .line 719
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$10;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$10;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->performAppValidity()V

    .line 724
    return-void
.end method

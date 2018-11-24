.class Lcom/dexcom/cgm/activities/TrendActivity$11;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$11;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$11;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$800(Lcom/dexcom/cgm/activities/TrendActivity;)V

    .line 700
    return-void
.end method

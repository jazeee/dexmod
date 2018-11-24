.class Lcom/dexcom/cgm/activities/TrendActivity$1;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/h/c;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$1;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evCgmData(Lcom/dexcom/cgm/h/e;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$1;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshUi()V

    .line 82
    sget-boolean v0, Lcom/dexcom/cgm/activities/TrendActivity;->THIS_CYCLE_LANDSCAPE:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$1;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$100(Lcom/dexcom/cgm/activities/TrendActivity;)V

    .line 86
    :cond_0
    return-void
.end method

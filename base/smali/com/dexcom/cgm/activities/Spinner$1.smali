.class Lcom/dexcom/cgm/activities/Spinner$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/Spinner;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/Spinner;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner$1;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/Spinner$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$1;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$000(Lcom/dexcom/cgm/activities/Spinner;)V

    .line 51
    return-void
.end method

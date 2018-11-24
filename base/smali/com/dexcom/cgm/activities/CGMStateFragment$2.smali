.class Lcom/dexcom/cgm/activities/CGMStateFragment$2;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$2;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$2;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$2;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$200(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 187
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$2;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$300(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 189
    :cond_0
    return-void
.end method

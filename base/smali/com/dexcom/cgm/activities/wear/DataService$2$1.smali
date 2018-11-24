.class Lcom/dexcom/cgm/activities/wear/DataService$2$1;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/wear/DataService$2;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/wear/DataService$2;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dexcom/cgm/activities/wear/DataService$2$1;->this$1:Lcom/dexcom/cgm/activities/wear/DataService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dexcom/cgm/activities/wear/DataService$2$1;->this$1:Lcom/dexcom/cgm/activities/wear/DataService$2;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/wear/DataService$2;->this$0:Lcom/dexcom/cgm/activities/wear/DataService;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/wear/DataService;->access$000(Lcom/dexcom/cgm/activities/wear/DataService;)V

    .line 69
    return-void
.end method

.class Lcom/dexcom/cgm/activities/wear/DataService$3;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/wear/DataService;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/wear/DataService;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dexcom/cgm/activities/wear/DataService$3;->this$0:Lcom/dexcom/cgm/activities/wear/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/activities/wear/DataService$3;->this$0:Lcom/dexcom/cgm/activities/wear/DataService;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/wear/DataService;->access$000(Lcom/dexcom/cgm/activities/wear/DataService;)V

    .line 82
    return-void
.end method
